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

#include <sos.h>
#include <config.h>

/*------------------------------------------------------------------------------
    DEFINITIONS & CONSTANTS
------------------------------------------------------------------------------*/

/* Cspace Layout */
#define CNODE_SLOT              (1)
#define SYSCALL_EP_SLOT         (2)
#define THREAD_2_SLOT           (3)

#define THREAD_STACK_SIZE 512

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint64_t thread_stack[THREAD_STACK_SIZE];

static temp_control_config_t *config = (temp_control_config_t*)CONFIG_ADDRESS; 

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/

void worker_thread(void) {
    printf("TEMP CONTROL: Worker thread started.\n");

    while(1);

}

int main(void) {

    printf("TEMP CONTROL: Started.\n");

    uintptr_t thread_stack_top = (uintptr_t)thread_stack + sizeof(thread_stack);

    seL4_UserContext regs = {0};
    regs.pc = (seL4_Word)worker_thread;
    regs.sp = (seL4_Word)thread_stack_top;

    seL4_TCB_WriteRegisters(THREAD_2_SLOT, seL4_True, 0, 2, &regs); //TODO not sure about this local_cap
    seL4_Yield();

    while(1);
    return 0;

}
