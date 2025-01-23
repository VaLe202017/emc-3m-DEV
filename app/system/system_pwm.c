/* (by) Marwan Khoury
 * system_pwm.c
 */

//#include "app.h"
//
///*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
//#define PWM_PERIOD          500ul//750  //40Khz
////#define PWM_DUTY            duty = 250ul + 25*(10-duty);
//#define PWM_DUTY            duty = 10ul + 49*(10-duty);
//
//#define PWM_PERIOD_ADD        2u
//
//#define PWM_DUTY_MIN          0u
//#define PWM_DUTY_MAX         10u
//
//
//
///*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
//void sys_pwm_stop() {
//    CloseOC2();
//    CloseOC3();
//    CloseTimer2();
//    OE1_SET;
//    OE2_SET;
//}
//
///*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
//void sys_pwm_run(uint16_t duty) {
//    OE1_INP;
//    OE2_INP;
//    CloseOC2();
//    CloseOC3();
//    if (duty < PWM_DUTY_MIN) {
//        duty = PWM_DUTY_MIN;
//    }
//    if (duty > PWM_DUTY_MAX) {
//        duty = PWM_DUTY_MAX;
//    }    
//    PWM_DUTY;
//    OpenTimer2(T2_ON | T2_IDLE_CON | T2_PS_1_4, PWM_PERIOD + PWM_PERIOD_ADD);
//    OpenOC2(OC_ON | OC_IDLE_CON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_CONTINUE_PULSE, duty, PWM_PERIOD + PWM_PERIOD_ADD);
//    OpenOC3(OC_ON | OC_IDLE_CON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_CONTINUE_PULSE, duty, PWM_PERIOD + PWM_PERIOD_ADD);
//}
