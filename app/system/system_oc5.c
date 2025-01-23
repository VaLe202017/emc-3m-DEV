/*  ELAK d.o.o.
 *  By: Marwan
 *  pwm.c
 */
#include "app.h"


#define OC5_PERIOD_ADD        2
#define OC5_PERIOD           2500//750  //40Khz
#define OC5_DUTY_MIN          5
#define OC5_DUTY_MAX         2500

/*----------------------------------------------------------------------------*/
void sys_oc5_stop() {
    CloseOC5();
    CloseTimer3();
}

/*----------------------------------------------------------------------------*/
void sys_oc5_run(uint16_t duty) {
    CloseOC5();
    if (duty < OC5_DUTY_MIN) {
        duty = OC5_DUTY_MIN;
    }
    if (duty > OC5_DUTY_MAX) {
        duty = OC5_DUTY_MAX;
    }
    OpenTimer3(T3_ON | T3_IDLE_CON | T3_PS_1_8, OC5_PERIOD + OC5_PERIOD_ADD);
    OpenOC5(OC_ON | OC_IDLE_CON | OC_TIMER_MODE16 | OC_TIMER3_SRC | OC_CONTINUE_PULSE, duty, OC5_PERIOD + OC5_PERIOD_ADD);
}

/*----------------------------------------------------------------------------*/
void sys_oc5_duty_set(uint16_t duty) {
    if (duty < OC5_DUTY_MIN) {
        duty = OC5_DUTY_MIN;
    }
    if (duty > OC5_DUTY_MAX) {
        duty = OC5_DUTY_MAX;
    }
    OC5RS = duty;
}
