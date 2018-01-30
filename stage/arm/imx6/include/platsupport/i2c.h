/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#ifndef _PLATSUPPORT_I2C_H_
#define _PLATSUPPORT_I2C_H_

#include <platsupport/io.h>

typedef struct i2c_bus i2c_bus_t;
#include <platsupport/plat/i2c.h>

/* For bit banged API */
#include <platsupport/gpio.h>

/***********
 *** BUS ***
 ***********/

enum i2c_stat {
/// Transfer completed successfully
    I2CSTAT_COMPLETE,
/// The last byte is about to be transfered. Call read/write if you wish to extend it.
    I2CSTAT_LASTBYTE,
/// Transfer was truncated or cancelled by the remote
    I2CSTAT_INCOMPLETE,
/// A transfer error occurred
    I2CSTAT_ERROR,
/// The transfer was aborted by the user
    I2CSTAT_CANCELLED
};

enum i2c_mode {
/// Idle
    I2CMODE_IDLE,
/// Receive mode
    I2CMODE_RX,
/// Transmit mode
    I2CMODE_TX
};

/**
 * This callback is called when a transfer needs attention.
 * It will be called if the transfer is interrupted, just before the last byte is
 * transferred, and also when the transfer has completed. The catalyse for the call
 * to the callback is reported in i2c_stat.
 * If the I2C buffer for the transfer is not contiguous, the I2CSTAT_LASTBYTE status
 * can be used to replace the active transfer buffer and continue the transfer. To
 * achieve this, simply call i2c_read or i2c_write with a new buffer when the
 * I2CSTAT_LASTBYTE status callback is received. NOTE that in this case, the last byte
 * of the original buffer will not take part in the transfer. The reason for this
 * strange operation is due to the ACK policy of I2C transfers.
 */
typedef void (*i2c_callback_fn)(i2c_bus_t* bus, enum i2c_stat, size_t size, void* token);

/**
 * This callback is called when the I2C bus is addressed as a slave. The application
 * should respond by calling i2c_read or i2c_write with an appropriate transfer buffer
 * depending on the reported i2c_mode.
 */
typedef void (*i2c_aas_callback_fn)(i2c_bus_t* bus, enum i2c_mode, void* token);

struct i2c_bus {
    int (*start_read)(i2c_bus_t* bus, int slave, void* buf, size_t size, i2c_callback_fn cb, void* token);
    int (*start_write)(i2c_bus_t* bus, int slave, const void* buf, size_t size, i2c_callback_fn cb, void* token);
    int (*read)(i2c_bus_t* bus, void* buf, size_t size, i2c_callback_fn cb, void* token);
    int (*write)(i2c_bus_t* bus, const void* buf, size_t size, i2c_callback_fn cb, void* token);
    long (*set_speed)(i2c_bus_t* bus, long bps);
    int (*master_stop)(i2c_bus_t* bus);
    int (*set_address)(i2c_bus_t* bus, int addr, i2c_aas_callback_fn aas_cb, void* aas_token);
    enum i2c_mode (*probe_aas)(i2c_bus_t* bus);
    void (*handle_irq)(i2c_bus_t* bus);

    i2c_callback_fn cb;
    void* token;
    i2c_aas_callback_fn aas_cb;
    void* aas_token;
    void* priv;
};


struct i2c_bb {
    gpio_id_t scl;
    gpio_id_t sda;
    int speed;
    gpio_sys_t* gpio_sys;
};


/**
 * Initialise an I2C bus
 * @param[in]  id      The id of the I2C bus to initialise
 * @param[in]  io_ops  A structure providing operations which this device
 *                     may perform for intialisation.
 * @param[out] i2c_bus A handle to the i2c bus driver for future calls
 * @return             0 on success
 */
int i2c_init(enum i2c_id id, ps_io_ops_t* io_ops, i2c_bus_t* i2c_bus);

/**
 * Initialise a bit-banged I2C bus
 * @param[in]  gpio_sys  A handle to a gpio subsystem. This handle must be valid while the bus is in use
 * @param[in]  scl       The GPIO ID of the SCL pin
 * @param[in]  sda       The GPIO ID of the SDA pin
 * @param[out] i2c_bb    A bit-banged i2c structure to populate. This caller is responsible for managing the memory
 *                       for this structure. The memory must be valid while the bus is in use.
 * @param[out] i2c_bus   A generic I2C bus structure to populate
 * @return               0 on success
 */
int i2c_bb_init(gpio_sys_t* gpio_sys, gpio_id_t scl, gpio_id_t sda, struct i2c_bb* i2c_bb, struct i2c_bus* i2c_bus);

/**
 * Set the speed of the I2C bus
 * @param[in] i2c_bus  A handle to an I2C bus
 * @param[in] bps      The speed to set in bits per second.
 * @return             The actual speed set
 */
static inline long i2c_set_speed(i2c_bus_t* i2c_bus, long bps)
{
    assert(i2c_bus);
    assert(i2c_bus->set_speed);
    return i2c_bus->set_speed(i2c_bus, bps);
}

