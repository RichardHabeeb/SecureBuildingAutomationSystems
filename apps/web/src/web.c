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
#include <sos.h>
#include <udp.h>
#include <sel4/sel4.h>

#include "BuildingConfig_reader.h"

/*------------------------------------------------------------------------------
    DEFINITIONS & CONSTANTS
------------------------------------------------------------------------------*/

/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)
#define TC_EP_SLOT              (3)

#undef ns
#define ns(x) FLATBUFFERS_WRAP_NAMESPACE(WebProtocol, x)
/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
WebProtocol_BuildingConfig_table_t config;

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/

int main(void) {
    static uint8_t recieved_data[4096];
    
    int len;
    int err;
    seL4_Word ip;
    seL4_MessageInfo_t msg;
    
    printf("WEB: Started.\n");

    while(1) {
        len = recv_packet(6666, recieved_data, sizeof(recieved_data)/sizeof(recieved_data[0]), &ip);

//        printf("WEB: Recieved config from address %p (%d bytes)\n", ip, len);

//        for(int i = 0; i < len; i++) printf("%x ", recieved_data[i]);
//        printf("\n");
//WebProtocol_BuildingConfig_as_root
        if(!(config = ns(BuildingConfig_as_root(recieved_data)))) {
            printf("WEB: invalid config!\n");
            continue;
        }


        float desiredTemp = ns(BuildingConfig_desiredTemp(config));
        printf("WEB: desiredTemp=%f\n", desiredTemp);


        msg = seL4_MessageInfo_new(0, 0, 0, 2);

        seL4_SetMR(0, 0); //UpdateSetpoint
        seL4_SetMR(1, *(seL4_Word *)&desiredTemp);

        msg = seL4_Call(TC_EP_SLOT, msg);

//        status.currentTemp = seL4_GetMR(1);

//        printf("WEB: current temp = %f\n", status.currentTemp);


        send_packet(ip, 6666, recieved_data, len);

    }
    return 0;
}
