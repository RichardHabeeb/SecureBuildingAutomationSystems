/*------------------------------------------------------------------------------
    INCLUDES
------------------------------------------------------------------------------*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sel4/sel4.h>

/*------------------------------------------------------------------------------
    DEFINITIONS & CONSTANTS
------------------------------------------------------------------------------*/

/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)
#define THREAD_2_SLOT           (3)
#define SEND_EP_SLOT            (4)
#define RECV_EP_SLOT            (5)

/* CCNT borrowed from sel4bench.h */
#define SEL4BENCH_READ_CCNT(var) do { \
    asm volatile("mrc p15, 0, %0, c9, c13, 0\n" \
        : "=r"(var) \
    ); \
} while(0)


#define MESSAGE_SIZE (510)

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint32_t results[10000];
const uint32_t results_count = sizeof(results)/sizeof(results[0]);
static char bigData[MESSAGE_SIZE];

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



int main(void) {
    uint32_t start, end;
    float sum = 0;
    printf("Hi! I'm Ping (Local).\n");

    memset(bigData, 'A', MESSAGE_SIZE);
    bigData[MESSAGE_SIZE-1] = '\0';
 
    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, MESSAGE_SIZE/sizeof(seL4_Word));
    for(uint32_t i = 0; i <= results_count; i++) {
        seL4_Word badge;

        SEL4BENCH_READ_CCNT(start);

        memcpy(seL4_GetIPCBuffer()->msg, bigData, MESSAGE_SIZE);
        //seL4_SetMR(0, 1);
        
        tag = seL4_Call(SEND_EP_SLOT, tag);
        
        //printf("%s\n", seL4_GetIPCBuffer()->msg);
        //seL4_Send(SEND_EP_SLOT, tag);

        //tag = seL4_Wait(RECV_EP_SLOT, &badge);

		SEL4BENCH_READ_CCNT(end);

        if(i > 0) {
            uint32_t diff = (end < start) ? (0xFFFFFFFF-start-end) : end-start;
            results[i-1] = diff;
            sum += diff;
        }
    }

    for(uint32_t j = 0; j < results_count; j++) {
        printf("%i, ", results[j]);
    }
    printf("\n\nPing: average latency: %.3f\n", sum/results_count);
    printf("Ping: total time: %.3f\n", sum);

    while(1);
    return 0;
}
