/*------------------------------------------------------------------------------
    INCLUDES
------------------------------------------------------------------------------*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sel4/sel4.h>
#include <semaphore.h>
#include <autoconf.h>

#include "rijndael-api-fst.h"

/*------------------------------------------------------------------------------
    DEFINITIONS & CONSTANTS
------------------------------------------------------------------------------*/
#define IP4_ADDR(a,b,c,d) \
        ((unsigned int)((d) & 0xff) << 24) | \
        ((unsigned int)((c) & 0xff) << 16) | \
        ((unsigned int)((b) & 0xff) << 8)  | \
        (unsigned int)((a) & 0xff)


#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

#define CONFIG_ADDRESS 0x70000000

/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)

#define THREAD_STACK_SIZE 512

enum {
    SendPacket = 0,
    RecievePacket = 1
};

//TODO move to h file
typedef struct _proxy_client_config_t {
    seL4_CPtr ep_cap;
    seL4_CPtr tcb_cap;
    seL4_Word port;
    seL4_Word ip;
    uint8_t psk[64+1]; /* Put key as a hex string here. (256-bit)+\n */
    uint8_t iv[32+1]; /* Put IV as a hex string here. */
} proxy_client_config_t;

typedef struct _proxy_config_t {
    seL4_Word enable_encryption;
    proxy_client_config_t clients[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
    seL4_Word num_clients;
} proxy_config_t;

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint64_t thread_stacks[CONFIG_APP_PROXY_MAX_NUM_CLIENTS][THREAD_STACK_SIZE];

static proxy_config_t *config = (proxy_config_t*)CONFIG_ADDRESS; 

keyInstance key_e[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
keyInstance key_d[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
cipherInstance cipher_e[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
cipherInstance cipher_d[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/

static void send_packet(seL4_Word ip, seL4_Word port, char * data, uint32_t len) {
    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 3+len);
    seL4_SetTag(tag);
    seL4_SetMR(0, 1);
    seL4_SetMR(1, ip);
    seL4_SetMR(2, port);
    memcpy(seL4_GetIPCBuffer()->msg + 3, data, len);

    seL4_Call(SYSCALL_EP_SLOT, tag);
}


static uint32_t recv_packet(seL4_Word port, char * data, uint32_t max_len, seL4_Word *ip) {
    uint32_t len;
    seL4_MessageInfo_t tag;

    tag = seL4_MessageInfo_new(0, 0, 0, 2);
    seL4_SetTag(tag);
    seL4_SetMR(0, 2);
    seL4_SetMR(1, port);

    tag = seL4_Call(SYSCALL_EP_SLOT, tag);
    len = MIN(max_len, seL4_MessageInfo_get_length(tag));

    ip = seL4_GetMR(0);
    //port = seL4_GetMR(1);
    memcpy(data, seL4_GetIPCBuffer()->msg + 2, len);
    
    return len;
}


void worker_thread(void) {
    static char recieved_data[(1 << seL4_PageBits)];
    uint32_t len;
    uint32_t id;
    seL4_Word port;
    seL4_Word ip_address;
    seL4_Word remote_ip_address; //UNUSED
    seL4_MessageInfo_t tag;
    seL4_Word badge;

    /* Infer id based on the IPC buffer location. */
    id = (((seL4_Word)seL4_GetIPCBuffer() - 0xa0000000) >> seL4_PageBits) - 1;
    port = config->clients[id].port;
    ip_address = config->clients[id].ip;

    printf("PROXY: Thread %d Started.\n", id);

    while(1) {
        /* wait for request */
        tag = seL4_Wait(config->clients[id].ep_cap, &badge);

        switch(seL4_GetMR(0)) {
            case SendPacket:
                len = MIN(sizeof(recieved_data), seL4_MessageInfo_get_length(tag));
        
                if(config->enable_encryption) {
                    len = blockEncrypt(&cipher_e[id], &key_e[id], seL4_GetIPCBuffer()->msg, len*8, recieved_data)/8;
                } else {
                    memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
                }
        
                send_packet(ip_address, port, recieved_data, len);
                seL4_Reply(tag);
                break;
            case RecievePacket:
                /* extract port to listen on, TODO:  */
                port = seL4_GetMR(1);
        
                len = recv_packet(port, recieved_data, sizeof(recieved_data), &remote_ip_address);
        
                if(config->enable_encryption) {
                    len = blockDecrypt(&cipher_d, &key_d, recieved_data, len*8, seL4_GetIPCBuffer()->msg)/8;
                } else {
                    memcpy(seL4_GetIPCBuffer()->msg, recieved_data, len);
                }
        
                tag = seL4_MessageInfo_new(0, 0, 0, len); //TODO check for correct size (word size)??
                seL4_SetTag(tag);
                seL4_Reply(tag);
                break;
            default:
                tag = seL4_MessageInfo_new(0, 0, 0, 0); //TODO check for correct size (word size)??
                seL4_SetTag(tag);
                seL4_Reply(tag);
                break;

        }

    }
}


int main(void) {
    static unsigned char recieved_data[4096];

    int err;

    printf("PROXY: Started.\n");
    printf("PROXY: Initializing %d threads.\n", config->num_clients);

    for(int i = 0; i < config->num_clients; i++) {
        if(config->enable_encryption) {
    
            err = makeKey(&key_e[i], DIR_ENCRYPT, 256, config->clients[i].psk);
            if(err < 0) {
                printf("makeKey e error: %i\n", err);
            }
        
            err = makeKey(&key_d[i], DIR_DECRYPT, 256, config->clients[i].psk);
            if(err < 0) {
                printf("makeKey d error: %i\n", err);
            }
        
            err = cipherInit(&cipher_e[i], MODE_ECB, config->clients[i].iv);
            if(err < 0) {
                printf("cipherInit e error: %i\n", err);
            }
        
            err = cipherInit(&cipher_d[i], MODE_ECB, config->clients[i].iv);
            if(err < 0) {
                printf("cipherInit d error: %i\n", err);
            }
        }

        uintptr_t thread_stack_top = (uintptr_t)thread_stacks[i] + sizeof(thread_stacks[i]);

        seL4_UserContext regs = {0};
        regs.pc = (seL4_Word)worker_thread;
        regs.sp = (seL4_Word)thread_stack_top;

        seL4_TCB_WriteRegisters(config->clients[i].tcb_cap, seL4_True, 0, 2, &regs); //TODO not sure about this local_cap
        seL4_Yield();
    }

//    while(1) {
//        seL4_Word badge;
//        seL4_MessageInfo_t message;
//        unsigned int len;
//
//        message = seL4_Wait(config->send_ep_cap, &badge);
//        len = MIN(sizeof(recieved_data), seL4_MessageInfo_get_length(message));
//
//        if(config->enable_encryption) {
//            len = blockEncrypt(&cipher_e, &key_e, seL4_GetIPCBuffer()->msg, len*8, recieved_data)/8;
//        } else {
//            memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
//        }
//
//        //send_packet(recieved_data, len);
//        
//    }


    while(1) seL4_Yield();

    return 0;
}
