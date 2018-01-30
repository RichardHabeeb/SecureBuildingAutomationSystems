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

#include "rijndael-api-fst.h"

/*------------------------------------------------------------------------------
    DEFINITIONS & CONSTANTS
------------------------------------------------------------------------------*/
#define IP4_ADDR(a,b,c,d) \
        ((unsigned int)((d) & 0xff) << 24) | \
        ((unsigned int)((c) & 0xff) << 16) | \
        ((unsigned int)((b) & 0xff) << 8)  | \
        (unsigned int)((a) & 0xff)

/// Defines the cnode size to be the same as a page directory (16K on ARM) in 'bits'
#define CSPACE_NODE_SIZE_IN_MEM_BITS seL4_PageDirBits

/// The cnode size in bytes
#define CSPACE_NODE_SIZE_IN_MEM (1 << CSPACE_NODE_SIZE_IN_MEM_BITS)

/// The cnode size in term of the number of slots (in bits). Used by seL4 operations.
#define CSPACE_NODE_SIZE_IN_SLOTS_BITS (CSPACE_NODE_SIZE_IN_MEM_BITS - seL4_SlotBits)

/// The cnode size in actual number of slots.
#define CSPACE_NODE_SIZE_IN_SLOTS (1 << CSPACE_NODE_SIZE_IN_SLOTS_BITS)


/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)
#define THREAD_2_SLOT           (3)
#define PROXY_SEND_EP_SLOT      (4)
#define PROXY_RECV_EP_SLOT      (5)

#define THREAD_2_STACK_SIZE 512

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

//#define ENABLE_ENCRYPTION

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint64_t thread_2_stack[THREAD_2_STACK_SIZE];

static unsigned int remote_ip;

char psk[] = "C480FD91B1B29293C1BD65D1E35B0E210B5B189BD77643C6B5B731B33FC4D2C1";
char iv[] = "827C43085639350AB66A23B700C69B2A";


keyInstance key_e, key_d;
cipherInstance cipher_e, cipher_d;

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/
static size_t sos_debug_print(const void *vData, size_t count) {
    size_t i;
    const char *realdata = vData;
    for (i = 0; i < count; i++)
        seL4_DebugPutChar(realdata[i]);
    return count;
}

size_t sos_write(void *vData, size_t count) {
    //implement this to use your syscall
    return sos_debug_print(vData, count);
}

size_t sos_read(void *vData, size_t count) {
    //implement this to use your syscall
    return 0;
}

unsigned int decode_ip(char *ip) {
    unsigned int a, b, c, d;
    sscanf(ip, "%i.%i.%i.%i", &a, &b, &c, &d);
    return IP4_ADDR(a, b, c, d);
}


static void send_packet(char * data, uint32_t len) {
    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 3+len);
    seL4_SetTag(tag);
    seL4_SetMR(0, 1);
    seL4_SetMR(1, remote_ip);
    seL4_SetMR(2, 4444);
    memcpy(seL4_GetIPCBuffer()->msg + 3, data, len);

    seL4_Call(SYSCALL_EP_SLOT, tag);
}


static uint32_t recv_packet(char * data, uint32_t max_len) {
    uint32_t len;
    seL4_MessageInfo_t tag;

    tag = seL4_MessageInfo_new(0, 0, 0, 2);
    seL4_SetTag(tag);
    seL4_SetMR(0, 2);
    seL4_SetMR(1, 4444);

    tag = seL4_Call(SYSCALL_EP_SLOT, tag);
    len = MIN(max_len, seL4_MessageInfo_get_length(tag));

    memcpy(data, seL4_GetIPCBuffer()->msg, len); //RTH this is a buffer overflow.
    
    return len;
}


void thread_2(void) {
    static char recieved_data[4096];
    uint32_t len;
    seL4_MessageInfo_t tag;

    printf("Proxy Thread 2 Started.\n");

    while(1) {
        len = recv_packet(recieved_data, sizeof(recieved_data));

#ifdef ENABLE_ENCRYPTION
        len = blockDecrypt(&cipher_d, &key_d, recieved_data, len*8, seL4_GetIPCBuffer()->msg)/8;
#else
        memcpy(seL4_GetIPCBuffer()->msg, recieved_data, len);
#endif

        tag = seL4_MessageInfo_new(0, 0, 0, len);
        seL4_SetTag(tag);
        //memcpy(seL4_GetIPCBuffer()->msg, recieved_data, len);
        seL4_Send(PROXY_RECV_EP_SLOT, tag);
        //memset(recieved_data, '\0', len); /* Use some free cycles to clear message, hope this doesn't slow. */
    }
}


int main(void) {
    static unsigned char recieved_data[4096];
    //static unsigned char encrypted_data[4096];
    int err;

    err = makeKey(&key_e, DIR_ENCRYPT, 256, psk);
    if(err < 0) {
        printf("makeKey e error: %i\n", err);
    }

    err = makeKey(&key_d, DIR_DECRYPT, 256, psk);
    if(err < 0) {
        printf("makeKey d error: %i\n", err);
    }

    err = cipherInit(&cipher_e, MODE_ECB, iv);
    if(err < 0) {
        printf("cipherInit e error: %i\n", err);
    }

    err = cipherInit(&cipher_d, MODE_ECB, iv);
    if(err < 0) {
        printf("cipherInit d error: %i\n", err);
    }

    seL4_UserContext regs = {0};
    uintptr_t thread_2_stack_top = (uintptr_t)thread_2_stack + sizeof(thread_2_stack);
    regs.pc = (seL4_Word)thread_2;
    regs.sp = (seL4_Word)thread_2_stack_top;
    seL4_TCB_WriteRegisters(THREAD_2_SLOT, seL4_True, 0, 2, &regs);

    remote_ip = decode_ip(CONFIG_SOS_GATEWAY);

    printf("Proxy Started.\n");
    seL4_Yield();

    while(1) {
        seL4_Word badge;
        seL4_MessageInfo_t message;
        unsigned int len;

        message = seL4_Wait(PROXY_SEND_EP_SLOT, &badge);
        len = MIN(sizeof(recieved_data), seL4_MessageInfo_get_length(message));

#ifdef ENABLE_ENCRYPTION
        len = blockEncrypt(&cipher_e, &key_e, seL4_GetIPCBuffer()->msg, len*8, recieved_data)/8;
#else
        memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
#endif

        send_packet(recieved_data, len);
        
        //memset(recieved_data, '\0', len); /* Use some free cycles to clear message, hope this doesn't slow. */
        
        //memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len);
        //send_packet(recieved_data, len);
    }
    return 0;
}
