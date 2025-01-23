/*  ELAK d.o.o.
 *  By: Marwan
 *  SPI.h
 */

#ifndef __SPI_H__
#define	__SPI_H__

/*-----------------------------------------------------------------------------*/
void spi_open_lcd(void);
void spi_put_data(UINT data);
void spi_put_command(UINT data);

//void spi_open_impl(void);
void spi_put_impl(UINT a, UINT b);

void spi_put_zvono(UINT data);




#endif	/* __SPI_H__ */

