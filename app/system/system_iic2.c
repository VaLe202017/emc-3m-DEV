/*  (C) Marwan Khoury
 *   iic2.c
 */

#include "app.h"

/*-----------------------------------------------------------------------------*/
#define IIC2_MODULE         I2C2
#define IIC2_SDA_LAT        LATAbits.LATA3
#define IIC2_SDA_TRIS       TRISAbits.TRISA3
#define IIC2_PREPH_CLOCK    SYS_CLK_FrequencyPeripheralGet()
#define IIC2_SPEED          100000UL

/*-----------------------------------------------------------------------------*/
#define I2CCON      XCAT(XCAT(IIC2_MODULE, ),CON)
#define I2CCONBITS  XCAT(XCAT(IIC2_MODULE, ),CONbits)
#define I2CSTAT     XCAT(XCAT(IIC2_MODULE, ),STAT)
#define I2CSTATBITS XCAT(XCAT(IIC2_MODULE, ),STATbits)
#define I2CADD      XCAT(XCAT(IIC2_MODULE, ),ADD)
#define I2CBRG      XCAT(XCAT(IIC2_MODULE, ),BRG)
#define I2CTRN      XCAT(XCAT(IIC2_MODULE, ),TRN)
#define I2CRCV      XCAT(XCAT(IIC2_MODULE, ),RCV)
#define I2CBAUD     ((IIC2_PREPH_CLOCK/(2 * IIC2_SPEED)) - 2)

/*-----------------------------------------------------------------------------*/
void sys_iic2_init() {
    I2CBRG = I2CBAUD;
    I2CCON = 0x8000;
    IIC2_SDA_LAT = 0;
    IIC2_SDA_TRIS = 0;
    I2CCONBITS.SEN = 1;
    while (I2CCONBITS.SEN == 1);
    I2CCONBITS.PEN = 1;
    while (I2CCONBITS.PEN);
}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic2_check(UINT address) {
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
BOOL sys_iic2_write(UINT address, UINT reg, BYTE buf[], UINT count) {
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
BOOL sys_iic2_read(UINT address, UINT reg, BYTE buf[], UINT count) {
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
