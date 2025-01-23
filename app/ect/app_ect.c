/*  (By) Marwan Khoury
 *  app_modify.c
 * "start/stop" - count UP immediately
 */
#include "app.h"

static ect_ki_t eki;
static uint32_t modSignal;
static uint8_t BuzzFlag;

static ect_state_t StateUpDown;

// mora biti fiksni buffer no space without == 
//123456789 0123456789
//0000XSTR; XX:XX:XX:B
//0001XSTR;10 10 10:B<LF>

void _xstr(uint8_t Hr, uint8_t Mn, uint8_t Se, uint8_t buzz) {
    uint8_t dat;
    dat = Hr / 10;
    appTimer[9 - 9] = dat + '0';
    dat = Hr % 10;
    appTimer[10 - 9] = dat + '0';
    dat = Mn / 10;
    appTimer[12 - 9] = dat + '0';
    dat = Mn % 10;
    appTimer[13 - 9] = dat + '0';
    dat = Se / 10;
    appTimer[15 - 9] = dat + '0';
    dat = Se % 10;
    appTimer[16 - 9] = dat + '0';
    if ((Se % 2) == 0) {
        appTimer[11 - 9] = ':';
    } else {
        appTimer[11 - 9] = ' ';
    }
    appTimer[18 - 9] = buzz;
    drv_eds_clear();
    drv_eds_timer_set();
    if (appTimer[9] == 'B') {
        if (AppConfig.BeepTimerEnabled == 1) {
            BEEP_SET;
        }
    } else {
        BEEP_CLR;
    }
    drv_eds_send();
}

void _xstr_edit(uint8_t Hr, uint8_t Mn, uint8_t Se, uint8_t buzz) {
    uint8_t dat;
    if (buzz == 'H') {
        appTimer[9 - 9] = ' ';
        appTimer[10 - 9] = ' ';
    } else {
        dat = Hr / 10;
        appTimer[9 - 9] = dat + '0';
        dat = Hr % 10;
        appTimer[10 - 9] = dat + '0';
    }
    if (buzz == 'M') {
        appTimer[12 - 9] = ' ';
        appTimer[13 - 9] = ' ';
    } else {
        dat = Mn / 10;
        appTimer[12 - 9] = dat + '0';
        dat = Mn % 10;
        appTimer[13 - 9] = dat + '0';
    }
    if (buzz == 'S') {
        appTimer[15 - 9] = ' ';
        appTimer[16 - 9] = ' ';
    } else {
        dat = Se / 10;
        appTimer[15 - 9] = dat + '0';
        dat = Se % 10;
        appTimer[16 - 9] = dat + '0';
    }
    appTimer[11 - 9] = ':';

    drv_eds_clear();
    drv_eds_timer_set();
    if (appTimer[9] == 'B') {
        if (AppConfig.BeepTimerEnabled == 1) {
            BEEP_SET;
        }
    } else {
        BEEP_CLR;
    }
    drv_eds_send();
}

/*-----------------------------------------------------------------------------*/
void OnExit_EDIT_OnEnter_TIMERSTART() {
    if (StateUpDown == ECT_TIMER_UP) {
        tHr = CntHr;
        tMn = CntMn;
        tSe = CntSe;
        CntHr = 0;
        CntMn = 0;
        CntSe = 0;
    } else {
        tHr = 0;
        tMn = 0;
        tSe = 0;
        tmHr = CntHr;
        tmMn = CntMn;
        tmSe = CntSe;
    }
    sys_t1Sec_reset();
    _xstr(CntHr, CntMn, CntSe, Buzz);
    ectState = ECT_TIMER_PAUSE;
}

