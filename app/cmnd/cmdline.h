/*  (C) Marwan Khoury
 *   cmdline.h
 */
#if !defined(__CMDLINE_H__) 
#define __CMDLINE_H__

#define GPS_RXBUF_SIZE 250U
#define GPS_QUEUE_SIZE 10

typedef enum _cmndStatus_t {
    G_EMPTY = 0,
    G_WRITE,
    G_READY,
} cmndStatus_t;

typedef struct _cmndBuf_t {
    cmndStatus_t status;
    uint16_t len;
    uint8_t data[GPS_RXBUF_SIZE];
} cmndBuf_t;

typedef struct _sCmnds_t {
    char_t cmnd[8];
    int16_t min;
    int16_t max;
    boolean_t needformat;
    int16_t* pval;
    uint8_t help[40];
} sCmnds_t;

typedef void (*pfnCmd_t)(char_t *ptrTx, char_t *ptrRx);

typedef struct _sCmndFuncLst_t {
    pfnCmd_t run;
} sCmndFuncLst_t;

/*----------------------------------------------------------------------------*/
/* cmndwatch.c */
PT_THREAD(app_cmndW(pt_t *pt));
void cmndW_data_int();
void cmndW_data_new(uint8_t c);

#endif /*!defined(__CMDLINE_H__) */
