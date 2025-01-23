/*
 *  (by) Marwan Khoury
 *  file : app_ect.h
 */
#ifndef _APP_ECT_H
#define _APP_ECT_H

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
typedef enum _ki_type_t {
    /**/ ECT_KI_NULL = 0,
    /**/ ECT_KI_START_STOP = 1,
    /**/ ECT_KI_MINUS = 2,
    /**/ ECT_KI_PLUS = 3,
    /**/ ECT_KI_ENTER = 4,
} ect_ki_type_t;

typedef struct ect_ki_t {
    ect_ki_type_t typ;
} ect_ki_t;

typedef enum _state_t {
    ECT_CLOCK,
    ECT_EDIT_TYPE,
    ECT_EDIT_HOUR,
    ECT_EDIT_MIN,
    ECT_EDIT_SECONDS,
    ECT_TIMER_PAUSE,
    ECT_TIMER_STOP,
    ECT_TIMER_DOWN,
    ECT_TIMER_UP,
} ect_state_t;

#define BUF_SIZE 30

typedef struct _serial_t {
    uint8_t data[BUF_SIZE];
    uint16_t len;
} serial_t;

APP_EXT volatile ect_state_t ectState;

APP_EXT volatile uint8_t CntHr;
APP_EXT volatile uint8_t CntMn;
APP_EXT volatile uint8_t CntSe;
APP_EXT volatile uint8_t Buzz;

APP_EXT volatile uint8_t tHr;
APP_EXT volatile uint8_t tMn;
APP_EXT volatile uint8_t tSe;

APP_EXT volatile uint8_t tmHr;
APP_EXT volatile uint8_t tmMn;
APP_EXT volatile uint8_t tmSe;

/*app_ect.c */
PT_THREAD(app_ect(pt_t *pt));
void app_ect_tick();

void ectki_queue_init();
int ectki_queue_put(ect_ki_t *qnew);
int ectki_queue_get(ect_ki_t *qold);

/* ect_qserial.c */
void qserial_init();
int32_t qserial_put(uint8_t *buf, uint8_t len);
int32_t qserial_get(serial_t *qold);




#endif /*_APP_H*/
