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

#define CTRL_REG 0xf4

#define BMP180_TMP_READ_CMD 0x2E

#define BMP180_PRE_OSS0_CMD 0x34
#define BMP180_PRE_OSS1_CMD 0x74
#define BMP180_PRE_OSS2_CMD 0xB4
#define BMP180_PRE_OSS3_CMD 0xF4

#define AC1_MSB_REG 0xaa
#define AC1_LSB_REG 0xab
#define AC2_MSB_REG 0xac
#define AC2_LSB_REG 0xad
#define AC3_MSB_REG 0xae
#define AC3_LSB_REG 0xaf
#define AC4_MSB_REG 0xb0
#define AC4_LSB_REG 0xb1
#define AC5_MSB_REG 0xb2
#define AC5_LSB_REG 0xb3
#define AC6_MSB_REG 0xb4
#define AC6_LSB_REG 0xb5
#define B1_MSB_REG 0xb6
#define B1_LSB_REG 0xb7
#define B2_MSB_REG 0xb8
#define B2_LSB_REG 0xb9
#define MB_MSB_REG 0xba
#define MB_LSB_REG 0xbb
#define MC_MSB_REG 0xbc
#define MC_LSB_REG 0xbd
#define MD_MSB_REG 0xbe
#define MD_LSB_REG 0xbf

#define BMP180_REG_TMP 0xF6


#define CAL_COEF_IS_VALID(x) (x != 0x0000 && (uint16_t)x != 0xffff)


/*------------------------------------------------------------------------------
    VARIABLES
------------------------------------------------------------------------------*/
struct calibration
{
	int16_t ac1;
	int16_t ac2;
	int16_t ac3;
	uint16_t ac4;
	uint16_t ac5;
	uint16_t ac6;
	int16_t b1;
	int16_t b2;
	int16_t mb;
	int16_t mc;
	int16_t md;
} cal;

static sensor_config_t *config = (sensor_config_t*)CONFIG_ADDRESS;
char slave_address;
/*------------------------------------------------------------------------------
    PROTOTYPES
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
    PROCEEDURES
------------------------------------------------------------------------------*/

void usleep(int usecs) {
    // TODO: We need to spin because we do not as yet have a timer interrupt
    while(usecs-- > 0){
         /* Assume 1 GHz clock */
        volatile int i = 1000;
        while(i-- > 0);
        seL4_Yield();
    }
}

static void current_temp_send(uint32_t t) {
    seL4_MessageInfo_t msg;

    msg = seL4_MessageInfo_new(0,0,0,2);
    seL4_SetMR(0, 0); /* send from proxy */
    seL4_SetMR(1, t);

    msg = seL4_Call(config->tc_cap, msg);


}


void i2c_write_n(char * data, uint32_t len) {
    
    seL4_MessageInfo_t msg;
    
    msg = seL4_MessageInfo_new(0, 0, 0, 3 + len/sizeof(seL4_Word) + 1);
    seL4_SetMR(0, 4);
    seL4_SetMR(1, slave_address);
    seL4_SetMR(2, len);
    memcpy(seL4_GetIPCBuffer()->msg + 3, data, len);

    msg = seL4_Call(SYSCALL_EP_SLOT, msg);

    if(seL4_GetMR(0) != len) {
        printf("SENSOR: i2c write error! %i \n", seL4_GetMR(0));
    }
}

uint16_t i2c_read_16() {
    char *buf;
    seL4_MessageInfo_t msg;

    msg = seL4_MessageInfo_new(0, 0, 0, 3);
    seL4_SetMR(0, 3);
    seL4_SetMR(1, slave_address);
    seL4_SetMR(2, 2);

    msg = seL4_Call(SYSCALL_EP_SLOT, msg);

    if(seL4_GetMR(0) != 2) {
        printf("SENSOR: i2c read error! %i \n", seL4_GetMR(0));
    }

    buf = (char *)(seL4_GetIPCBuffer()->msg + 1);
    return ((uint16_t)buf[0] << 8) | (uint16_t)buf[1];
}


