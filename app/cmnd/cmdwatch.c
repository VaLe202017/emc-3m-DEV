/*  (C) Marwan Khoury
 *   cmdline.h
 */

#include "app.h"
/*----------------------------------------------------------------------------*/
#define TXT_PARAM_NUMVAL       "%02X00[%s= %d]\n"
#define TXT_PARAM_DFLT         "%02X00[Defaults Loaded]\n"
#define TXT_PARAM_TEMPER       "%02X00[TC= %.3f]\n"
#define TXT_PARAM_TIME         "%02X00[TM= %2d.%2d.%4d %2d:%2d:%2d]\n"
#define TXT_PARAM_HEX          "%02X00[ID= %X]\n"
#define TXT_ERROR              "%02X00[ERROR]\n"
#define TXT_VERSION            "%02X00[%s ver.%d]\n"
#define TXT_HELP               "%02X00[%s=%d ? %s]\n"
#define TXT_HELP1              "%02X00[%s ? %s]\n"
#define TXT_OK                 "%02X00[OK]\n"


static volatile uint8_t gpsWIx;
static volatile uint8_t ORGQIx;
static cmndBuf_t gpsBuf[GPS_QUEUE_SIZE];
static uint8_t txBuf[GPS_RXBUF_SIZE];
volatile uint8_t cmdBufAnswer[GPS_RXBUF_SIZE];
volatile bool cmdAnswerValid;
static uint32_t cmndClockTime;
datumvrijeme_t cmdVrijeme;


static int8_t err;
static uint16_t indx;
static uint16_t len;

/*----------------------------------------------------------------------------*/
static const sCmnds_t cmnds[] = {
    // ID [=] || [_] <LF>
    // ID  MIN MAX                     VALUE                // help

    {"dt", 0, 15, false, (int16_t*) & AppConfig.TimeOfTime, "Duration of time;0/15"},
    {"dd", 0, 15, false, (int16_t*) & AppConfig.TimeOfDate, "Duration of date;0/15"},
    {"dc", 0, 15, false, (int16_t*) & AppConfig.TimeOfTemperature, "Duration of temperature;0/15"},
    
    {"in", 0, 10, false, (int16_t*) & AppConfig.ClockIntensity, "Intensity of display;0/10"},
    {"dL", 0, 1, false, (int16_t*) & AppConfig.ClockDayLightSaving, "DayLight Saving;0=No,1=Yes"},
    {"t2", -12, 14, false, (int16_t*) & AppConfig.ClockTimeZone, "Time zone;-12/14"},
    {"tF", 0, 1, false, (int16_t*) & AppConfig.ClockTimeFormat, "Time format;0=12H,1=24H"},

    {"TO", 0, 1, false, (int16_t*) & gTSStatic, "Temperature override;0=No,1=Yes"},
    {"TV", -55, 85, false, (int16_t*) & gTSStaticVal, "Temperature static value"},
    {"HO", 0, 1, false, (int16_t*) & gHSStatic, "Humidity override;0=No,1=Yes"},
    {"HV", 0, 99, false, (int16_t*) & gHSStaticVal, "Humidity static value"},
    
    {"BC", 0, 1, false, (int16_t*) & AppConfig.BeepEnabled, "Beep for Clock;0=No,1=Yes"},
    {"BT", 0, 1, false, (int16_t*) & AppConfig.BeepTimerEnabled, "Beep for Timer;0=No,1=Yes"},

    {"ID", 0, 0, false, 0, "Get device ID 01/FF"},
    {"GT", 1, 1, false, 0, "Get time"},
    {"GC", 2, 2, false, 0, "Get temperature"},
    {"GY", 5, 5, false, 0, "Get display Type"},
    {"dflt", 3, 3, false, 0, "Factory reset, id kept the same"},
    {"reset", 4, 4, false, 0, "Reset Display"},

    {"xon", 7, 7, false, 0, "Timer ON"},
    {"xoff", 8, 8, false, 0, "Timer OFF"},
    {"xstr", 9, 9, false, 0, "Timer STR ;C0:00:10:B/LF"},
    {"?", 6, 6, false, 0, "commnad list"},
    //{"ca1", 0, 0, true, &INA1}, example commented with ADC??
    { "\n", 0, 0, false, 0, "\n"}
};

