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

//TODO move to h file
typedef struct _proxy_client_config_t {
    seL4_CPtr local_cap;
    seL4_Word badge;
    seL4_Word udp_port;
    uint8_t psk[64+1]; /* Put key as a hex string here. (256-bit)+\n */
    uint8_t iv[32+1]; /* Put IV as a hex string here. */
} proxy_client_config_t;

typedef struct _proxy_config_t {
    seL4_Word enable_encryption;
    seL4_Word forward_ip_and_port;
    proxy_client_config_t clients[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
    seL4_Word num_clients;
} proxy_config_t;


/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint64_t thread_stacks[CONFIG_APP_PROXY_MAX_NUM_CLIENTS][THREAD_STACK_SIZE];
static unsigned int remote_ip;
static int thread_id;

static proxy_config_t *config = (proxy_config_t*)CONFIG_ADDRESS; 

//char psk[] = "C480FD91B1B29293C1BD65D1E35B0E210B5B189BD77643C6B5B731B33FC4D2C1";
//char iv[] = "827C43085639350AB66A23B700C69B2A";

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

//static void send_packet(char * data, uint32_t len) {
//    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 3+len);
//    seL4_SetTag(tag);
//    seL4_SetMR(0, 1);
//    seL4_SetMR(1, remote_ip);
//    seL4_SetMR(2, 4444);
//    memcpy(seL4_GetIPCBuffer()->msg + 3, data, len);
//
//    seL4_Call(SYSCALL_EP_SLOT, tag);
//}
//
//
//static uint32_t recv_packet(char * data, uint32_t max_len) {
//    uint32_t len;
//    seL4_MessageInfo_t tag;
//
//    tag = seL4_MessageInfo_new(0, 0, 0, 2);
//    seL4_SetTag(tag);
//    seL4_SetMR(0, 2);
//    seL4_SetMR(1, 4444);
//
//    tag = seL4_Call(SYSCALL_EP_SLOT, tag);
//    len = MIN(max_len, seL4_MessageInfo_get_length(tag));
//
//    memcpy(data, seL4_GetIPCBuffer()->msg, len); //RTH this is a buffer overflow.
//    
//    return len;
//}


void worker_thread(void) {
    static char recieved_data[4096];
    uint32_t len;
    uint32_t id;
    seL4_MessageInfo_t tag;


    printf("PROXY: Thread %p Started.\n", seL4_GetIPCBuffer());

//    while(1) {
//        len = recv_packet(recieved_data, sizeof(recieved_data));
//
//#ifdef ENABLE_ENCRYPTION
//        len = blockDecrypt(&cipher_d, &key_d, recieved_data, len*8, seL4_GetIPCBuffer()->msg)/8;
//#else
//        memcpy(seL4_GetIPCBuffer()->msg, recieved_data, len);
//#endif
//
//        tag = seL4_MessageInfo_new(0, 0, 0, len);
//        seL4_SetTag(tag);
//        //memcpy(seL4_GetIPCBuffer()->msg, recieved_data, len);
//        seL4_Send(PROXY_RECV_EP_SLOT, tag);
//        //memset(recieved_data, '\0', len); /* Use some free cycles to clear message, hope this doesn't slow. */
//    }
}


int main(void) {
    static unsigned char recieved_data[4096];

    int err;

    printf("PROXY: Started.\n");
    printf("PROXY: Initializing %d threads.\n", config->num_clients);

    for(int i = 0; i < config->num_clients; i++) {
//        if(config->enable_encryption) {
//    
//            err = makeKey(&key_e, DIR_ENCRYPT, 256, psk);
//            if(err < 0) {
//                printf("makeKey e error: %i\n", err);
//            }
//        
//            err = makeKey(&key_d, DIR_DECRYPT, 256, psk);
//            if(err < 0) {
//                printf("makeKey d error: %i\n", err);
//            }
//        
//            err = cipherInit(&cipher_e, MODE_ECB, iv);
//            if(err < 0) {
//                printf("cipherInit e error: %i\n", err);
//            }
//        
//            err = cipherInit(&cipher_d, MODE_ECB, iv);
//            if(err < 0) {
//                printf("cipherInit d error: %i\n", err);
//            }
//        }

        uintptr_t thread_stack_top = (uintptr_t)thread_stacks[i] + sizeof(thread_stacks[i]);

        seL4_UserContext regs = {0};
        regs.pc = (seL4_Word)worker_thread;
        regs.sp = (seL4_Word)thread_stack_top;

        seL4_TCB_WriteRegisters(config->clients[i].local_cap, seL4_True, 0, 2, &regs);
        seL4_Yield();
    }

//    while(1) {
//        seL4_Word badge;
//        seL4_MessageInfo_t message;
//        unsigned int len;
//
//        message = seL4_Wait(PROXY_SEND_EP_SLOT, &badge);
//        len = MIN(sizeof(recieved_data), seL4_MessageInfo_get_length(message));
//
//#ifdef ENABLE_ENCRYPTION
//        len = blockEncrypt(&cipher_e, &key_e, seL4_GetIPCBuffer()->msg, len*8, recieved_data)/8;
//#else
//        memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
//#endif
//
//        send_packet(recieved_data, len);
//        
//        //memset(recieved_data, '\0', len); /* Use some free cycles to clear message, hope this doesn't slow. */
//        
//        //memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
//        //send_packet(recieved_data, len);
//    }
    return 0;
}
