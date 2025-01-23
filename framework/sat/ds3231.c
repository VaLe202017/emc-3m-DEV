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
void ds3231_1hz_enable() {
    DS32Reg[0] = 0x00;
    sys_iic2_write(DS3231_ADDRESS, DS3231_REG_CONTROL, DS32Reg, 1);
}

/*----------------------------------------------------------------------------*/
void ds3231_time_get(datumvrijeme_t *time) {
    sys_iic2_read(DS3231_ADDRESS, DS3231_REG_SECOND, DS32Reg, 7);
    time->sekunda = bcd2bin(DS32Reg[DS3231_REG_SECOND] & 0x7FU);
    time->minuta = bcd2bin(DS32Reg[DS3231_REG_MINUTE] & 0x7FU);
    time->dan_u_tjednu = bcd2bin(DS32Reg[DS3231_REG_DAY] & 0x07U);
    time->sat = bcd2bin(DS32Reg[DS3231_REG_HOUR] & 0x3FU);
    time->dan = bcd2bin(DS32Reg[DS3231_REG_DATE] & 0x3FU);
    time->mjesec = bcd2bin(DS32Reg[DS3231_REG_MONTH] & 0x1FU);
    time->godina = bcd2bin(DS32Reg[DS3231_REG_YEAR]);
}

/*----------------------------------------------------------------------------*/
void ds3231_time_set(datumvrijeme_t *time) {
    static uint8_t sat;
    sat = time->sekunda;
    DS32Reg[DS3231_REG_SECOND] = bin2bcd(sat) & 0x7FU;
    sat = time->minuta;
    DS32Reg[DS3231_REG_MINUTE] = bin2bcd(sat) & 0x7FU;
    sat = time->sat;
    DS32Reg[DS3231_REG_HOUR] = bin2bcd(sat) & 0x3F;
    sat = time->dan;
    DS32Reg[DS3231_REG_DATE] = bin2bcd(sat) & 0x3FU;
    sat = time->dan_u_tjednu;
    DS32Reg[DS3231_REG_DAY] = bin2bcd(sat) & 0x07U;
    sat = time->mjesec;
    DS32Reg[DS3231_REG_MONTH] = bin2bcd(sat) & 0x1FU;
    sat = time->godina;
    DS32Reg[DS3231_REG_YEAR] = bin2bcd(sat);
    sys_iic2_write(DS3231_ADDRESS, DS3231_REG_SECOND, DS32Reg, (DS3231_REG_YEAR + 1U));
}

/*----------------------------------------------------------------------------*/
void ds3231_time_setMAN(datumvrijeme_t *time, int16_t timeZone, uint16_t DST) {
    gZadSinkroMAN.sekunda = time->sekunda;
    gZadSinkroMAN.minuta = time->minuta;
    gZadSinkroMAN.sat = time->sat;
    gZadSinkroMAN.dan = time->dan;
    gZadSinkroMAN.dan_u_tjednu = time->dan_u_tjednu;
    gZadSinkroMAN.mjesec = time->mjesec;
    gZadSinkroMAN.godina = time->godina;
    sat_toUTC(time, timeZone, DST);
    ds3231_time_set(time);
}

/*----------------------------------------------------------------------------*/
void ds3231_time_setGPS(datumvrijeme_t * time) {
    ds3231_time_set(time);
    gZadSinkroGPS.sekunda = time->sekunda;
    gZadSinkroGPS.minuta = time->minuta;
    gZadSinkroGPS.sat = time->sat;
    gZadSinkroGPS.dan = time->dan;
    gZadSinkroGPS.dan_u_tjednu = time->dan_u_tjednu;
    gZadSinkroGPS.mjesec = time->mjesec;
    gZadSinkroGPS.godina = time->godina;
    sat_toLocal(&gZadSinkroGPS, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
}

/*----------------------------------------------------------------------------*/
void ds3231_time_setNTP(tm_t * time) {
    gZadSinkroNTP.sekunda = time->tm_sec;
    gZadSinkroNTP.minuta = time->tm_min;
    gZadSinkroNTP.sat = time->tm_hour;
    gZadSinkroNTP.dan = time->tm_mday;
    gZadSinkroNTP.dan_u_tjednu = time->tm_wday;
    gZadSinkroNTP.mjesec = time->tm_mon;
    gZadSinkroNTP.godina = time->tm_year;
    ds3231_time_set(&gZadSinkroNTP);
    sat_toLocal(&gZadSinkroNTP, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
}

/*----------------------------------------------------------------------------*/