#define TXT_GPRMC "$GPRMC,%02d%02d%02d.000,A,4521.6687,N,01421.8262,E,0.07,308.28,%02d%02d%02d,,,D*62\n"

static void cmndmaster_send_gprmc(uint8_t* ptrTx, datumvrijeme_t* vri) {
    
    sprintf((char*) (ptrTx), TXT_GPRMC, vri->sat, vri->minuta, vri->sekunda,
            vri->dan, vri->mjesec, vri->godina);
}

/*----------------------------------------------------------------------------*/
static void cmnd_ID(char_t *ptrTx, char_t* ptrRx) {
    sprintf((char*) (ptrTx), TXT_PARAM_HEX, AppConfig.ID, AppConfig.ID);
}

/*----------------------------------------------------------------------------*/
static void cmnd_time(char_t *ptrTx, char_t* ptrRx) {
    sprintf((char*) (ptrTx), TXT_PARAM_TIME, AppConfig.ID,
            vrijeme.dan, vrijeme.mjesec, vrijeme.godina + 2000,
            vrijeme.sat, vrijeme.minuta, vrijeme.sekunda);
}

/*----------------------------------------------------------------------------*/
static void cmnd_temperature(char_t *ptrTx, char_t* ptrRx) {
    sprintf((char*) (ptrTx), TXT_PARAM_TEMPER, AppConfig.ID, (float) gTSAvgVal);
}

/*----------------------------------------------------------------------------*/
static void cmnd_loadDefault(char_t *ptrTx, char_t *ptrRx) {
    app_defaults_load();
    app_settings_save();
    sprintf((char*) (ptrTx), TXT_PARAM_DFLT, AppConfig.ID);
}

/*----------------------------------------------------------------------------*/
static void cmnd_reset(char_t *ptrTx, char_t* ptrRx) {
    (void) (ptrTx);
    INT_LOCK;
    sys_RESET;
}

/*----------------------------------------------------------------------------*/
static void cmnd_version(char_t *ptrTx, char_t* ptrRx) {
    sprintf((char*) (ptrTx), TXT_VERSION, AppConfig.ID, APP_TYPE, APP_VERSION);
}

static char * str_cat(char * dest, const char * src) {
    char *tmp = dest;
    while (*dest) dest++;
    while ((*dest++ = *src++) != '\0');
    return tmp;
}

/*----------------------------------------------------------------------------*/
static void cmnd_commands(char_t *ptrTx, char_t* ptrRx) {
    static sCmnds_t *ptr;

    ptr = (sCmnds_t*) & cmnds[0];
    sprintf((char*) (ptrTx), "%02X00?[", AppConfig.ID);
    while (ptr->cmnd[0] != '\n') {
        str_cat((char*) ptrTx, (char*) &ptr->cmnd[0]);
        str_cat((char*) ptrTx, (char*) ", ");
        ptr++;
    }
    str_cat((char*) ptrTx, "]\n");
}



static void cmnd_XSTR(char_t *ptrTx, char_t* ptrRx) {
    static uint8_t ix;
    // mora biti fiksni buffer no space withoput == 
    //123456789 0123456789
    //0000XSTR; XX:XX:XX:B
    //0001XSTR;10 10 10:B<LF>
    ix = strlen((char*) ptrRx);
    ptrRx += 9;
    if (ix >= 17) {
        for (ix = 0; ix < 10; ix++) {
            appTimer[ix] = *ptrRx;
            ptrRx++;
        }
        appTimerFlag++; // to allow to draw on display
        sprintf((char*) (ptrTx), TXT_OK, AppConfig.ID);
    } else {
        sprintf((char*) (ptrTx), TXT_ERROR, AppConfig.ID);
    }

}


/*----------------------------------------------------------------------------*/
static const sCmndFuncLst_t listfunc[] = {
    {cmnd_ID}, //0
    {cmnd_time}, //1
    {cmnd_temperature}, //2
    {cmnd_loadDefault}, //3
    {cmnd_reset}, //4
    {cmnd_version}, //5
    {cmnd_commands}, //6
    {cmnd_XSTR}, //9
};