/*----------------------------------------------------------------------------*/
void OnEditType(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_ENTER:
            ectState = ECT_CLOCK;
            break;
        case ECT_KI_PLUS:
            StateUpDown = ECT_TIMER_UP;
            ectState = ECT_EDIT_HOUR;
            break;
        case ECT_KI_MINUS:
            StateUpDown = ECT_TIMER_DOWN;
            ectState = ECT_EDIT_HOUR;
            break;
        case ECT_KI_START_STOP:
            StateUpDown = ECT_TIMER_UP;
            CntHr = 23;
            CntMn = 59;
            CntSe = 59;
            OnExit_EDIT_OnEnter_TIMERSTART();
            ectState = ECT_TIMER_UP;
            break;
        case ECT_KI_NULL:
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnEditHour(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            CntHr++;
            if (CntHr >= 100) {
                CntHr = 0;
            }
            break;
        case ECT_KI_MINUS:
            if (CntHr == 0u) {
                CntHr = 99;
            } else {
                CntHr--;
            }
            break;
        case ECT_KI_ENTER:
            ectState = ECT_EDIT_MIN;
            break;
        case ECT_KI_START_STOP:
            OnExit_EDIT_OnEnter_TIMERSTART();
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnEditMin(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            CntMn++;
            if (CntMn >= 60) {
                CntMn = 0;
            }
            break;
        case ECT_KI_MINUS:
            if (CntMn == 0u) {
                CntMn = 59;
            } else {
                CntMn--;
            }
            break;
        case ECT_KI_ENTER:
            ectState = ECT_EDIT_SECONDS;
            break;
        case ECT_KI_START_STOP:
            OnExit_EDIT_OnEnter_TIMERSTART();
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnEditSeconds(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            CntSe++;
            if (CntSe >= 60) {
                CntSe = 0;
            }
            break;
        case ECT_KI_MINUS:
            if (CntSe == 0u) {
                CntSe = 59;
            } else {
                CntSe--;
            }
            break;
        case ECT_KI_ENTER:
        case ECT_KI_START_STOP:
            OnExit_EDIT_OnEnter_TIMERSTART();
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnTimerStop(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            break;
        case ECT_KI_MINUS:
            break;
        case ECT_KI_ENTER:
            ectState = ECT_CLOCK;
            break;
        case ECT_KI_START_STOP:
            if (StateUpDown == ECT_TIMER_UP) {
                CntHr = 0;
                CntMn = 0;
                CntSe = 0;
            } else {
                tHr = 0;
                tMn = 0;
                tSe = 0;
                CntHr = tmHr;
                CntMn = tmMn;
                CntSe = tmSe;
            }
            sys_t1Sec_reset();
            _xstr(CntHr, CntMn, CntSe, Buzz);
            if (StateUpDown == ECT_TIMER_UP) {
                ectState = ECT_TIMER_UP;
            } else {
                ectState = ECT_TIMER_DOWN;
            }
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnTimerPause(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            if (StateUpDown == ECT_TIMER_UP) {
                CntHr = 0;
                CntMn = 0;
                CntSe = 0;
            } else {
                tHr = 0;
                tMn = 0;
                tSe = 0;
                CntHr = tmHr;
                CntMn = tmMn;
                CntSe = tmSe;
            }
            sys_t1Sec_reset();
            _xstr(CntHr, CntMn, CntSe, Buzz);
            if (StateUpDown == ECT_TIMER_UP) {
                ectState = ECT_TIMER_UP;
            } else {
                ectState = ECT_TIMER_DOWN;
            }
            break;
        case ECT_KI_MINUS:
            if (StateUpDown == ECT_TIMER_UP) {
                CntHr = 0;
                CntMn = 0;
                CntSe = 0;
            } else {
                tHr = 0;
                tMn = 0;
                tSe = 0;
                CntHr = tmHr;
                CntMn = tmMn;
                CntSe = tmSe;
            }
            sys_t1Sec_reset();
            _xstr(CntHr, CntMn, CntSe, Buzz);
            break;
        case ECT_KI_ENTER:
            ectState = ECT_CLOCK;
            break;
        case ECT_KI_START_STOP:
            if (StateUpDown == ECT_TIMER_UP) {
                ectState = ECT_TIMER_UP;
            } else {
                ectState = ECT_TIMER_DOWN;
            }
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnTimerDown(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            break;
        case ECT_KI_MINUS:
            break;
        case ECT_KI_ENTER:
            break;
        case ECT_KI_START_STOP:
            ectState = ECT_TIMER_PAUSE;
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}

/*-----------------------------------------------------------------------------*/
void OnTimerUp(ect_ki_t *ki) {
    switch (ki->typ) {
        case ECT_KI_PLUS:
            break;
        case ECT_KI_MINUS:
            break;
        case ECT_KI_ENTER:
            break;
        case ECT_KI_START_STOP:
            ectState = ECT_TIMER_PAUSE;
            break;
        case ECT_KI_NULL:
            break;
        default:
            break;
    }
}
/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
//012345678 901234567
//0000xstr; 00:00 00 \n
volatile uint8_t flip = ' ';

void OnEctDraw() {
    switch (ectState) {
        case ECT_CLOCK:
        case ECT_EDIT_TYPE:
            break;
        case ECT_TIMER_STOP:
        case ECT_TIMER_PAUSE:
            _xstr(CntHr, CntMn, CntSe, Buzz);
            break;
        case ECT_EDIT_HOUR:
            if (flip == 'H') {
                flip = ' ';
            } else {
                flip = 'H';
            }
            _xstr_edit(CntHr, CntMn, CntSe, flip);
            break;
        case ECT_EDIT_MIN:
            if (flip == 'M') {
                flip = ' ';
            } else {
                flip = 'M';
            }
            _xstr_edit(CntHr, CntMn, CntSe, flip);
            break;
        case ECT_EDIT_SECONDS:
            if (flip == 'S') {
                flip = ' ';
            } else {
                flip = 'S';
            }
            _xstr_edit(CntHr, CntMn, CntSe, flip);
            break;
        case ECT_TIMER_DOWN:
        case ECT_TIMER_UP:
            _xstr(CntHr, CntMn, CntSe, Buzz);
            break;
    }
}

/*-----------------------------------------------------------------------------*/
PT_THREAD(app_ect(pt_t *pt)) {
    PT_BEGIN(pt);
    CntHr = 0;
    CntMn = 0;
    CntSe = 0;
    Buzz = ' ';
    _xstr(CntHr, CntMn, CntSe, Buzz);
    ectState = ECT_EDIT_TYPE;    
    OnEctDraw();
    modSignal = sys_t1Sec_get();
    for (;;) {
        
        if (ectki_queue_get((ect_ki_t*) & eki) == 0) 
        {
            switch (ectState) {
                case ECT_CLOCK:
                    break;

                case ECT_EDIT_TYPE:OnEditType(&eki);
                    break;
                case ECT_EDIT_HOUR:OnEditHour(&eki);
                    break;
                case ECT_EDIT_MIN:OnEditMin(&eki);
                    break;
                case ECT_EDIT_SECONDS:OnEditSeconds(&eki);
                    break;
                case ECT_TIMER_STOP:OnTimerStop(&eki);
                    break;

                case ECT_TIMER_PAUSE:OnTimerPause(&eki);
                    break;
                case ECT_TIMER_DOWN:OnTimerUp(&eki);
                    break;
                case ECT_TIMER_UP:OnTimerDown(&eki);
                    break;
                default:
                    break;
            }
        }
        if (modSignal != sys_t1Sec_get()) {
            modSignal = sys_t1Sec_get();
            OnEctDraw();
        }
        if(ectState == ECT_CLOCK){
            app_clock_OnEnter();
        }
        PT_YIELD(pt);
    }
    PT_END(pt);
}

/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
// connected to interrupt each 1 second called

void app_ect_tick() {
    switch (ectState) {
        case ECT_CLOCK:
        case ECT_TIMER_PAUSE:
        case ECT_TIMER_STOP:
        case ECT_EDIT_HOUR:
        case ECT_EDIT_MIN:
        case ECT_EDIT_SECONDS:
            break;
        case ECT_TIMER_DOWN:
            if ((CntHr == tHr)&&(CntMn == tMn)&&(CntSe == tSe)) {
                if (BuzzFlag == 0) {
                    Buzz = 'B';
                    BuzzFlag = 1;
                } else {
                    Buzz = ' ';
                    ectState = ECT_TIMER_STOP;
                }
            } else {
                BuzzFlag = 0;
                if (CntSe == 0) {
                    CntSe = 59;
                    if (CntMn == 0) {
                        CntMn = 59;
                        if (CntHr == 0) {
                            CntHr = 99;
                        } else {
                            CntHr--;
                        }
                    } else {
                        CntMn--;
                    }
                } else {
                    CntSe--;
                }
            }


            break;
        case ECT_TIMER_UP:
            if ((CntHr == tHr)&&(CntMn == tMn)&&(CntSe == tSe)) {
                if (BuzzFlag == 0) {
                    Buzz = 'B';
                    BuzzFlag = 1;
                } else {
                    Buzz = ' ';
                    ectState = ECT_TIMER_STOP;
                }
            } else {
                BuzzFlag = 0;
                CntSe++;
                if (CntSe > 59) {
                    CntSe = 0;
                    CntMn++;
                    if (CntMn > 59) {
                        CntMn = 0;
                        CntHr++;
                        if (CntHr >= 99) {
                            CntHr = 0;
                        }
                    }
                }
            }
            break;
        default:
            break;
    }
}

/*----------------------------------------------------------------------------*/
/* Very simple queue
 * These are FIFO queues which discard the new data when full.
 *
 * Queue is empty when in == out.
 * If in != out, then
 *  - items are placed into in before incrementing in
 *  - items are removed from out before incrementing out
 * Queue is full when in == (out-1 + QUEUE_SIZE) % QUEUE_SIZE;
 *
 * The queue will hold QUEUE_ELEMENTS number of items before the
 * calls to QueuePut fail.
 */

/* Queue structure */
#define EQUEUE_ELEMENTS 50
#define EQUEUE_SIZE (EQUEUE_ELEMENTS + 1)
//1.
static ect_ki_t eQueue[EQUEUE_SIZE];

uint8_t eQueueIn;
uint8_t eQueueOut;

/*----------------------------------------------------------------------------*/
void ectki_queue_init() {
    eQueueIn = eQueueOut = 0;
}
/*----------------------------------------------------------------------------*/
int ectki_queue_put(ect_ki_t *qnew) {
    if (eQueueIn == ((eQueueOut - 1 + EQUEUE_SIZE) % EQUEUE_SIZE)) {
        return -1; /* Queue Full*/
    } else {
        eQueue[eQueueIn].typ = qnew->typ;
        eQueueIn = (eQueueIn + 1) % EQUEUE_SIZE;
        return 0; // No errors    
    }
}
/*----------------------------------------------------------------------------*/
int ectki_queue_get(ect_ki_t *qold) {
    if (eQueueIn == eQueueOut) {
        return -1; /* Queue Empty - nothing to get*/
    } else {
        qold->typ = eQueue[eQueueOut].typ;
        eQueueOut = (eQueueOut + 1) % EQUEUE_SIZE;
        return 0; // No errors    
    }

}
/*----------------------------------------------------------------------------*/