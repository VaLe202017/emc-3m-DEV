/*  ELAK d.o.o.
 *  By: Marwan
 *  iic.c
 */

#include <app.h>

/*-----------------------------------------------------------------------------*/
#define IIC3_MODULE         I2C3
#define IIC3_SDA_LAT        LATFbits.LATF2
#define IIC3_SDA_TRIS       TRISFbits.TRISF2
#define IIC3_PREPH_CLOCK    SYS_CLK_FrequencyPeripheralGet()
#define IIC3_SPEED          100000UL

/*-----------------------------------------------------------------------------*/
#define I2C3CON      XCAT(XCAT(IIC3_MODULE, ),CON)
#define I2C3CONBITS  XCAT(XCAT(IIC3_MODULE, ),CONbits)
#define I2C3STAT     XCAT(XCAT(IIC3_MODULE, ),STAT)
#define I2C3STATBITS XCAT(XCAT(IIC3_MODULE, ),STATbits)
#define I2C3ADD      XCAT(XCAT(IIC3_MODULE, ),ADD)
#define I2C3BRG      XCAT(XCAT(IIC3_MODULE, ),BRG)
#define I2C3TRN      XCAT(XCAT(IIC3_MODULE, ),TRN)
#define I2C3RCV      XCAT(XCAT(IIC3_MODULE, ),RCV)
#define I2C3BAUD     ((IIC3_PREPH_CLOCK/(2 * IIC3_SPEED)) - 2)

/*-----------------------------------------------------------------------------*/
void sys_iic3_init() {
    I2C3BRG = I2C3BAUD;
    I2C3CON = 0x8000;
    IIC3_SDA_LAT = 0;
    IIC3_SDA_TRIS = 0;
    I2C3CONBITS.SEN = 1;
    while (I2C3CONBITS.SEN == 1);
    I2C3CONBITS.PEN = 1;
    while (I2C3CONBITS.PEN);
}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic3_check(UINT address) {
    I2C3CONBITS.SEN = 1;
    while (I2C3CONBITS.SEN == 1);
    I2C3TRN = (BYTE) address;
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }
    I2C3CONBITS.PEN = 1;
    while (I2C3CONBITS.PEN);
    return (TRUE);
}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic3_write(UINT address, UINT reg, BYTE buf[], UINT count) {
    UINT icount;
    I2C3CONBITS.SEN = 1;
    while (I2C3CONBITS.SEN == 1);
    I2C3TRN = (BYTE) address;
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }
    I2C3TRN = (BYTE) (reg);
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }
    icount = 0;
    while (icount < count) {
        I2C3TRN = buf[icount];
        icount++;
        while (I2C3STATBITS.TRSTAT);
        if (I2C3STATBITS.ACKSTAT) {
            I2C3CONBITS.PEN = 1;
            while (I2C3CONBITS.PEN);
            return (FALSE);
        }
    }
    I2C3CONBITS.PEN = 1;
    while (I2C3CONBITS.PEN);
    return (TRUE);

}

/*-----------------------------------------------------------------------------*/
BOOL sys_iic3_read(UINT address, UINT reg, BYTE buf[], UINT count) {
    UINT icount;

    I2C3CONBITS.SEN = 1;
    while (I2C3CONBITS.SEN == 1);
    I2C3TRN = (BYTE) address; // reading
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }

    I2C3TRN = (BYTE) (reg);
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }

    I2C3CONBITS.PEN = 1;
    while (I2C3CONBITS.PEN);

    I2C3CONBITS.SEN = 1;
    while (I2C3CONBITS.SEN == 1);

    I2C3TRN = (BYTE) ((BYTE) address | 0x01); // reading
    while (I2C3STATBITS.TRSTAT);
    if (I2C3STATBITS.ACKSTAT) {
        I2C3CONBITS.PEN = 1;
        while (I2C3CONBITS.PEN);
        return (FALSE);
    }
    icount = 0;
    do {
        I2C3CONBITS.RCEN = 1;
        while (!I2C3STATBITS.RBF);
        buf[icount] = (BYTE) I2C3RCV;
        icount++;
        if (icount == count) { // last byte
            I2C3CONBITS.ACKDT = 1; // Not ACK sent
        } else {
            I2C3CONBITS.ACKDT = 0; // ACK sent
        }
        I2C3CONBITS.ACKEN = 1;
        while (I2C3CONBITS.ACKEN);
    } while (icount < count);
    I2C3CONBITS.RCEN = 0;
    /* Send the stop condition	*/
    I2C3CONBITS.PEN = 1;
    while (I2C3CONBITS.PEN);
    return (TRUE);

}
