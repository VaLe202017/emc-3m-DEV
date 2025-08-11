/*  ELAK d.o.o.
 *  By: Marwan
 *  impulse.h
 */

#ifndef __IMPL_H
#define	__IMPL_H
/*----------------------------------------------------------------------------*/
#define IMPL_TICK_MAX 43200UL
#define IMPL_PAUSE_TIME 150U

#define IMP_POZ 1
#define IMP_NEG 2
#define IMP_LOP 3
#define IMP_BRK 4

/*----------------------------------------------------------------------------*/
APP_EXT IMPL_VAR implVar[IMPL_NUM];
APP_EXT UINT implWaitSem;
/*----------------------------------------------------------------------------*/
void impl_il16_set(UINT indx, UINT state);
void impl_il16_reset(void);
void impl_time_get(UINT indx, const datumvrijeme_t *time, datumvrijeme_t* dt);
void impl_upload_time(UINT indx, const datumvrijeme_t *time);
void impl_inc_time(void);
void impl_inc_ticks(UINT indx);
BOOL impl_is_to_run(UINT indx);
void impl_init_structure(void);

PT_THREAD(impl_task_1(pt_t *pt));
PT_THREAD(impl_task_2(pt_t *pt));
PT_THREAD(impl_task_3(pt_t *pt));
PT_THREAD(impl_task_4(pt_t *pt));
PT_THREAD(impl_task_5(pt_t *pt));
PT_THREAD(impl_task_6(pt_t *pt));
PT_THREAD(impl_task_7(pt_t *pt));
PT_THREAD(impl_task_8(pt_t *pt));

/*----------------------------------------------------------------------------*/
#define IMPL_SEM_LOCK        implWaitSem = 1;
#define IMPL_SEM_WAIT_LOCK   PT_WAIT_UNTIL(pt,(implWaitSem == 0)); IMPL_SEM_LOCK
#define IMPL_SEM_UNLOCK      implWaitSem = 0;

#endif	/* __IMPL_H */