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
#define PROXY_SEND_EP_SLOT      (4)
#define PROXY_RECV_EP_SLOT      (5)

/* CCNT borrowed from sel4bench.h */
#define SEL4BENCH_READ_CCNT(var) do { \
    asm volatile("mrc p15, 0, %0, c9, c13, 0\n" \
        : "=r"(var) \
    ); \
} while(0)

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static char bigData[1];
static uint32_t results[10000];
const uint32_t results_count = sizeof(results)/sizeof(results[0]);

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
    float sum;
    printf("Hi! I'm Ping.\n");

    memset(bigData, 'A', sizeof(bigData));
    bigData[sizeof(bigData)-1] = '\0';
    
    printf("Ping: working.\n");
    for(uint32_t i = 0; i <= results_count; i++) {
        seL4_Word badge;
        //printf("Ping: Sending %s\n", bigData);

        SEL4BENCH_READ_CCNT(start);

        //seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, sizeof(bigData));
        seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 1);
        seL4_SetMR(0, 'B');
        //memcpy(seL4_GetIPCBuffer()->msg, bigData, sizeof(bigData));
        seL4_Send(PROXY_SEND_EP_SLOT, tag);

        tag = seL4_Wait(PROXY_RECV_EP_SLOT, &badge);

		SEL4BENCH_READ_CCNT(end);

        if(i > 0) {
            uint32_t diff = (end < start) ? (0xFFFFFFFF-start-end) : end-start;
            results[i-1] = diff;
            sum += diff;
        }

        //printf("Ping: Recieved %s\n", seL4_GetIPCBuffer()->msg);
    }

    for(uint32_t j = 0; j < results_count; j++) {
        printf("%i, ", results[j]);
    }
    printf("\n\nPing: average latency: %.3f\n", sum/results_count);
    printf("Ping: total time: %.3f\n", sum);


    return 0;
}
