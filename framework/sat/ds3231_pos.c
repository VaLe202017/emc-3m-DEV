/* (By) Marwan Khoury
 *  ds3231.c
 */

#include "app.h"

/**  RTC register index addresses */
#define DS3231_REG_SECOND      0x00U
#define DS3231_REG_MINUTE      0x01U
#define DS3231_REG_HOUR        0x02U
#define DS3231_REG_DAY         0x03U
#define DS3231_REG_DATE        0x04U
#define DS3231_REG_MONTH       0x05U
#define DS3231_REG_YEAR        0x06U
#define DS3231_REG_AL1_SECOND  0x07U
#define DS3231_REG_AL1_MIN     0x08U
#define DS3231_REG_AL1_HR      0x09U
#define DS3231_REG_AL1_DAY     0x0AU
#define DS3231_REG_AL2_MIN     0x0BU
#define DS3231_REG_AL2_HR      0x0CU
#define DS3231_REG_AL2_DAY     0x0DU
#define DS3231_REG_CONTROL     0x0EU
#define DS3231_REG_STATUS      0x0FU

#define DS3231_REG_AGING       0x10U
#define DS3231_REG_TMP_MSB     0x11U
#define DS3231_REG_TMP_LSB     0x12U

/** RTC control register bits */
#define DS3231_CTL_A1IE       0x01U	/* Alarm 1 interrupt enable     */
#define DS3231_CTL_A2IE       0x02U	/* Alarm 2 interrupt enable     */
#define DS3231_CTL_INTCN      0x04U	/* Interrupt control            */
#define DS3231_CTL_RS1        0x08U	/* Rate select 1                */
#define DS3231_CTL_RS2        0x10U	/* Rate select 2                */
#define DS3231_CTL_CONV       0x20U	/* Convert Temprature           */
#define DS3231_CTL_BBSQW      0x40U	/* Battery Square wave enable   */
#define DS3231_CTL_EOSC       0x80U	/* Disable Oscillator           */

/** RTC status register bits */
#define DS3231_STATUS_A1F     0x01U		/* Alarm 1 flag                 */
#define DS3231_STATUS_A2F     0x02U		/* Alarm 2 flag                 */
#define DS3231_EN32KHZ        0x04U		/* Enable 32Khz                 */
#define DS3231_STATUS_OSF     0x80U		/* Oscillator stop flag         */

/** Address of DS3231 RTC */
#define DS3231_ADDRESS        0xD0U		/* 7bit addresss shifted  to W  */
#define DS3231_BUFSIZE        7U

static uint8_t DS32Reg[DS3231_BUFSIZE];

/*----------------------------------------------------------------------------*/
static uint8_t bcd2bin(uint8_t bcd) {
    static uint8_t x;
    x = (bcd >> 4U);
    x &= 0x0F;
    x *= 10U;
    x += (uint8_t) (bcd & 0x0FU);
    return x;
}

/*----------------------------------------------------------------------------*/
static uint8_t bin2bcd(uint8_t bin) {
    static uint8_t x;
    x = (uint8_t) (bin / 10U);
    x = x << 4U;
    x &= 0xF0;
    x |= (bin % 10U);
    return x;
}

/*----------------------------------------------------------------------------*/
/* DS3232 funkcije */
/*----------------------------------------------------------------------------*/
#define DS3232_SRAM_00H        0x14U
#define DS3232_SRAM_I3H        DS3232_SRAM_00H
#define DS3232_SRAM_I4H        DS3232_SRAM_I3H +4U
#define DS3232_SRAM_I5H        DS3232_SRAM_I4H +4U
#define DS3232_SRAM_I6H        DS3232_SRAM_I5H +4U
#define DS3232_SRAM_I7H        DS3232_SRAM_I6H +4U
#define DS3232_SRAM_I8H        DS3232_SRAM_I7H +4U

/*----------------------------------------------------------------------------*/
void ds_getPos_1(void) {
    UINT8 minuta, sat, sec;
    sys_iic2_read(DS3231_ADDRESS, DS3231_REG_AL1_SECOND, DS32Reg, 4);
    sec = bcd2bin(DS32Reg[0] & 0x7FU);
    minuta = bcd2bin(DS32Reg[1] & 0x7FU);
    sat = bcd2bin(DS32Reg[2] & 0x3FU);
    implVar[1].polarity = bcd2bin(DS32Reg[3] & 0x0FU);
    implVar[1].ticks = (sat * 3600UL) + (minuta * 60) + sec;
}

void ds_setPos_1(void) {
    UINT8 hours, miniutes, seconds, polarity;
    UINT ticks;
    ticks = implVar[1].ticks;
    hours = ticks / 3600UL;
    miniutes = (ticks - (hours * 3600UL)) / 60U;
    seconds = ticks - ((hours * 3600UL) + (miniutes * 60U));
    DS32Reg[0] = bin2bcd(seconds) & 0x7FU;
    DS32Reg[1] = bin2bcd(miniutes) & 0x7FU; //minuits
    DS32Reg[2] = bin2bcd(hours) & 0x3F; //hours
    polarity = (UINT8) implVar[1].polarity;
    DS32Reg[3] = bin2bcd(polarity) & 0x0FU; // polarity
    sys_iic2_write(DS3231_ADDRESS, DS3231_REG_AL1_SECOND, DS32Reg, 4);
}

/*----------------------------------------------------------------------------*/
void ds_getPos_2(void) {
    UINT8 minuta, sat, sec;
    sys_iic2_read(DS3231_ADDRESS, DS3231_REG_AL2_MIN, DS32Reg, 3);
    sec = 0;
    minuta = bcd2bin(DS32Reg[0] & 0x7FU);
    sat = bcd2bin(DS32Reg[1] & 0x3FU);
    implVar[2].polarity = bcd2bin(DS32Reg[2] & 0x0FU);
    implVar[2].ticks = (sat * 3600UL) + (minuta * 60) + sec;
}

void ds_setPos_2(void) {
    UINT8 hours, miniutes, polarity;
    UINT ticks;
    ticks = implVar[2].ticks;
    hours = ticks / 3600UL;
    miniutes = (ticks - (hours * 3600UL)) / 60U;
    DS32Reg[0] = bin2bcd(miniutes) & 0x7FU; //minuits
    DS32Reg[1] = bin2bcd(hours) & 0x3F; //hours
    polarity = (UINT8) implVar[2].polarity;
    DS32Reg[2] = bin2bcd(polarity) & 0x0FU; // polarity
    sys_iic2_write(DS3231_ADDRESS, DS3231_REG_AL2_MIN, DS32Reg, 3);
}

/*----------------------------------------------------------------------------*/