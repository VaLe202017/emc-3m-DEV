/*  (C) Marwan Khoury
 *   system_hal.c
 */

#include "app.h"

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_io_init() {

    //CLOCK
    SYSTEMConfig(SYS_CLK_FrequencySystemGet(), SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR); // Enable multi-vectored interrupts
    INTEnableInterrupts();

    sys_ms_delay(50);
    mJTAGPortEnable(DEBUG_JTAGPORT_OFF);
    
    //PORTA
#if (PORTA_NOT_USED != 0)
    mPORTACloseBits(PORTA_NOT_USED);
#endif
#if (PORTA_INPUT != 0)
    mPORTASetPinsDigitalIn(PORTA_INPUT);
#endif
#if (PORTA_OUTPUT != 0)
    mPORTASetPinsDigitalOut(PORTA_OUTPUT);
#endif
#if (PORTA_OD != 0)
    mPORTAOpenDrainOpen(PORTA_OD);
#endif

    //PORTB
#if (PORTB_NOT_USED != 0)
    mPORTBCloseBits(PORTB_NOT_USED);
#endif
#if (PORTB_INPUT != 0)
    mPORTBSetPinsDigitalIn(PORTB_INPUT);
#endif
#if (PORTB_OUTPUT != 0)
    mPORTBSetPinsDigitalOut(PORTB_OUTPUT);
#endif
#if (PORTB_OD != 0)
    mPORTBOpenDrainOpen(PORTB_OD);
#endif

    //PORTC
#if (PORTC_NOT_USED != 0)
    mPORTCCloseBits(PORTC_NOT_USED);
#endif
#if (PORTC_INPUT != 0)
    mPORTCSetPinsDigitalIn(PORTC_INPUT);
#endif
#if (PORTC_OUTPUT != 0)
    mPORTCSetPinsDigitalOut(PORTC_OUTPUT);
#endif
#if (PORTC_OD != 0)
    mPORTCOpenDrainOpen(PORTC_OD);
#endif

    //PORTD
#if (PORTD_NOT_USED != 0)
    mPORTDCloseBits(PORTD_NOT_USED);
#endif
#if (PORTD_INPUT != 0)
    mPORTDSetPinsDigitalIn(PORTD_INPUT);
#endif
#if (PORTD_OUTPUT != 0)
    mPORTDSetPinsDigitalOut(PORTD_OUTPUT);
#endif
#if (PORTD_OD != 0)
    mPORTDOpenDrainOpen(PORTD_OD);
#endif

    //PORTE
#if (PORTE_NOT_USED != 0)
    mPORTECloseBits(PORTE_NOT_USED);
#endif
#if (PORTE_INPUT != 0)
    mPORTESetPinsDigitalIn(PORTE_INPUT);
#endif
#if (PORTE_OUTPUT != 0)
    mPORTESetPinsDigitalOut(PORTE_OUTPUT);
#endif
#if (PORTE_OD != 0)
    mPORTEOpenDrainOpen(PORTE_OD);
#endif

    //PORTF
#if (PORTF_NOT_USED != 0)
    mPORTFCloseBits(PORTF_NOT_USED);
#endif
#if (PORTF_INPUT != 0)
    mPORTFSetPinsDigitalIn(PORTF_INPUT);
#endif
#if (PORTF_OUTPUT != 0)
    mPORTFSetPinsDigitalOut(PORTF_OUTPUT);
#endif
#if (PORTF_OD != 0)
    mPORTFOpenDrainOpen(PORTF_OD);
#endif

    //PORTG
#if (PORTG_NOT_USED != 0)
    mPORTGCloseBits(PORTG_NOT_USED);
#endif
#if (PORTG_INPUT != 0)
    mPORTGSetPinsDigitalIn(PORTG_INPUT);
#endif
#if (PORTG_OUTPUT != 0)
    mPORTGSetPinsDigitalOut(PORTG_OUTPUT);
#endif
#if (PORTG_OD != 0)
    mPORTGOpenDrainOpen(PORTG_OD);
#endif
    
//    OE1_SET;
//    OE2_SET;
//    OEBUZ_CLR;  
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_us_delay(uint32_t usec) {
    static uint32_t count;
    count = 75 * usec;  //75 bila je
    T5CON = 0x8000U; // TMR1 on, prescale 1:1
    PR5 = 0xfffE; // st period register to max
    TMR5 = 0; // clear counter
    while (TMR5 < count); // simply wait
    T5CON = 0; // TMR1 off
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_ms_delay(uint32_t msec) {
    uint8_t indx;
    while (msec--) {
        indx = 4;
        while (indx--) {
            sys_us_delay(250ul);
        }
    }
}