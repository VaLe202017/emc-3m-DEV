/*  ELAK d.o.o.
 *  By: Marwan
 *  io.c
 */

#include "app.h"
#include "mcp.h"
/*----------------------------------------------------------------------------*/
#define IMPL_IL1_FLT BIT_0
#define IMPL_IL2_FLT BIT_1
#define IMPL_IL3_FLT BIT_2
#define IMPL_IL4_FLT BIT_5
#define IMPL_IL5_FLT BIT_4
#define IMPL_IL6_FLT BIT_3

/*----------------------------------------------------------------------------*/
static UINT faults;
static UINT interupt = 0;

/*----------------------------------------------------------------------------*/
void __ISR(_CHANGE_NOTICE_VECTOR, IPL(SYS_CN_IPL)) ChangeNotice_Handler(void) {

    INTClearFlag(INT_CN);
    /*
    if (mcp_flt_pressed()==1) {
        implVar[1].IsFault = 1;
    }/*
    if (IS_FAULT2_PRESSED) {
        implVar[2].IsFault = 1;
    }
    if (IS_INTA_PRESSED) {
        _SET_INTA_PRESS;
    }*/
    if (mcp_flt1_pressed() == 1) {
        implVar[1].IsFault = 1;
    }
    if (mcp_flt2_pressed() == 1) {
        implVar[2].IsFault = 1;
    }
    if (mcp_flt_read() || interupt) {
        interupt = 1;
    }
}

/*----------------------------------------------------------------------------*/

PT_THREAD(app_fault(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, interupt == 1);
        INT_LOCK;
        interupt = 0;
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

/*----------------------------------------------------------------------------*/