static uint16_t read_eeprom_reg(unsigned char reg)
{
    i2c_write_n(&reg, 1);
    return i2c_read_16();
}

static uint16_t read_temp(int delay_ms)
{
    char buf[2];
    buf[0] = CTRL_REG;
    buf[1] = BMP180_TMP_READ_CMD;

    i2c_write_n(buf, 2);

    usleep(1000 * delay_ms);
    //timer_sleep_ms(delay_ms);

    return read_eeprom_reg(BMP180_REG_TMP);
}

static void read_calibration()
{
    cal.ac1 = read_eeprom_reg(AC1_MSB_REG);
    cal.ac2 = read_eeprom_reg(AC2_MSB_REG);
    cal.ac3 = read_eeprom_reg(AC3_MSB_REG);
    cal.ac4 = read_eeprom_reg(AC4_MSB_REG);
    cal.ac5 = read_eeprom_reg(AC5_MSB_REG);
    cal.ac6 = read_eeprom_reg(AC6_MSB_REG);
    cal.b1 = read_eeprom_reg(B1_MSB_REG);
    cal.b2 = read_eeprom_reg(B2_MSB_REG);
    cal.mb = read_eeprom_reg(MB_MSB_REG);
    cal.mc = read_eeprom_reg(MC_MSB_REG);
    cal.md = read_eeprom_reg(MD_MSB_REG);

    printf("SENSOR: cal.ac1=%i\n", cal.ac1); 
    printf("SENSOR: cal.ac2=%i\n", cal.ac2);
    printf("SENSOR: cal.ac3=%i\n", cal.ac3);
    printf("SENSOR: cal.ac4=%i\n", cal.ac4);
    printf("SENSOR: cal.ac5=%i\n", cal.ac5);
    printf("SENSOR: cal.ac6=%i\n", cal.ac6);
    printf("SENSOR: cal.b1 =%i\n", cal.b1 );
    printf("SENSOR: cal.b2 =%i\n", cal.b2 );
    printf("SENSOR: cal.mb =%i\n", cal.mb );
    printf("SENSOR: cal.mc =%i\n", cal.mc );
    printf("SENSOR: cal.md =%i\n", cal.md );


    /* Validate. Data sheet says values should not be 0x0000 nor 0xffff */
	if (!CAL_COEF_IS_VALID(cal.ac1) ||
	    !CAL_COEF_IS_VALID(cal.ac2) ||
	    !CAL_COEF_IS_VALID(cal.ac3) ||
	    !CAL_COEF_IS_VALID(cal.ac4) ||
	    !CAL_COEF_IS_VALID(cal.ac5) ||
	    !CAL_COEF_IS_VALID(cal.ac6) ||
	    !CAL_COEF_IS_VALID(cal.b1) ||
	    !CAL_COEF_IS_VALID(cal.b2) ||
	    !CAL_COEF_IS_VALID(cal.mb) ||
	    !CAL_COEF_IS_VALID(cal.mc) ||
        !CAL_COEF_IS_VALID(cal.md)) {

		printf("Sensor: Invalid calibration data found on chip.\n");
	}
}



int main(void) {
    uint32_t current_temp;

    printf("SENSOR: Started\n");

    
    //i2c_set_address(0xEE); /* BMP180 Specific */
    slave_address = 0xEE;
    //slave_address = 0x77;
    read_calibration();




    while(1)
    {
        usleep(1000*10);

        uint16_t ut = read_temp(5);

        /* convert uncompensated temperature to true temperature */
    	int32_t x1 = ((ut - cal.ac6) * cal.ac5) / (1 << 15);
    	int32_t x2 = (cal.mc * (1 << 11)) / (x1 + cal.md);
    	int32_t b5 = x1 + x2;
    	current_temp = (b5 + 8) / (1 << 4);

        printf("SENSOR: current_temp=%i\n", current_temp);

		current_temp_send(current_temp);
    }

    return 0;
}
