/*  (C) Marwan Khoury, Tin Ladic
 * 
 *   
 *   app.c
 * 
 * 
 * 
 * Main class.
 * 
 */

#define APP_GLOBAL_SETTINGS
#define THIS_IS_STACK_APPLICATION

#include "app.h"

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
static pt_t pt_ethernet;
static pt_t pt_sat;
static pt_t pt_cmndW;

static pt_t pt_buzzer;
static pt_t pt_clock;
static pt_t pt_modify;
static pt_t pt_sett;
static pt_t pt_test;
static pt_t pt_timer;
static pt_t pt_gps;
static pt_t pt_ect;
static pt_t pt_prgm;

static pt_t pt_fault;
static pt_t pt_impulse1;
static pt_t pt_impulse2;
static pt_t pt_device;
volatile UINT gMinuitFlag = 0;

static uint16_t ptFlag;

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void app_ethernet_init(void) {
    PT_INIT(&pt_ethernet);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/

void ds_check_new_time(void) {
    if (gMinuitFlag > 0) {
        ds3231_time_get(&vrijeme);
        impl_time_get(1, &vrijeme, &vrijemeI1);
        impl_time_get(2, &vrijeme, &vrijemeI2);
        INT_LOCK;
        gMinuitFlag = 0;
        INT_UNLOCK;
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/

void rst_pt_imp1(void) {
    implVar[1].IsFault = 0;
    PT_INIT(&pt_impulse1);
}

void rst_pt_imp2(void) {
    implVar[2].IsFault = 0;
    PT_INIT(&pt_impulse2);
}

void rst_pt_device(void) {
    PT_INIT(&pt_device);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
int main(void) {

    sys_io_init();

    AppConfig.ID = 0xFF;

    cmndW_data_int();

    AppState = APSM_CLOCK;

    sat_datetime_init(&rlyVrijeme);
    sat_datetime_init(&gZadSinkroGPS);
    sat_datetime_init(&gprmcTime);
    sat_datetime_init(&gZadSinkroNTP);

    //app_defaults_load();
    app_settings_load();
    ZVN_Init();


    sat_datetime_init(&vrijeme);

    gMinuitFlag = 1;



    ectState = ECT_CLOCK;
    //services
    PT_INIT(&pt_ethernet);
    PT_INIT(&pt_sat);
    PT_INIT(&pt_cmndW);

    //display
    PT_INIT(&pt_clock);

    PT_INIT(&pt_gps);
    PT_INIT(&pt_prgm);

    sys_int4_init();
    sys_iic2_init();
    sys_iic3_init();
    mcp_impl_init();

    ds3231_1hz_enable();
    sys_ser5_init();
    sys_ser2_init();

    sys_t1_init();

    TickInit(); // Inicijalizacija brojaca vremena
    prgm_init_pt();

    rst_pt_device();
    rst_pt_imp1();
    rst_pt_imp2();
    implWaitSem = 0;

    AppConfig.implSet[1].isEnabled = 1;
    AppConfig.implSet[2].isEnabled = 1;
    AppConfig.implSet[1].implMode = 1; // seconds-based
    AppConfig.implSet[2].implMode = 0;
    AppConfig.implSet[1].implLength = 5U; // some non-zero pulse length (units = your Tick divisor)
    AppConfig.implSet[2].implLength = 5U;
    AppConfig.implSet[1].timeZone = 1;
    AppConfig.implSet[2].timeZone = 1;
    AppConfig.gpsIsEnabled=1;
    
    ds_check_new_time();

    for (;;) {
        ClearWDT();
        // service tasks
        ethernet_task(&pt_ethernet);
        app_cmndW(&pt_cmndW);
        prgm_run_pt();
        ds_check_new_time();
        impl_task_1(&pt_impulse1);
        impl_task_2(&pt_impulse2);
        ds_check_new_time();
        if (U5STAbits.OERR) { // za clearanje overflowa na serialu ako se desi
            U5STAbits.OERR = 0;
        }
        if (U2STAbits.OERR) { // za clearanje overflowa na serialu ako se desi
            U2STAbits.OERR = 0;
        }
    }
    return (EXIT_SUCCESS);
}

/*----------------------------------------------------------------------------*/
int32_t IsLowPower() {
    uint32_t from;
    uint32_t to;
    uint32_t Curr;
    int32_t res;

    res = -1;
    if (AppConfig.lopwrEnabled == 1) {
        from = (AppConfig.lopwrFromSat * 3600) + (AppConfig.lopwrFromMin * 60);
        to = (AppConfig.lopwrToSat * 3600) + (AppConfig.lopwrToMin * 60);
        INT_LOCK;
        Curr = (vrijeme.sat * 3600) + (vrijeme.minuta * 60) + vrijeme.sekunda;
        INT_UNLOCK;
        if (from <= to) {
            if ((Curr >= from) && (Curr <= to))
                res = 1;
            else
                res = -1;
        } else { // negative period in line presentation
            if ((Curr >= from) && (Curr <= 1440ul)) {
                res = 1;
            } else if (Curr <= to) {
                res = 1;
            } else {
                res = -1;
            }
        }
    }
    return res;
}





