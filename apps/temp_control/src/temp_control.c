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
#include <math.h>
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

enum { //TODO put into library
    UpdateSetPoint = 0,
    GetCurrentTemp = 1,    
};

/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
static uint64_t thread_stack[THREAD_STACK_SIZE];

static temp_control_config_t *config = (temp_control_config_t*)CONFIG_ADDRESS;

static float setpoint;
static float current_temp;
static float temp_safety_zone;

static int fan_status;
static int alarm_status;

/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/

/* TODO: CAREFUL this can be called by both threads! */
void control_update(void) {
    seL4_MessageInfo_t msg;
    float temp_error = (current_temp - setpoint);
    
    printf("TEMP CONTROL: Doing control update.\n\tCurrent Temp: %4.2f\n\tSetpoint: %4.2f (error: %4.2f).\n",
            current_temp,
            setpoint,
            temp_error);

    /* Check if temp is safe, if not trigger alarm. */
    if(!alarm_status && fabs(temp_error) > temp_safety_zone) {
        printf("TEMP CONTROL: !!!!!!! ACTIVATING ALARM !!!!!!!\n");
        msg = seL4_MessageInfo_new(0, 0, 0, 1);
        alarm_status = 1;
        seL4_SetMR(0, 1);
        msg = seL4_Call(config->alarm_cap, msg);
    } else if(alarm_status && fabs(temp_error) < temp_safety_zone) {
        printf("TEMP CONTROL: !!!!!!! DEACTIVATING ALARM !!!!!!!\n");
        msg = seL4_MessageInfo_new(0, 0, 0, 1);
        alarm_status = 0;
        seL4_SetMR(0, 0);
        msg = seL4_Call(config->alarm_cap, msg);
    }

    if(!fan_status && temp_error > 0) {
        fan_status = 1;
        printf("TEMP CONTROL: Turning on fan. Turning off heater.\n");
        msg = seL4_MessageInfo_new(0, 0, 0, 3);
        seL4_SetMR(0, 0); /*Outgoing to proxy */
        seL4_SetMR(1, 1); /* Turn on fan */
        seL4_SetMR(2, 0); /* Turn off heater */
        msg = seL4_Call(config->fan_cap, msg);
    } else if(fan_status && temp_error < 0) {
        fan_status = 0;
        printf("TEMP CONTROL: Turning off fan. Turning on heater.\n");
        msg = seL4_MessageInfo_new(0, 0, 0, 3);
        seL4_SetMR(0, 0); /* Outgoing to proxy */
        seL4_SetMR(1, 0); /* Turn off fan */
        seL4_SetMR(2, 1); /* Turn on heater */
        msg = seL4_Call(config->fan_cap, msg);
    }

}


void worker_thread(void) {
    seL4_Word raw_setpoint;
    seL4_MessageInfo_t msg;
    seL4_Word badge;

    printf("TEMP CONTROL: Worker thread started.\n");

    while(1) {
        msg = seL4_Wait(config->web_cap, &badge);

        switch(seL4_GetMR(0)) {
            case UpdateSetPoint:
                msg = seL4_MessageInfo_new(0, 0, 0, 1);
                raw_setpoint = seL4_GetMR(1);
                setpoint = *(float *)&raw_setpoint;
                seL4_SetMR(0, current_temp);
                seL4_Reply(msg);

                /* Update the system with the new setpoint */
                control_update();
                break;
            case GetCurrentTemp:
                msg = seL4_MessageInfo_new(0, 0, 0, 4);
                seL4_SetMR(0, current_temp);
                seL4_SetMR(1, fan_status);
                seL4_SetMR(2, !fan_status); /* Web assumes fan and heater are controller independently. */
                seL4_SetMR(3, alarm_status);
                seL4_Reply(msg);
                break;
            default:
                break;
        }
    }
}

int main(void) {
    seL4_MessageInfo_t msg;
    seL4_Word badge;

    printf("TEMP CONTROL: Started.\n");

    setpoint = config->default_set_point;
    current_temp = 0.0;
    setpoint = 1.0;
    temp_safety_zone = 0.5;
    fan_status = 0;
    alarm_status = 0;

    control_update();

    /* Setup worker thread */
    uintptr_t thread_stack_top = (uintptr_t)thread_stack + sizeof(thread_stack);

    seL4_UserContext regs = {0};
    regs.pc = (seL4_Word)worker_thread;
    regs.sp = (seL4_Word)thread_stack_top;

    seL4_TCB_WriteRegisters(THREAD_2_SLOT, seL4_True, 0, 2, &regs); //TODO not sure about this local_cap
    seL4_Yield();


    while(1) {
        //TODO hide system calls and plumbing code

        msg = seL4_MessageInfo_new(0, 0, 0, 1);
        seL4_SetMR(0, 1); /* ReceivePacket */

        /* Listen for new packet */
        msg = seL4_Call(config->sensor_cap, msg);

        /* Update the current_temp */
        current_temp = (seL4_GetMR(0))/10.0;

        control_update();
    }
    return 0;

}
