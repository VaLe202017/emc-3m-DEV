/*  (by) Marwan Khoury
 *  sat.h
 */

#ifndef __SAT_H_
#define	__SAT_H_

/*----------------------------------------------------------------------------*/
typedef struct {
    uint32_t tm_msec; /* milliseconds [0,999]                 */
    uint32_t tm_sec; /* seconds after the minute - [0,59]    */
    uint32_t tm_min; /* minutes after the hour - [0,59]      */
    uint32_t tm_hour; /* hours since midnight - [0,23]        */
    uint32_t tm_mday; /* day of the month - [1,31]            */
    uint32_t tm_mon; /* months since January - [1,12]        */
    uint32_t tm_year; /* years since 1900                     */
    uint32_t tm_wday; /* days since Sunday - [1,7]            */
    uint32_t tm_yday; /* days since January 1 - [0,365]       */
    uint32_t tm_isdst; /* daylight savings time flag- NOT USED */
} tm_t;

/*-----------------------------------------------------------------------------*/
typedef enum {
    PONEDJELJAK = 1,
    UTORAK = 2,
    SRIJEDA = 3,
    CETVRTAK = 4,
    PETAK = 5,
    SUBOTA = 6,
    NEDJELJA = 7
} danutjednu_t;

typedef enum {
    SIJECANJ = 1,
    VELJACA = 2,
    OZUJAK = 3,
    TRAVANJ = 4,
    SVIBANJ = 5,
    LIPANJ = 6,
    SRPANJ = 7,
    KOLOVOZ = 8,
    RUJAN = 9,
    LISTOPAD = 10,
    STUDENI = 11,
    PROSINAC = 12
} mjesec_t;

typedef struct {
    uint8_t dan;
    mjesec_t mjesec;
    danutjednu_t dan_u_tjednu;
    uint8_t godina; // od 2000 dalje
    uint8_t sat;
    uint8_t minuta;
    uint8_t sekunda;
} datumvrijeme_t;
/*-----------------------------------------------------------------------------*/
APP_EXT datumvrijeme_t gZadSinkroMAN;
APP_EXT datumvrijeme_t gZadSinkroGPS;
APP_EXT datumvrijeme_t gZadSinkroNTP;
APP_EXT datumvrijeme_t gprmcTime;

/*-----------------------------------------------------------------------------*/
/* ds3231.c */
void ds3231_1hz_enable();
void ds3231_time_get(datumvrijeme_t *time);
void ds3231_time_set(datumvrijeme_t *time);
void ds3231_time_setMAN(datumvrijeme_t *time, int16_t timeZone, uint16_t DST);
void ds3231_time_setGPS(datumvrijeme_t *time);
void ds3231_time_setNTP(tm_t *time);

/* gprmc.c */
bool gprmc_gps_checkBuffer(cmndBuf_t * ser);
uint8_t gprmc_gps_isValid();

/* sat.c */
void ds_setPos_3();
void ds_getPos_3();
void ds_setPos_4();
void ds_getPos_4();

void sat_datetime_init(datumvrijeme_t *src);
void sat_set_danutjednu(datumvrijeme_t *src);
void sat_adjust_timezone(datumvrijeme_t *src, int8_t timezone);
void sat_copy_datum_vrijeme(datumvrijeme_t *src, datumvrijeme_t* dest);
void sat_copy_datum(datumvrijeme_t *src, datumvrijeme_t* dest);
void sat_copy_vrijeme(datumvrijeme_t *src, datumvrijeme_t* dest);
void sat_init_datum_vrijeme(datumvrijeme_t* dest);

uint8_t sat_maxbrojdan(datumvrijeme_t *time);
uint8_t sat_is_daylightsaving_time(datumvrijeme_t *time);
void sat_inc_sec(datumvrijeme_t *time);
void sat_inc_sat(datumvrijeme_t *time);
void sat_dec_sat(datumvrijeme_t *time);
void sat_toUTC(datumvrijeme_t * dt, int16_t timeZone, uint16_t DST);
void sat_toLocal(datumvrijeme_t * dt, int16_t timeZone, uint16_t DST);

/* sat_conv.c */
void sat_conv_to_TmTime(datumvrijeme_t *src, tm_t* dest);
void sat_conv_TmTime(uint32_t sec, uint32_t frac, tm_t *tm);
uint32_t sat_conv_MkTime(tm_t *t);

#endif	/* __SAT_H_ */

