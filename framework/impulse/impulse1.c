/*  (By) Marwan Khoury
 *  impl3.c
 */

#include "app.h"

#define IMPL_INDX 1

#define IMPL_NEG        impl_il16_set(IMPL_INDX, IMP_NEG);
#define IMPL_POZ        impl_il16_set(IMPL_INDX, IMP_POZ);
#define IMPL_BRK        impl_il16_set(IMPL_INDX, IMP_BRK);
#define IMPL_LOP        impl_il16_set(IMPL_INDX, IMP_LOP);

#define IMPL_RTY_SET    IMPL_LOP //XCAT(XCAT(IMPL_RTY_SET_, ),IMPL_INDX)
#define IMPL_RTY_CLR    IMPL_LOP //XCAT(XCAT(IMPL_RTY_CLR_, ),IMPL_INDX)

#define IMPL_SET_POS    XCAT(XCAT(ds_setPos_, ),IMPL_INDX())
#define IMPL_GET_POS    XCAT(XCAT(ds_getPos_, ),IMPL_INDX())

#define IMPL_TASK    XCAT(XCAT(impl_task_, ),IMPL_INDX)

#define _IS_ENABLED     (pSet->isEnabled == 0)
#define _IS_CUR_LIMIT   (pVar->IsFault == 1)
#define _IS_CUR_OK      (pVar->IsFault == 0)

static DWORD imp_time;
static IMPL_SET * pSet;
static IMPL_VAR * pVar;

/*----------------------------------------------------------------------------*/
PT_THREAD(IMPL_TASK(pt_t *pt)) {
  PT_BEGIN(pt);
  //initial module
  pSet = &AppConfig.implSet[IMPL_INDX];
  pVar = &implVar[IMPL_INDX];

  pVar->IsFault = 0;
  IMPL_SEM_WAIT_LOCK;

  IMPL_RTY_CLR;
  imp_time = TickGetDiv64K();
  PT_WAIT_UNTIL(pt, pt_is_dly_end(imp_time, IMPL_PAUSE_TIME));
  IMPL_RTY_SET;
  IMPL_LOP;

  IMPL_SEM_UNLOCK;

  IMPL_GET_POS;

  for (;;) {

    PT_WAIT_WHILE(pt, (_IS_ENABLED || (_IS_CUR_LIMIT)));
    PT_WAIT_UNTIL(pt, impl_is_to_run(IMPL_INDX));

    IMPL_SEM_LOCK;
    imp_time = TickGetDiv64K();
    if (pVar->polarity == IMP_NEG) {
      IMPL_NEG;
      PT_WAIT_UNTIL(pt, pt_is_dly_end(imp_time, pSet->implLength));
      if (_IS_CUR_OK) {
        INT_LOCK;
        pVar->polarity = IMP_POZ;
        INT_UNLOCK;
      }
    } else { //if (pVar->polarity == IMP_POZ) {
      IMPL_POZ;
      PT_WAIT_UNTIL(pt, pt_is_dly_end(imp_time, pSet->implLength));
      if (_IS_CUR_OK) {
        INT_LOCK;
        pVar->polarity = IMP_NEG;
        INT_UNLOCK;
      }
    }
    IMPL_BRK;
    IMPL_SEM_UNLOCK;

    if (_IS_CUR_OK) {
      impl_inc_ticks(IMPL_INDX);
      IMPL_SET_POS;
    }
    imp_time = TickGetDiv64K();
    if (pSet->implMode == 0) {
      PT_WAIT_UNTIL(pt, pt_is_dly_end(imp_time, AppConfig.implSecPause));
    } else {
      PT_WAIT_UNTIL(pt, pt_is_dly_end(imp_time, AppConfig.implMinPause));
    }
  }
  PT_END(pt);
}