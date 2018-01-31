/*------------------------------------------------------------------------------
 MIT License
 
 Copyright (c) 2018 ArgusLab
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    INCLUDES
------------------------------------------------------------------------------*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sel4/sel4.h>

#include "capnp_c.h"
#include "protocol.capnp.h"


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

/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)
#define TC_EP_SLOT              (3)

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/
unsigned int decode_ip(char *ip) {
    unsigned int a, b, c, d;
    sscanf(ip, "%i.%i.%i.%i", &a, &b, &c, &d);
    return IP4_ADDR(a, b, c, d);
}


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


int main(void) {
    static unsigned char recieved_data[4096];
    int len;
    seL4_Word ip;

    printf("WEB: Started.\n");

    while(1) {
        len = recv_packet(6666, recieved_data, sizeof(recieved_data)/sizeof(recieved_data[0]), &ip);

        // do some stuff with capn proto
        //

        send_packet(ip, 6666, recieved_data, len);

    }
    return 0;
}
