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
#include <stdlib.h>
#include <stdint.h>
#include <sel4/sel4.h>
#define CONFIG_ADDRESS 0x70000000

/*------------------------------------------------------------------------------
    DEFINITIONS
------------------------------------------------------------------------------*/

typedef struct _proxy_client_config_t {
    seL4_CPtr ep_cap;
    seL4_CPtr tcb_cap;
    seL4_Word port;
    seL4_Word ip;
    char psk[64+1]; /* Put key as a hex string here. (256-bit)+\n */
    char iv[32+1]; /* Put IV as a hex string here. */
} proxy_client_config_t;

typedef struct _proxy_config_t {
    seL4_Word enable_encryption;
    proxy_client_config_t clients[CONFIG_APP_PROXY_MAX_NUM_CLIENTS];
    seL4_Word num_clients;
} proxy_config_t;


typedef struct _temp_control_config_t {
    uint32_t default_set_point;

    seL4_CPtr web_cap;
    seL4_CPtr sensor_cap;
    seL4_CPtr fan_cap;
    seL4_CPtr alarm_cap;
} temp_control_config_t;


typedef struct _alarm_config_t {
    seL4_CPtr tc_cap;
    uint32_t gpio_id;
    void *gpio_bank1;
    void *iomuxc;
} alarm_config_t;

typedef struct _fan_config_t {
    seL4_CPtr tc_cap;
    uint32_t gpio_id;
    void *gpio_bank1;
    void *iomuxc;
} fan_config_t;

typedef struct _sensor_config_t {
    seL4_CPtr tc_cap;
} sensor_config_t;
