/* (By) Marwan Khoury
 *  gprmc.c 
 */

//$GPRMC,123519.000,A,4807.038,N,01131.000,E,022.4,084.4,230394,003.1,W*6A
//$GPRMC,123519.000,A,4807.038,N,01131.000,E,022.4,084.4,230394,003.1,W*6A
//$GPRMC,073834.000,A,4521.6733,N,01421.8272,E,0.00,,250213,,,A*76
//$GPRMC,111658.000,A,4521.6708,N,01421.8037,E,0.00,,250213,,,A*7C
//$GPRMC,092751.000,A,5321.6802,N,00630.3371,W,0.06,31.66,280511,,,A*45
//$GPRMC,040302.663,A,3939.7,N,10506.6,W,0.27,358.86,200804,,*1A
//$GPRMC,064951.000,A,2307.1256,N,12016.4438,E,0.03,165.48,260406,,,A*55
//$GPRMC,084524.000,A,4521.6687,N,01421.8262,E,0.07,308.28,260313,,,D*62

#include "app.h"

static uint8_t IsValid = 'V';
static uint32_t delayms;
static uint8_t satcheck = 0x00;

/*----------------------------------------------------------------------------*/
static uint8_t TCheck(CHAR8 * buf6) {
    // Checks that the buffer contains a valid time in ASCII
    // Returns 1 if valid, 0 if not
    static uint8_t h, m, s;

    gprmcTime.sat = 0;
    gprmcTime.minuta = 0;
    gprmcTime.sekunda = 0;

    if ((buf6[0] > '9') || (buf6[0] < '0')) return 0;
    if ((buf6[1] > '9') || (buf6[1] < '0')) return 0;
    if ((buf6[2] > '9') || (buf6[2] < '0')) return 0;
    if ((buf6[3] > '9') || (buf6[3] < '0')) return 0;
    if ((buf6[4] > '9') || (buf6[4] < '0')) return 0;
    if ((buf6[5] > '9') || (buf6[5] < '0')) return 0;
    //
    h = (buf6[1] & 15) + (10 * (buf6[0] & 15));
    m = (buf6[3] & 15) + (10 * (buf6[2] & 15));
    s = (buf6[5] & 15) + (10 * (buf6[4] & 15));
    if (h > 23) return 0;
    if (m > 59) return 0;
    if (s > 59) return 0;

    gprmcTime.sat = h;
    gprmcTime.minuta = m;
    gprmcTime.sekunda = s;
    return 1;
}

/*----------------------------------------------------------------------------*/
// Calculates the number of days in the given month (and year)
const uint8_t DIM[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

static uint8_t DaysInMonth(uint8_t m, uint8_t y) {
    static uint8_t d;
    d = DIM[m];
    if (((y & 3) == 0) && (m == 2)) d++;
    return d;
}

/*----------------------------------------------------------------------------*/
static uint8_t DCheck(CHAR8 * buf6) {
    static uint8_t d, m, y;
    //
    gprmcTime.dan = 0;
    gprmcTime.godina = 0;
    gprmcTime.mjesec = 0;

    if ((buf6[0] > '9') || (buf6[0] < '0')) return 0;
    if ((buf6[1] > '9') || (buf6[1] < '0')) return 0;
    if ((buf6[2] > '9') || (buf6[2] < '0')) return 0;
    if ((buf6[3] > '9') || (buf6[3] < '0')) return 0;
    if ((buf6[4] > '9') || (buf6[4] < '0')) return 0;
    if ((buf6[5] > '9') || (buf6[5] < '0')) return 0;
    //
    d = (buf6[1] & 15) + (10 * (buf6[0] & 15));
    m = (buf6[3] & 15) + (10 * (buf6[2] & 15));
    y = (buf6[5] & 15) + (10 * (buf6[4] & 15));
    if ((m > 12) || (m < 1)) return 0;
    if (d < 1) return 0;
    if (d > DaysInMonth(m, y)) return 0;

    gprmcTime.dan = d;
    gprmcTime.godina = y;
    gprmcTime.mjesec = m;
    return 1;
}

/*----------------------------------------------------------------------------*/
static uint8_t DFind(CHAR8 * buf) {
    static uint8_t indx;
    static uint8_t comaIndx;
    static bool flag;
    comaIndx = 0U;
    indx = 0U;
    flag = true;

    do {
        if (buf[indx] == ',') {
            comaIndx++;
        }
        indx++;
        if (comaIndx == 9U) {
            flag = false;
        }
        if ((buf[indx] == '\0') || (indx >= GPS_RXBUF_SIZE)) {
            flag = false;
            indx = 0U;
        }
    } while (flag == true);
    return indx;

}

/*----------------------------------------------------------------------------*/
static bool gprmc_scan_datetime(CHAR8 buf[]) {
    static uint8_t indx;
    if (TCheck(&buf[7]) == 1) {
        indx = DFind(&buf[0]);
        if (indx != 0) {
            if (DCheck(&buf[indx]) == 1) {
                sat_set_danutjednu(&gprmcTime);
                delayms = ((buf[14] - '0')*100U)+ ((buf[15] - '0')*10U)+(buf[16] - '0');
                delayms = 1000ul - delayms;
                if (delayms < 500ul) {
                    sat_inc_sec(&gprmcTime);
                    delayms = 0;
                }
                if (gprmcTime.sat != satcheck){
                    satcheck = gprmcTime.sat;
                    ds3231_time_setGPS(&gprmcTime);
                    sys_int4_force(); //Sig++;// To update time on clock.
                    return true;
                }
            }
        }
    }
    return false;
}

/*----------------------------------------------------------------------------*/
bool gprmc_gps_checkBuffer(cmndBuf_t * ser) {
    bool gpsTimeOK;
    gpsTimeOK = false;
    if (0U == strncmp((const char*) "$GPRMC,", (const char*) &ser->data[0], 7)) {
        if (ser->data[18] == 'A') {
            gpsTimeOK = gprmc_scan_datetime((CHAR8*) & ser->data[0]);
            if (gpsTimeOK == true) {
                if (ser->data[18] == 'A') {
                    gpsTimeOK = true;
                    IsValid = 'A';
                } else {
                    gpsTimeOK = false;
                    IsValid = 'V';
                }
            }
        } else {
            IsValid = 'V';
        }
    }
    return gpsTimeOK;
}

/*----------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/

/*
$GPRMC,101011.000,A,llll.ll,a,yyyyy.yy,a,x.x,x.x,010112,x.x,a*hh
eg4. $GPRMC,hhmmss.ss,A,llll.ll,a,yyyyy.yy,a,x.x,x.x,ddmmyy,x.x,a*hh
1    = UTC of position fix
2    = Data status (V=navigation receiver warning)
3    = Latitude of fix
4    = N or S
5    = Longitude of fix
6    = E or W
7    = Speed over ground in knots
8    = Track made good in degrees True
9    = UT date
10   = Magnetic variation degrees (Easterly var. subtracts from true course)
11   = E or W
12   = Checksum
 */

uint8_t gprmc_gps_isValid() {
    return IsValid;
}