/**
 * Signal an IRQ even to an I2C bus.
 * @param[in] i2c_bus The I2C bus that triggered the IRQ
 */
static inline void i2c_handle_irq(i2c_bus_t* i2c_bus)
{
    assert(i2c_bus);
    assert(i2c_bus->handle_irq);
    i2c_bus->handle_irq(i2c_bus);
}

/**
 * Determine if the I2C bus received the assigned slave address
 * This function should only be used in polling mode and should be considered to
 * be edge triggered (mode is only reported at the beginning of a slave transfer).
 * @param[in] i2c_bus  A handle to the bus to probe
 * @return             The mode in which the bus was addressed, or I2CMODE_IDLE if
 *                     the bus was not addressed in the last byte received.
 */
static inline enum i2c_mode i2c_probe_aas(i2c_bus_t* i2c_bus)
{
    assert(i2c_bus);
    assert(i2c_bus->probe_aas);
    return i2c_bus->probe_aas(i2c_bus);
}

/**
 * Read from a remote I2C slave
 * This function is not generally called directly. Instead, one should
 * initialise a slave device structure and perform the appropriate slave
 * device calls.
 * @param[in] i2c_bus A handle to the i2c bus driver
 * @param[in] addr    The slave device address. The RW bit of the address
 *                    should be set to 0.
 * @param[in] data    A address to store the recieved data
 * @param[in] size    The number of bytes to read
 * @param[in] cb      A callback to call when the transfer has finished.
 * @param[in] token   A token to pass unmodified to the registered callback
 * @return            The number of bytes read
 */
static inline int i2c_mread(i2c_bus_t* i2c_bus, int addr, void* data, size_t size,
                            i2c_callback_fn cb, void* token)
{
    assert(i2c_bus);
    assert(i2c_bus->start_read);
    return i2c_bus->start_read(i2c_bus, addr, data, size, cb, token);
}

/**
 * Write to a remote I2C slave
 * This function is not generally called directly. Instead, one should
 * initialise a slave device structure and perform the appropriate slave
 * device calls.
 * @param[in] i2c_bus A handle to an i2c bus driver
 * @param[in] addr    The slave device address. The RW bit of the address
 *                    should be set to 0.
 * @param[in] data    The address of the data to send
 * @param[in] size    The number of bytes to send
 * @param[in] cb      A callback to call when the transfer has finished.
 * @param[in] token   A token to pass unmodified to the registered callback
 * @return            The number of bytes sent
 */
static inline int i2c_mwrite(i2c_bus_t* i2c_bus, int addr, const void* data, size_t size,
                             i2c_callback_fn cb, void* token)
{
    assert(i2c_bus);
    assert(i2c_bus->start_write);
    return i2c_bus->start_write(i2c_bus, addr, data, size, cb, token);
}

/*** Slave mode ***/

/**
 * Set the chip address of the bus for slave mode
 * @param[in] i2c_bus   A handle to an i2c bus driver
 * @param[in] addr      The address to assign to this bus. The RW bit of
 *                      the address should be set to 0.
 * @param[in] aas_cb    A callback function to call when the slave is addressed
 * @param[in] aas_token A token to pass, unmodified to the provided callback function
 * @return              0 on success
 */
static inline int i2c_set_address(i2c_bus_t* i2c_bus, int addr, i2c_aas_callback_fn aas_cb, void* aas_token)
{
    assert(i2c_bus);
    assert(i2c_bus->set_address);
    return i2c_bus->set_address(i2c_bus, addr, aas_cb, aas_token);
}

/**
 * Read from a remote I2C master
 * @param[in] i2c_bus A handle to an i2c bus driver
 * @param[in] data    A address to store the recieved data
 * @param[in] size    The number of bytes to read
 * @param[in] cb      A callback to call when the transfer has finished.
 * @param[in] token   A token to pass unmodified to the registered callback
 * @return            The number of bytes read
 */
static inline int i2c_read(i2c_bus_t* i2c_bus, void* data, size_t size, i2c_callback_fn cb, void* token)
{
    assert(i2c_bus);
    assert(i2c_bus->read);
    return i2c_bus->read(i2c_bus, data, size, cb, token);
}

/**
 * Write to a remote I2C master
 * @param[in] i2c_bus A handle to an i2c bus driver
 * @param[in] data    The address of the data to send
 * @param[in] size    The number of bytes to send
 * @param[in] cb      A callback to call when the transfer has finished.
 * @param[in] token   A token to pass unmodified to the registered callback
 * @return            The number of bytes sent
 */
static inline int i2c_write(i2c_bus_t* i2c_bus, const void* data, size_t size, i2c_callback_fn cb, void* token)
{
    assert(i2c_bus);
    assert(i2c_bus->write);
    return i2c_bus->write(i2c_bus, data, size, cb, token);
}