/*--------------------------------------------------------------------------- */
static int8_t CgiMain(uint8_t *rx_buf, uint8_t *tx_buf) {
    sCmnds_t *ptr;
    int8_t err;
    uint8_t value[12];
    int16_t tmp;
    int8_t saveflag; // if 0x01 then it will save settings, else will not generate error 

    (void) strcpy((char*) tx_buf, (const char *) "");
    saveflag = 0x00;
    ptr = (sCmnds_t*) & cmnds[0];
    /* Search for command in list     */
    while ((ptr->cmnd[0] != '\n')&&(saveflag == 0x00)) {
        err = CgiGetVarValuePair(rx_buf, ptr->cmnd, value, sizeof (value));
        if (err == 0) {
            if (sscanf((const char*) value, "%d", &tmp) == 1) {
                if (ptr->min != ptr->max) {
                    //if (ptr->needformat == true) { /* need format */
                    //  tmp = CurrentToAdc(tmp);
                    //}
                    INT_LOCK;

                    if (tmp > ptr->max) {
                        *(ptr->pval) = ptr->max;
                    } else if (tmp < ptr->min) {
                        *(ptr->pval) = ptr->min;
                    } else {
                        *(ptr->pval) = tmp;
                    }
                    INT_UNLOCK;
                    //CheckIntensityLow();
                    //if (ptr->needformat == true) { /* need format */
                    //    tmp = AdcToCurrent(*(ptr->pval));
                    //} else 
                    {
                        tmp = *(ptr->pval);
                    }
                    sprintf((char*) (tx_buf), TXT_PARAM_NUMVAL, AppConfig.ID, ptr->cmnd, tmp);
                    saveflag = 0x01;
                }
            } else {
                saveflag = 0x02;
            }
        } else if (err == -1) { // no parmeter found in command.
            if (ptr->pval == 0) {
                listfunc[ptr->min].run(tx_buf, rx_buf);
                saveflag = 0x03;
            } else {
                //if (ptr->needformat == true) { /* need format */
                //    tmp = AdcToCurrent(*(ptr->pval));
                //} else 
                {
                    tmp = *(ptr->pval);
                }
                sprintf((char*) (tx_buf), TXT_PARAM_NUMVAL, AppConfig.ID, ptr->cmnd, tmp);
                saveflag = 0x04;
            }
        } else if (err == -4) {
            if (ptr->pval == 0) {
                sprintf((char*) (tx_buf), TXT_HELP1, AppConfig.ID, ptr->cmnd, ptr->help);
            } else {
                tmp = *(ptr->pval);
                sprintf((char*) (tx_buf), TXT_HELP, AppConfig.ID, ptr->cmnd, tmp, ptr->help);
            }

            saveflag = 0x05;
        }
        ptr++;
    }
    if (!(saveflag)) {
        sprintf((char*) (tx_buf), TXT_ERROR, AppConfig.ID);
    }
    if (saveflag == 0x01) {
        app_settings_save();
    }
    return (saveflag);
}

/*--------------------------------------------------------------------------- */
static bool cmnd_checkID(uint8_t*buf, uint8_t id) {
    static uint8_t dat[10];
    sprintf((char*) dat, "00%02X", id);
    if (0U == strncmp((char*) dat, (char*) buf, 4)) {
        return true;
    }
    return false;
}

static void cmnd_GetTempHumid(cmndBuf_t * ser) {
    // update overload
    //01234567,90123
    //$01T26.4,H34.9<LF>  
    int16_t tmp;
    if (ser->len > 8) {
        if (ser->data[3] == 'T') {
            if (sscanf((const char*) &ser->data[4], "%d", &tmp) == 1) {
                if (tmp > 85) {
                    tmp = 85;
                } else if (tmp < -55) {
                    tmp = -55;
                }
                gTSStaticVal = tmp;
                gTSStatic = 1;
            }
        }
    }
    if (ser->len > 13) {
        if (ser->data[9] == 'H') {
            if (sscanf((const char*) &ser->data[10], "%d", &tmp) == 1) {
                if (tmp > 99) {
                    tmp = 99;
                } else if (tmp < 0) {
                    tmp = 0;
                }
                gHSStaticVal = tmp;
                gHSStatic = 1;
            }
        }
    }
}

/*--------------------------------------------------------------------------- */
static ect_ki_t ectki;

