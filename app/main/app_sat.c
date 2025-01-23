/*  (C) Marwan Khoury
 *   app_sat.c
 */
#include "app.h"
#include "ethernet.h"


/*----------------------------------------------------------------------------*/
static uint32_t satSignal;

/*----------------------------------------------------------------------------*/
PT_THREAD(app_sat(pt_t * pt)) {
    PT_BEGIN(pt);
    for (;;) {
        satSignal = sys_int4Signal_get();
        PT_WAIT_UNTIL(pt, (satSignal != sys_int4Signal_get()));        
    }
    PT_END(pt);
}