/**
 * Scan a bus for devices
 * @param[in]  i2c_bus The I2C bus to scan
 * @param[in]  start   The address at which to begin the scan.
 *                     The RW bit of the address should be set to 0.
 * @param[out] addr    On success, and when the value passed is not NULL,
 *                     This
 * @param[in]  naddr   The maximum number of addresses to return. This
 *                     should be equal to the number of elements in the addr
 *                     array.
 * @return             -1 on failure, otherwise, returns the number of addresses
 *                     that were entered into the addr array.
 *                     If the return value equals @ref(naddr), one should
 *                     repeat the call with @ref(start) adjusted appropraitly.
 */
int i2c_scan(i2c_bus_t* i2c_bus, int start, int* addr, int naddr);



/*********************
 *** Remote device ***
 *********************/

enum kvfmt {
    BIG64    = -8,
    BIG32    = -4,
    BIG16    = -2,
    BIG8     = -1,
    STREAM   =  0,
    LITTLE8  = +1,
    LITTLE16 = +2,
    LITTLE32 = +4,
    LITTLE64 = +8
};

typedef struct i2c_slave i2c_slave_t;

struct i2c_slave {
    i2c_bus_t* bus;
    int        address;
    enum kvfmt data_fmt;
    enum kvfmt address_fmt;
};


/**** Key-Value device ****/

/**
 * Initilaise an register map I2C slave device
 * @param[in]  bus     The I2C bus that this device resides on
 * @param[in]  address The chip address of the slave device. The RW bit of
 *                     the address should be set to 0.
 * @param[in]  asize   The address size in bytes
 *                     Positive values indicate LITTLE_ENDIAN while
 *                     negative values indicate BIG_ENDIAN.
 * @param[in]  dsize   The data word size in bytes
 *                     Positive values indicate LITTLE_ENDIAN while
 *                     negative values indicate BIG_ENDIAN.
 * @param[out] dev     A slave device structure to initialise
 * @return             0 on success
 */
int i2c_kvslave_init(i2c_bus_t* i2c_bus, int address,
                     enum kvfmt asize, enum kvfmt dsize,
                     i2c_slave_t* i2c_slave);

/**
 * Read registers from a register map I2C slave device
 * The endianess, word size and address size will be considered for the
 * transfer. Note that this function accepts the number of registers as
 * an argument rather than the number of bytes. Note also that the data
 * argument has no type, but is expected to have a type that matches the
 * word size (ie, int8_t[], int16_t[], int32_t[] or int64_t[])
 * @param[in] i2c_slave  A handle to a I2C slave device to read from
 * @param[in] start      The register address to begin reading from
 * @param[in] data       The address at which to store the read data
 * @param[in] nregs      The number of registers to read
 * @return               The actual number of bytes read
 */
int i2c_kvslave_read(i2c_slave_t* i2c_slave, uint64_t start, void* data, int nregs);

/**
 * Write registers to a register map I2C slave device
 * The endianess, word size and address size will be considered for the
 * transfer. Note that this function accepts the number of registers as
 * an argument rather than the number of bytes. Note also that the data
 * argument has no type, but is expected to have a type that matches the
 * word size (ie, int8_t[], int16_t[], int32_t[] or int64_t[])
 * @param[in] i2c_slave  A handle to a I2C slave device to read from
 * @param[in] start      The register address to begin reading from
 * @param[in] data       An address whcih provides the data to be written
 * @param[in] nregs      The number of registers to write
 * @return               The actual number of bytes read
 */
int i2c_kvslave_write(i2c_slave_t* i2c_slave, uint64_t start, const void* data, int nregs);


/**** Streaming device ****/

/**
 * Initilaise a streaming I2C slave device
 * @param[in]  i2c_bus   A handle to the I2C bus that the device resides on
 * @param[in]  address   The chip address of the slave device. The RW bit of
 *                       the address should be set to 0.
 * @param[out] i2c_slave A handle to an i2c slave device structure to initialise
 * @return               0 on success
 */
int i2c_slave_init(i2c_bus_t* i2c_bus, int address, i2c_slave_t* i2c_slave);


/**
 * Read from a streaming slave device
 * @param[in] i2c_slave  A handle to the I2C slave device to read from
 * @param[in] data       A address to read the data to
 * @param[in] size       The number of bytes to read
 * @param[in] cb         The callback which is called when write is complete
 * @param[in] token      The token that the callback returns
 * @return               The actual number of registers read
 */
int i2c_slave_read(i2c_slave_t* i2c_slave, void* data, int size, i2c_callback_fn cb,
                   void* token);

/**
 * Write to a streaming slave device
 * @param[in] i2c_slave  A handle to the I2C slave device to write to
 * @param[in] data       The address of the data to be written
 * @param[in] size       The number of bytes to write
 * @param[in] cb         The callback which is called when write is complete
 * @param[in] token      The token that the callback returns
 * @return               The actual number of registers written
 */
int i2c_slave_write(i2c_slave_t* i2c_slave, const void* data, int size, i2c_callback_fn cb,
                    void* token);

#endif /* _PLATSUPPORT_I2C_H_ */
