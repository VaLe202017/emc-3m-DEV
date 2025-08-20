/*  (C) Marwan Khoury
 *   app.h
 * 
 */

#ifndef __APP_H_
#define __APP_H_

#define APP_EMC EDC120
/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/

#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <xc.h>
#include <plib.h>


#include "system.h"

#include "std.h"
#include "pt/pt.h"

#include "eds_font/eds_font.h"


#include "TCPIP_Stack/TCPIP.h"
#include "TCPIPConfig.h"
#include "StackTsk.h"

#include "app_settings.h"

#include "cmdline.h"
#include "ethernet.h"
#include "socket.h"

#include "sat/sat.h"

#include "key3/ki3.h"

#include "cgi/cgi.h"

#include "app_ect.h"

#include "app/NVMem.h"
#include "app/program.h"
#include "app/zvono.h"
#include "app/cgi.h"

#include "impulse/impulseH.h"

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
APP_EXT float gTSAvgVal;
APP_EXT datumvrijeme_t vrijeme;


APP_EXT int16_t gTSStaticVal;
APP_EXT bool gTSStatic;



APP_EXT int16_t gHSStaticVal;
APP_EXT bool gHSStatic;

#define APP_TIMER_STR_SIZE  15
APP_EXT uint8_t appTimerFlag;
APP_EXT uint8_t appTimer[APP_TIMER_STR_SIZE];
static cmndBuf_t webBuf[GPS_QUEUE_SIZE];
/*----------------------------------------------------------------------------*/
//interupt levels
#define SYS_CN_IPL      5

/*----------------------------------------------------------------------------*/
#define FIRMWARE_VERSION        "V1.0"
#define MY_DEFAULT_HOST_NAME    "EMC-3M dev"
#define APP_VERSION              01
#define APP_TYPE                MY_DEFAULT_HOST_NAME 

#define NVMOP_NOP               0x4000      // NOP operation
#define NVMOP_PAGE_ERASE        0x4004      // Page erase operation

#define SYS_MS_PER_TICK       205U
// 33 added humidity sensor support EMS120TH

typedef struct {
    unsigned short wConfigurationLength; // Number of bytes saved in EEPROM/Flash (sizeof(APP_CONFIG))
    unsigned short wOriginalChecksum; // Checksum of the original AppConfig defaults as loaded from ROM (to detect when to wipe the EEPROM/Flash record of AppConfig due to a stack change, such as when switching from Ethernet to Wi-Fi)
    unsigned short wCurrentChecksum; // Checksum of the current EEPROM/Flash data.  This protects against using corrupt values if power failure occurs while writing them and helps detect coding errors in which some other task writes to the EEPROM in the AppConfig area.
} NVM_VALIDATION_STRUCT;

typedef enum _sm_state_t {
    APSM_CLOCK = 0,
    APSM_TIMER,
    APSM_MODIFY,
    APSM_SETT,
    APSM_GPS,
    APSM_TEST,
    APSM_ECT,
} sm_state_t;

APP_EXT sm_state_t AppState;

APP_EXT datumvrijeme_t rlyVrijeme;


/* app.c */
void app_ethernet_init();
int32_t IsLowPower();

void ds_check_new_time();
void app_test_OnEnter();
void app_clock_OnEnter();
void app_modify_OnEnter();
void app_sett_OnEnter();
void app_gprmc_OnEnter();
void app_timer_OnEnter();

/* app_buzzer.c */
PT_THREAD(app_buzzer(pt_t * pt));

/* app_clock.c */
PT_THREAD(app_clock(pt_t *pt));
void app_clock_onKey();

/* app_gprmc.c */
PT_THREAD(app_gprmc(pt_t * pt));
void app_gprmc_onKey();

/* app_id.c */
PT_THREAD(app_id(pt_t *pt));

/* app_intensity.c */
PT_THREAD(app_intensity(pt_t *pt));

/* app_modify.c */
PT_THREAD(app_modify(pt_t *pt));

/* app_sat.c */
PT_THREAD(app_sat(pt_t *pt));

/* app_sett.c */
PT_THREAD(app_sett(pt_t *pt));

/* app_settings.c */
void app_ipaddress_save(const APP_CONFIG *AppConfig);
void app_load_defaults();

/* app_temp.c */
PT_THREAD(app_temp(pt_t *pt));

/* app_test.c */
PT_THREAD(app_test(pt_t *pt));
void app_test_onKey();

/* app_timer.c */
PT_THREAD(app_timer(pt_t *pt));
void app_timer_onKey();

/*program.c*/
PT_THREAD(prgm_task(pt_t *pt));
void prgm_run_pt(void);

/*zvono.h*/
PT_THREAD(zvono1_task(pt_t *pt));
PT_THREAD(zvono2_task(pt_t *pt));
PT_THREAD(zvono3_task(pt_t *pt));
PT_THREAD(zvono4_task(pt_t *pt));
PT_THREAD(zvono5_task(pt_t *pt));
PT_THREAD(zvono6_task(pt_t *pt));


/*cgi.h*/
void cgi_date(BYTE *prt);

/* drv_eds.c */
void drv_eds_clear();
void drv_eds_send();
void drv_eds_all_digits_set(eds_font_t ch);
void drv_eds_hhmm_set(uint8_t hh, uint8_t mm);  // DODANO uint8_t ss,
void drv_eds_hhmmss_set(uint8_t hh, uint8_t mm, uint8_t ss);  // DODANO uint8_t ss,
void drv_eds_hhmm_datedots_set();
void drv_eds_hhmm_timedots_set();
void drv_eds_hhmm_temp_set(float temp);
void drv_eds_hhmm_humid_set(int16_t temp);
void drv_eds_menu_set(uint8_t znak, uint8_t num);
void drv_eds_setting_set(uint8_t znak, int8_t num);
void drv_eds_hhmm_hex_set(uint8_t hh, uint8_t mm); 
void drv_eds_gprmc_set(uint8_t znak, uint8_t valid);
void drv_eds_timer_set();

/*impulse*/
void rst_pt_imp1();
void rst_pt_imp2();

APP_EXT datumvrijeme_t vrijeme;
APP_EXT datumvrijeme_t vrijemeI1;
APP_EXT datumvrijeme_t vrijemeI2;
APP_EXT datumvrijeme_t rlyVrijeme;

PT_THREAD(app_fault(pt_t *pt));
/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
#endif // _APP_H_
