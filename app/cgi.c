/*  ELAK d.o.o.
 *  By: Marwan
 *  cgi.c
 */

#include "app.h"

/*----------------------------------------------------------------------------*/
void cgi_upr(BYTE *prt) {

    static UINT indx;
    static char str[10];
    static UINT r[7];

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    r[1] = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    r[2] = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    r[3] = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    r[4] = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    r[5] = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    r[6] = atol(str);



    AppConfig.relay1IsEnabled = r[1];
    AppConfig.relay2IsEnabled = r[2];



    if (AppConfig.relay1IsEnabled == 0) {
        ZVN_clr(ZVONO1);
        gSignal1 = -1;
    }
    if (AppConfig.relay2IsEnabled == 0) {
        ZVN_clr(ZVONO2);
        gSignal2 = -1;
    }
    APP_SaveSettings();


}

/*----------------------------------------------------------------------------*/
void cgi_ien(BYTE *prt) {

    UINT b;
    b = 0;
    switch (*prt) {
        case '1':
            b = 1;
            break;
        case '2':
            b = 2;
            break;
        case '3':
            b = 3;
            break;
        case '4':
            b = 4;
            break;
        case '5':
            b = 5;
            break;
        case '6':
            b = 6;
            break;
        case '7':
            b = 7;
            break;
        case '8':
            b = 8;
            break;
        default:
            break;
    }
    if (b == 0) {
        return;
    }
    prt++;
    BYTE b1 = *prt;
    switch (b1) {
        case '0':
            AppConfig.implSet[b].isEnabled = 0;
            APP_SaveSettings();
            break;
        case '1':
            AppConfig.implSet[b].isEnabled = 1;
            APP_SaveSettings();
            break;
        default:
            break;
    }

}

/*----------------------------------------------------------------------------*/
void cgi_imp(BYTE *prt) {

    static char str[10];
    static UINT indx;
    static UINT number;
    static UINT daylight;
    static UINT timezone;
    static UINT mechMode;
    static UINT ticks;
    static UINT impulse;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    number = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    daylight = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    timezone = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    mechMode = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    ticks = atol(str);

    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    impulse = atol(str);
    switch (number) {
        case 1:
            AppConfig.implSet[1].dayLight = daylight;
            AppConfig.implSet[1].timeZone = (INT) timezone - 12;
            AppConfig.implSet[1].implMode = mechMode;
            AppConfig.implSet[1].implLength = impulse;
            implVar[1].ticks = ticks;
            ds_setPos_1();
            APP_SaveSettings();
            CLOCK_UPDATE_FROM_DS;
            break;
        case 2:
            AppConfig.implSet[2].dayLight = daylight;
            AppConfig.implSet[2].timeZone = (INT) timezone - 12;
            AppConfig.implSet[2].implMode = 1;
            AppConfig.implSet[2].implLength = impulse;
            implVar[2].ticks = ticks;
            ds_setPos_2();
            APP_SaveSettings();
            CLOCK_UPDATE_FROM_DS;
            break;
        default:
            break;
    }
}

/*----------------------------------------------------------------------------*/
void cgi_date(BYTE *prt) {
    static char str[3];
    static UINT indx;
    static int16_t tzone;


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
    } while (*prt != ',');
    str[indx] = '\0';
    vrijeme.minuta = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    AppConfig.ClockDayLightSaving = atol(str);
    prt++;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    tzone = atol(str);
    if (tzone > 20) {
        tzone = -1 * (tzone - 20);
    }
    AppConfig.ClockTimeZone = tzone;
    prt++;

    vrijeme.sekunda = 0U;

    INT_LOCK;
    sat_set_danutjednu(&vrijeme);
    ds3231_time_setMAN(&vrijeme, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
    //  CLOCK_UPDATE_FROM_DS;
    ds3231_time_get(&vrijeme);
    sat_toLocal(&vrijeme, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
    INT_UNLOCK;
}

/*----------------------------------------------------------------------------*/
void cgi_prgm_line(BYTE *prt) {
    static char str[5];
    static UINT indx;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    gPRGMLine = atol(str);
    prgm_check_line_limit();
}

/*----------------------------------------------------------------------------*/
void cgi_prgm_p(BYTE *prt) {
    static char str[5];
    static UINT indx;
    static BYTE b[5];
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    gPRGMLine = atol(str);
    prgm_check_line_limit();
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[0] = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[1] = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[2] = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[3] = atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    b[4] = atol(str);
    prt++;

    UINT line = gPRGMLine * 5;
    gPRGM[line] = b[0];
    gPRGM[line + 1] = b[1];
    gPRGM[line + 2] = b[2];
    gPRGM[line + 3] = b[3];
    gPRGM[line + 4] = b[4];

}

/*----------------------------------------------------------------------------*/
void cgi_prgm_r(BYTE *prt) {
    static char str[10];
    static UINT indx;
    static BYTE b[5];
    static UINT32 line;
    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    gPRGMLine = atol(str);
    prgm_check_line_limit();
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[0] = (BYTE) atol(str);
    b[0] |= 0xF0;
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[1] = (BYTE) atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[2] = (BYTE) atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != ',');
    str[indx] = '\0';
    b[3] = (BYTE) atol(str);
    prt++;

    indx = 0;
    do {
        str[indx] = *prt++;
        indx++;
    } while (*prt != '\0');
    str[indx] = '\0';
    b[4] = (BYTE) atol(str);
    prt++;

    line = gPRGMLine * 5;
    gPRGM[line] = b[0];
    gPRGM[line + 1] = b[1];
    gPRGM[line + 2] = b[2];
    gPRGM[line + 3] = b[3];
    gPRGM[line + 4] = b[4];
}

/*----------------------------------------------------------------------------*/