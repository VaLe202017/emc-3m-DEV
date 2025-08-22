/* (By) Marwan Khoury
 *  system_t1.c
 */

#include "app.h"
#include "mcp.h"

static volatile uint8_t int4Signal = 0;
static UINT faults;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
void sys_interupt4_init() {
    INTClearFlag(INT_INT4);
    INTSetVectorPriority(INT_EXTERNAL_4_VECTOR, PRI_LEVEL(SYS_INT4_IPL));
    INTSetVectorSubPriority(INT_EXTERNAL_4_VECTOR, SUBPRI_LEVEL(SYS_INT4_SIPL));
    INTEnable(INT_INT4, INT_ENABLED);
    int4Signal = 0;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

void __ISR(_EXTERNAL_4_VECTOR, IPL(SYS_INT4_IPL)) _Extrnal4IntHandler(void) {
    INTClearFlag(INT_INT4);
    if (IS_INTA_PRESSED) {
        _SET_INTA_PRESS;
    }
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
uint8_t sys_intertupt4Signal_get() {
    uint8_t res;
    INT_LOCK;
    res = int4Signal;
    INT_UNLOCK;
    return res;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
//test protothread

PT_THREAD(app_fault(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, _IS_INTA_PRESS);
        faults=mcp_flt_read();
        if (faults == (1U << 3)) {
            implVar[1].IsFault = 1;
        }
        if (faults == (1U << 7)) {
            implVar[2].IsFault = 1;
        }
        INT_LOCK;
        int4Signal = 0;
        INT_UNLOCK;

        /*faults = mcp_flt_read();
        if ((faults & IMPL_IL1_FLT) == IMPL_IL1_FLT) {
            implVar[3].IsFault = 1;
        } else if ((faults & IMPL_IL2_FLT) == IMPL_IL2_FLT) {
            implVar[4].IsFault = 1;
        } else if ((faults & IMPL_IL3_FLT) == IMPL_IL3_FLT) {
            implVar[5].IsFault = 1;
        } else if ((faults & IMPL_IL4_FLT) == IMPL_IL4_FLT) {
            implVar[6].IsFault = 1;
        } else if ((faults & IMPL_IL5_FLT) == IMPL_IL5_FLT) {
            implVar[7].IsFault = 1;
        } else if ((faults & IMPL_IL6_FLT) == IMPL_IL6_FLT) {
            implVar[8].IsFault = 1;
        }Ne koristi se*/
    }
    PT_END(pt);
}

void simulate_int4_interrupt(void) {
    INTSetFlag(INT_INT4); // Manually set the interrupt flag
}
