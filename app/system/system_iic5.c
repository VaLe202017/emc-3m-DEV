/*  ELAK d.o.o.
 *  By: Marwan
 *  iic.c
 */

#include <app.h>

/*-----------------------------------------------------------------------------*/
#define DS3231_I2C_MODULE     I2C5
#define DS3231_I2C2_SDA_LAT   LATFbits.LATF4
#define DS3231_I2C2_SDA_TRIS  TRISFbits.TRISF4
#define DS3231_SYSTEM_CLOCK   GetPeripheralClock()
#define DS3231_I2C_SPEED      400000UL

/*-----------------------------------------------------------------------------*/
#define I2CCON      XCAT(XCAT(DS3231_I2C_MODULE, ),CON)
#define I2CCONBITS  XCAT(XCAT(DS3231_I2C_MODULE, ),CONbits)
#define I2CSTAT     XCAT(XCAT(DS3231_I2C_MODULE, ),STAT)
#define I2CSTATBITS XCAT(XCAT(DS3231_I2C_MODULE, ),STATbits)
#define I2CADD      XCAT(XCAT(DS3231_I2C_MODULE, ),ADD)
#define I2CBRG      XCAT(XCAT(DS3231_I2C_MODULE, ),BRG)
#define I2CTRN      XCAT(XCAT(DS3231_I2C_MODULE, ),TRN)
#define I2CRCV      XCAT(XCAT(DS3231_I2C_MODULE, ),RCV)
#define DS3231_I2CBAUD ((DS3231_SYSTEM_CLOCK/(2 * DS3231_I2C_SPEED)) - 2)

/*-----------------------------------------------------------------------------*/
void sys_iic5_init(void) {
    I2CBRG = DS3231_I2CBAUD;
    I2CCON = 0x8000;
    DS3231_I2C2_SDA_LAT = 0;
    DS3231_I2C2_SDA_TRIS = 0;
    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);
    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);
}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic5_check(UINT address) {
    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);
    I2CTRN = (BYTE) address;
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }
    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);
    return (TRUE);
}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic5_write(UINT address, UINT reg, BYTE buf[], UINT count) {
    UINT icount;
    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);
    I2CTRN = (BYTE) address;
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }
    I2CTRN = (BYTE) (reg);
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }
    icount = 0;
    while (icount < count) {
        I2CTRN = buf[icount];
        icount++;
        while (I2CSTATBITS.TRSTAT);
        if (I2CSTATBITS.ACKSTAT) {
            I2CCONBITS.PEN = 1;
            while (I2CCONBITS.PEN);
            return (FALSE);
        }
    }
    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);
    return (TRUE);

}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic5_read(UINT address, UINT reg, BYTE buf[], UINT count) {
    UINT icount;

    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);
    I2CTRN = (BYTE) address; // reading
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }

    I2CTRN = (BYTE) (reg);
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }

    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);

    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);

    I2CTRN = (BYTE) ((BYTE) address | 0x01); // reading
    while (I2CSTATBITS.TRSTAT);
    if (I2CSTATBITS.ACKSTAT) {
        I2CCONBITS.PEN = 1;
        while (I2CCONBITS.PEN);
        return (FALSE);
    }
    icount = 0;
    do {
        I2CCONBITS.RCEN = 1;
        while (!I2CSTATBITS.RBF);
        buf[icount] = (BYTE) I2CRCV;
        icount++;
        if (icount == count) { // last byte
            I2CCONBITS.ACKDT = 1; // Not ACK sent
        } else {
            I2CCONBITS.ACKDT = 0; // ACK sent
        }
        I2CCONBITS.ACKEN = 1;
        while (I2CCONBITS.ACKEN);
    } while (icount < count);
    I2CCONBITS.RCEN = 0;
    /* Send the stop condition	*/
    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);
    return (TRUE);

}
