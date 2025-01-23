/*  (By) Marwan Khoury
 *  cgi.c
 */

#include "app.h"

/*----------------------------------------------------------------------------
void cgi_date(BYTE *prt) {
    static char str[3];
    static UINT indx;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    vrijeme.godina = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    vrijeme.mjesec = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    vrijeme.dan = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    vrijeme.sat = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    vrijeme.minuta = atol(str);
    prt++;

    vrijeme.sekunda = 0U;

    INT_LOCK;
    sat_set_danutjednu(&vrijeme);
    ds3231_time_setMAN(&vrijeme, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
    sys_int4_force(); //Sig++;// To update time on clock.
    INT_UNLOCK;
}
*/


