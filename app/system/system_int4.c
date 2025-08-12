/* (By) Marwan Khoury
 *  system_t1.c
 */

#include "app.h"

static volatile uint8_t int4Signal = 0;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_int4_init() {
    INTCONbits.INT0EP = 1U;
    INTClearFlag(INT_INT0);
    INTSetVectorPriority(INT_EXTERNAL_0_VECTOR, PRI_LEVEL(SYS_INT4_IPL));
    INTSetVectorSubPriority(INT_EXTERNAL_0_VECTOR, SUBPRI_LEVEL(SYS_INT4_SIPL));
    INTEnable(INT_INT0, INT_ENABLED);
    int4Signal = 0;
    vrijeme.sekunda = 59U;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
// brojac sekundi       !!!
/*
void __ISR(_EXTERNAL_0_VECTOR, IPL(SYS_INT4_IPL)) _Extrnal0IntHandler(void) {
    INTClearFlag(INT_INT0);
    int4Signal++;
    vrijeme.sekunda++;
    if (vrijeme.sekunda >= 60U) {
        vrijeme.sekunda = 0U;
        gMinuitFlag=1;
        ds3231_time_get(&vrijeme);
        sat_toLocal(&vrijeme, AppConfig.ClockTimeZone, AppConfig.ClockDayLightSaving);
        switch (AppConfig.ClockTimeFormat) {
            case TIMEFORMAT_12H:
                vrijeme.sat = vrijeme.sat % 12;
                break;
            case TIMEFORMAT_24H:
                break;
        }
    }
    
}*/

void __ISR(_EXTERNAL_0_VECTOR, IPL(SYS_INT4_IPL)) _Extrnal0IntHandler(void) {
    INTClearFlag(INT_INT0);
    int4Signal++;
    vrijeme.sekunda++;
    if (vrijeme.sekunda >= 60U) {
        vrijeme.sekunda = 0U;
        gMinuitFlag = 1;        // just signal ?minute tick?
    }
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
uint8_t sys_int4Signal_get() {
    uint8_t res;
    INT_LOCK;
    res = int4Signal;
    INT_UNLOCK;
    return res;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_int4_force() {
    INT_LOCK;
    vrijeme.sekunda = 59U;
    INT_UNLOCK;
}

