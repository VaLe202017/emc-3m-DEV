/*
 * File  : system_t1.c
 * Author: Marwan Khoury
 */

#include "app.h"

// Internal counter to store Ticks.  This variable is incremented in an ISR and 
// therefore must be marked volatile to prevent the compiler optimizer from 
// reordering code to use this value in the main context while interrupts are 
// disabled.
static volatile uint32_t dwInternalTicks = 0;
static volatile uint32_t dwSer4Ticks = 0;

/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
static volatile uint32_t dw100Ticks = 0;
static volatile uint32_t dw1SecTick = 0;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_t1_init() {
    T1CON = 0x0000U;
    T1CONbits.TCS = 0U;
    T1CONbits.TCKPS = 3; //prescaler 1:256
    PR1 = 3125ul; //(TICKS_PER_SECOND)/100; // 10ms per tick
    TMR1 = 0x0000U;
    INTClearFlag(INT_T1);
    INTSetVectorPriority(INT_TIMER_1_VECTOR, PRI_LEVEL(SYS_T1_IPL));
    INTSetVectorSubPriority(INT_TIMER_1_VECTOR, SUBPRI_LEVEL(SYS_T1_SIPL));
    INTEnable(INT_T1, INT_ENABLED);
    T1CONbits.ON = 1U;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
uint32_t sys_t1_get() {
    uint32_t dw;
    INT_LOCK;
    dw = dwInternalTicks;
    INT_UNLOCK;
    return dw;
}

/*-----------------------------------------------------------------------------*/
void __ISR(_TIMER_1_VECTOR, IPL(SYS_T1_IPL)) _Timer1IntHandler(void) {
    // Increment internal high tick counter
    INTClearFlag(INT_T1);
    dwInternalTicks++;
    dwSer4Ticks++;
//    ki3_scan();
    dw100Ticks++;
    if (dw100Ticks >= 50) {
        dw100Ticks = 0;
        dw1SecTick++;
    }
}

/*-----------------------------------------------------------------------------*/
bool sys_t1_is_dly_end(uint32_t ticks1, uint32_t dt) {

    uint32_t comp;
    if (dt < 10) {
        dt = 10;
    }
    comp = dt / 10;
    if ((sys_t1_get() - ticks1) > (comp)) {
        return true;
    }
    return false;
}

/*-----------------------------------------------------------------------------*/
void sys_t1_ser4ticks_reset() {
    dwSer4Ticks = 0;
}

/*-----------------------------------------------------------------------------*/
bool sys_t1_ser4ticks_tout_end() {
    if (dwSer4Ticks >= 200) {
        return true;
    }
    return false;
}


/*-----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------*/
void sys_t1Sec_reset() {
    INT_LOCK;
    dw100Ticks = 0;
    INT_UNLOCK;
}

/*-----------------------------------------------------------------------------*/
uint32_t sys_t1Sec_get() {
    uint32_t dw;
    INT_LOCK;
    dw = dw1SecTick;
    INT_UNLOCK;
    return dw;
}