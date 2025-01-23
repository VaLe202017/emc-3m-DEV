/*  ELAK d.o.o.
 *  By: Marwan
 *  timekeep.c
 */
#include <app.h>

/*-----------------------------------------------------------------------------*/
BOOL __attribute__((weak)) pt_is_dly_end(DWORD ticks1,UINT dt) {

    DWORD comp;
    if (dt < SYS_MS_PER_TICK) {
        dt = SYS_MS_PER_TICK;
    }
    comp = dt / SYS_MS_PER_TICK;   
    if ((TickGetDiv64K() - ticks1) > (comp)) {
      return TRUE;
    }
    return FALSE;
}

