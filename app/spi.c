/*  ELAK d.o.o.
 *  By: Marwan Khoury
 *  spi.c
 */
#include <app.h>

#define _SPI_WAIT_TX while(!SPI2STATbits.SPITBE);
#define _SPI_WAIT    while(!SPI2STATbits.SPIRBF);

static UINT spi_put(UINT data) {
    _SPI_WAIT_TX
    SPI2BUF = (UINT8) data;
    _SPI_WAIT;
    return (UINT) SPI2BUF;
}

void spi_open_lcd(void) {
    SPI2CON = 0x00U;
    SPI2BUF = 0x00U;
    SPI2BRG = 18U; // for 10MHZ
    SPI2STAT = B32(0b00000000, 0b00000000, 0b00000000, 0b00000000);
    SPI2CON = B32(0b00000000, 0b00000000, 0b10000000, 0b01100000);
}





void spi_open_impl(void) {
    SPI2CON = 0x00U;
    SPI2BUF = 0x00U;
    SPI2BRG = 9U; // for 4MHZ
    SPI2STAT = B32(0b00000000, 0b00000000, 0b00000000, 0b00000000);
    SPI2CON = B32(0b00000000, 0b00000000, 0b10000001, 0b00100000);
}
/*
void spi_put_impl(UINT a, UINT b) {
    spi_open_impl();
    _SPI_WAIT_TX;
    SPI2BUF = a;
    _SPI_WAIT;
    clock_us_delay(4);
    _SPI_WAIT_TX;
    SPI2BUF = b;
    _SPI_WAIT;
    clock_us_delay(4);
    IMPL_CS_SET;
    clock_us_delay(4);
    IMPL_CS_CLR;
    return;
}
*/
void spi_open_zvono(void) {
    SPI2CON = 0x00U;
    SPI2BUF = 0x00U;
    SPI2BRG = 9U; // for 4MHZ
    SPI2STAT = B32(0b00000000, 0b00000000, 0b00000000, 0b00000000);
    SPI2CON = B32(0b00000000, 0b00000000, 0b10000010, 0b00100000);
} 

void spi_put_zvono(UINT data) {
    spi_open_zvono();
    BEEP_SET; //RLY_CS_CLR;
    
    _SPI_WAIT_TX;
    SPI2BUF = data;
    _SPI_WAIT;
    BEEP_CLR; //RLY_CS_SET;
    return;
}


