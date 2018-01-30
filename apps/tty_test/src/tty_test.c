/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

/****************************************************************************
 *
 *      $Id:  $
 *
 *      Description: Simple milestone 0 test.
 *
 *      Author:			Godfrey van der Linden
 *      Original Author:	Ben Leslie
 *
 ****************************************************************************/

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sel4/sel4.h>



#include "ttyout.h"

#define IP4_ADDR(a,b,c,d) \
        ((unsigned int)((d) & 0xff) << 24) | \
        ((unsigned int)((c) & 0xff) << 16) | \
        ((unsigned int)((b) & 0xff) << 8)  | \
        (unsigned int)((a) & 0xff)



static void send_packet(void){
    char buf[] = "test!";

    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 3+sizeof(buf));
    seL4_SetTag(tag);
    seL4_SetMR(0, 1);
    seL4_SetMR(1, IP4_ADDR(192, 168, 168, 1));
    seL4_SetMR(2, 4444);
    seL4_SetMR(3, sizeof(buf));
    memcpy(seL4_GetIPCBuffer()->msg + 4, buf, sizeof(buf));

    seL4_Call(SYSCALL_ENDPOINT_SLOT, tag);
}

static char recieved_data[256];

static void recv_packet(void){
    int len;
    seL4_MessageInfo_t tag = seL4_MessageInfo_new(0, 0, 0, 2);
    seL4_SetTag(tag);
    seL4_SetMR(0, 2);
    seL4_SetMR(1, 4444);

    tag = seL4_Call(SYSCALL_ENDPOINT_SLOT, tag);
    len = seL4_MessageInfo_get_length(tag);

    memset(recieved_data, '\0', 256);
    memcpy(recieved_data, seL4_GetIPCBuffer()->msg, len); //RTH this is a buffer overflow bug.
    printf("Received data: %s\n", recieved_data);
}

int main(void){
    /* initialise communication */
    ttyout_init();

    do {
        printf("task:\tHello world, I'm\ttty_test!\n");
        send_packet();
        recv_packet();
    } while(1);

    return 0;
}
