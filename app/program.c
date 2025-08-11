/*  ELAK d.o.o.
 *  By: DV
 *  program.c
 */

#include "app.h"
#include "app/program.h"
#include "zvono.h"


#define __PRGM &gPRGM[0]

static INT32 program1;
static INT32 program2;

static INT32 program3;
static INT32 program4;
static INT32 program5;
static INT32 program6;


static INT32 signal1;
static INT32 signal2;
/*
static INT32 signal3;
static INT32 signal4;
static INT32 signal5;
static INT32 signal6;
*/


static uint32_t clockTime;

static BOOL pLimOK;

void prgm_upload_time(const datumvrijeme_t *time) { // upload vremena okidanja releja
  UINT i;
  rlyVrijeme.sekunda = time->sekunda;
  rlyVrijeme.minuta = time->minuta;
  rlyVrijeme.dan_u_tjednu = time->dan_u_tjednu;
  rlyVrijeme.sat = time->sat;
  rlyVrijeme.dan = time->dan;
  rlyVrijeme.mjesec = time->mjesec;
  rlyVrijeme.godina = time->godina;

  if (AppConfig.relayTimezone > 0) {
    for (i = 0; i < AppConfig.relayTimezone; i++) {
      sat_inc_sat(&rlyVrijeme);
    }
  } else if (AppConfig.relayTimezone < 0) {
    for (i = AppConfig.relayTimezone; i < 0; i++) {
      sat_dec_sat(&rlyVrijeme);
    }
  }

  if (AppConfig.relayDayLight == 1U) {
    if (sat_is_daylightsaving_time(&rlyVrijeme) == 1U) {
      sat_inc_sat(&rlyVrijeme);
    }
  }
}

void prgm_check_line_limit(void) {
  if (gPRGMLine >= PRGM_LINES) {
    gPRGMLine = PRGM_LINES - 1;
  }
}

static void prgm_set_relay(INT32 rl) {
   switch (rl) {
    case 1:
      gSignal1 = signal1;
      break;
    case 2:
      gSignal2 = signal2;
      break;
      /*
    case 3:
      gSignal3 = signal3;
      break;
    case 4:
      gSignal4 = signal4;
      break;
    case 5:
      gSignal5 = signal5;
      break;
    case 6:
      gSignal6 = signal6;
      break;
      */
    default:
      break;
  }
}
static volatile UINT8 gMinits;

/*----------------------------------------------------------------------------*/
PT_THREAD(prgm_task(pt_t *pt)) {
  PT_BEGIN(pt);
  PRGM_LoadSettings();
  pLimOK = false;
  prgm_limits_init();
  prgm_locate_indx(__PRGM);
  pLimOK = prgm_is_limit_ok();
  if (pLimOK == true) {
    prgm_locate_indx_u(__PRGM);
    gPRGMValid = true;
  }
  for (;;) {
    INT_LOCK;
    gMinits = vrijeme.minuta;
    INT_UNLOCK;
    
    PT_WAIT_UNTIL(pt, (gMinits != vrijeme.minuta));
    
    prgm_upload_time(&vrijeme);
    if (AppConfig.relay1IsEnabled == 1) {
      program1 = prgm_find_program(__PRGM, 1, &rlyVrijeme);      
      if ((program1 > -1) && (program1 < 100)) {
        signal1 = prgm_find_signal(__PRGM, program1, &rlyVrijeme);
        if ((signal1 > -1) && (signal1 <= 100)) {
            prgm_set_relay(1);
        }
      }
    }

    if (AppConfig.relay2IsEnabled == 1) {
      program2 = prgm_find_program(__PRGM, 2, &rlyVrijeme);
      if ((program2 > -1) && (program2 < 100)) {
        signal2 = prgm_find_signal(__PRGM, program2, &rlyVrijeme);
        if ((signal2 > -1) && (signal2 <= 100)) {
          prgm_set_relay(2);
        }
      }
    }
/*
    if (AppConfig.relay3IsEnabled == 1) {
      program3 = prgm_find_program(__PRGM, 3, &rlyVrijeme);
      if ((program3 > -1) && (program3 < 100)) {
        signal3 = prgm_find_signal(__PRGM, program3, &rlyVrijeme);
        if ((signal3 > -1) && (signal3 <= 100)) {
          prgm_set_relay(3);
        }
      }
    }

    if (AppConfig.relay4IsEnabled == 1) {
      program4 = prgm_find_program(__PRGM, 4, &rlyVrijeme);
      if ((program4 > -1) && (program4 < 100)) {
        signal4 = prgm_find_signal(__PRGM, program4, &rlyVrijeme);
        if ((signal4 > -1) && (signal4 <= 100)) {
          prgm_set_relay(4);
        }
      }
    }
    if (AppConfig.relay5IsEnabled == 1) {
      program5 = prgm_find_program(__PRGM, 5, &rlyVrijeme);
      if ((program5 > -1) && (program5 < 100)) {
        signal5 = prgm_find_signal(__PRGM, program5, &rlyVrijeme);
        if ((signal5 > -1) && (signal5 <= 100)) {
          prgm_set_relay(5);
        }
      }
    }
    if (AppConfig.relay6IsEnabled == 1) {
      program6 = prgm_find_program(__PRGM, 6, &rlyVrijeme);
      if ((program6 > -1) && (program6 < 100)) {
        signal6 = prgm_find_signal(__PRGM, program6, &rlyVrijeme);
        if ((signal6 > -1) && (signal6 <= 100)) {
          prgm_set_relay(6);
        }
      }
    }
 */

  }
  PT_END(pt);
}

static pt_t pt_prgm;
static pt_t pt_zv1;
static pt_t pt_zv2;
/*
 static pt_t pt_zv3;
static pt_t pt_zv4;
static pt_t pt_zv5;
static pt_t pt_zv6;
 */



void prgm_init_pt(void) {
    
  PT_INIT(&pt_prgm);
  PT_INIT(&pt_zv1);
  PT_INIT(&pt_zv2);
  /*
   PT_INIT(&pt_zv3);
  PT_INIT(&pt_zv4);
  PT_INIT(&pt_zv5);
  PT_INIT(&pt_zv6);
   */
  
  gPRGMValid = false;
  ZVN_clr(ZVONO1);
  ZVN_clr(ZVONO2);
  /*
  ZVN_clr(ZVONO3);
  ZVN_clr(ZVONO4);
  ZVN_clr(ZVONO5);
  ZVN_clr(ZVONO6);
   */
  
  gPRGMStatus = true;
  
}

void prgm_run_pt(void) {
    
  if (gPRGMStatus == true) {
        prgm_task(&pt_prgm);
        zvono1_task(&pt_zv1);
        zvono2_task(&pt_zv2);
        /*
        zvono3_task(&pt_zv3);
        zvono4_task(&pt_zv4);
        zvono5_task(&pt_zv5);
        zvono6_task(&pt_zv6);*/
  } 

}