PT_THREAD(app_cmndW(pt_t * pt)) {

    PT_BEGIN(pt);
    cmndClockTime = TickGetDiv64K();
    for (;;) {
        for (indx = 0; indx < GPS_QUEUE_SIZE; indx++) {
            if (gpsBuf[indx].status == G_READY) {
                
                if (0U == strncmp("$GPRMC,", (char*) &gpsBuf[indx].data[0], 7)) {
                    strcpy((char*) cmdBufAnswer, (char*) &gpsBuf[indx].data[0]);
                    cmdAnswerValid = true;
                    if (AppConfig.gpsIsEnabled==1){
                    gprmc_gps_checkBuffer(&gpsBuf[indx]);
                    }
                } else if (0U == strncmp("$01T", (char*) &gpsBuf[indx].data[0], 4)) {
                    cmnd_GetTempHumid(&gpsBuf[indx]);
                } else if (cmnd_checkID(&gpsBuf[indx].data[0], 0x00) == true) { // always 00 addressa
                    err = CgiIsNotEmpty(&gpsBuf[indx].data[0], gpsBuf[indx].len);
                    if (err > 0) {
                        err = CgiMain(&gpsBuf[indx].data[0], txBuf);
                        len = strlen((char*) txBuf);
//                        sys_ser4_tx_buf_send(txBuf, len);
                    }
                }
                gpsBuf[indx].len = 0;
                gpsBuf[indx].status = G_EMPTY;
            }
        }
        if (sys_t1_ser4ticks_tout_end() == true) {
            INT_LOCK;
            gpsWIx = 0U; // reset buffer write index
            INT_UNLOCK;
        }
        if (pt_is_dly_end(cmndClockTime, 300000UL)) {
                        // send information
                        cmndClockTime = TickGetDiv64K();
                        ds3231_time_get(&cmdVrijeme);
                        cmndmaster_send_gprmc(txBuf, &cmdVrijeme);
                        len = strlen((char*) txBuf);
                        sys_ser2_tx_buf_send(txBuf, len);
                    }
        PT_YIELD(pt);
    }
    PT_END(pt);
}

/*----------------------------------------------------------------------------*/
void cmndW_data_int() {
    uint8_t i;
    for (i = 0; i < GPS_QUEUE_SIZE; i++) {
        memset((void*) &gpsBuf[i].data[0], 0x00, GPS_RXBUF_SIZE);
        gpsBuf[i].len = 0;
        gpsBuf[i].status = G_EMPTY;
    }
    memset((void*) &txBuf[0], 0x00, GPS_RXBUF_SIZE);
    gpsWIx = 0U;
    ORGQIx = 0U;
    cmdAnswerValid = false;
}

/*----------------------------------------------------------------------------*/
void cmndW_data_new(uint8_t c) {
    if (c == '\n') {
        if (gpsWIx < (GPS_RXBUF_SIZE - 1U)) {
            gpsBuf[ORGQIx].data[gpsWIx + 0U] = c;
            gpsBuf[ORGQIx].data[gpsWIx + 1U] = '\0';
            gpsBuf[ORGQIx].len = (gpsWIx + 1U);
        } else {
            gpsBuf[ORGQIx].data[gpsWIx] = '\0';
            gpsBuf[ORGQIx].len = (gpsWIx);
        }
        gpsBuf[ORGQIx].status = G_READY;
        ORGQIx++;
        if (ORGQIx >= GPS_QUEUE_SIZE) {
            ORGQIx = 0U;
        }
        gpsWIx = 0U;
        gpsBuf[ORGQIx].status = G_WRITE;
    } else {
        if (gpsWIx < (GPS_RXBUF_SIZE - 3U)) {
            gpsBuf[ORGQIx].data[gpsWIx] = c;
            gpsWIx++;
        } else {
            gpsBuf[ORGQIx].data[gpsWIx + 0U] = '\r';
            gpsBuf[ORGQIx].data[gpsWIx + 1U] = '\n';
            gpsBuf[ORGQIx].data[gpsWIx + 2U] = '\0';
            gpsBuf[ORGQIx].len = (gpsWIx + 1U);
            gpsBuf[ORGQIx].status = G_READY;
            ORGQIx++;
            if (ORGQIx >= GPS_QUEUE_SIZE) {
                ORGQIx = 0U;
            }
            gpsWIx = 0U;
            gpsBuf[ORGQIx].status = G_WRITE;
        }
    }
}
