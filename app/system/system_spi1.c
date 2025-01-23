/*
 * File  : tlc5927.c
 * Author: Marwan Khoury
 */

#include "app.h"
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#define SPI_MODULE  SPI1

#define SPICON      XCAT(XCAT(SPI_MODULE, ),CON)
#define SPIBUF      XCAT(XCAT(SPI_MODULE, ),BUF)
#define SPIBRG      XCAT(XCAT(SPI_MODULE, ),BRG)
#define SPISTAT     XCAT(XCAT(SPI_MODULE, ),STAT)
#define SPISTATBITS XCAT(XCAT(SPI_MODULE, ),STATbits)

#define _SPI_WAIT_TX while(!SPI1STATbits.SPITBE);
#define _SPI_WAIT    while(!SPI1STATbits.SPIRBF);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_spi1_init() {
    SPICON = 0x00U;
    SPIBUF = 0x00U;
    SPIBRG = 15U; // for 10MHZ
    SPISTAT = B32(0b00000000, 0b00000000, 0b00000000, 0b00000000);
    SPICON = B32(0b00000000, 0b00000000, 0b10000001, 0b00100000);
    //    CLK_CLR;
    //    SDO_CLR;
//    LE1_CLR;
//    OE1_CLR;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
static uint8_t sys_spi1_put(uint8_t data) {
    uint8_t result;
    while (!SPISTATBITS.SPITBE);
    SPIBUF = data;
    while (!SPISTATBITS.SPIRBF);
    result = (uint8_t) SPIBUF;
    return result;
}

//static uint8_t sys_spi_put(uint8_t data) {
//    uint8_t ix;
//    uint8_t dat1;
//
//    dat1 = data;
//    for (ix = 0; ix < 8; ix++) {
//        if ((dat1 & 0x80)== 0x80) {
//            SDO_SET;
//        } else {
//            SDO_CLR;
//        }
//        dat1 <<= 1;
//        CLK_SET;
//        sys_us_delay(1ul);
//        CLK_CLR;
//    }
//    return 0;
//}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
//void sys_spi1_send(uint8_t *buf, uint8_t cnt) {
//    uint8_t indx;
//    indx = 0;
//    while (indx < cnt) {
//        sys_spi1_put(*buf);
//        buf++;
//        indx++;
//    }
//    LE1_SET;
//    sys_us_delay(1ul);
//    LE1_CLR;
//}

