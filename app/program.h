/*  ELAK d.o.o.
 *  By: ISKRATRADE
 *  program.h
 */

#ifndef __PRGM_H
#define	__PRGM_H
#define PRGM_SIZE 4096U
#define PRGM_LINES 800U

typedef struct {
    BYTE relay;
    BYTE year;
    BYTE month;
    BYTE day;
    BYTE prgm;
} yearList_t;

typedef struct {
    BYTE prgm;
    UINT16 time;
    BYTE_VAL dayWeek;
    BYTE signal;
} weekList_t;
/*-----------------------------------------------------------------------------*/


APP_EXT BYTE gPRGM[PRGM_SIZE];
APP_EXT volatile BOOL gPRGMValid;

APP_EXT volatile BOOL gPRGMStatus;
APP_EXT volatile UINT gPRGMLine;


#define LIMIT_SIZE 4U
#define RELAY_SIZE 7U // R0 not found
#define PROGRAM_SIZE 100U

APP_EXT volatile INT32 L[LIMIT_SIZE];

APP_EXT volatile INT32 Ru[RELAY_SIZE];
APP_EXT volatile INT32 Rl[RELAY_SIZE];

APP_EXT volatile INT32 Pu[PROGRAM_SIZE];
APP_EXT volatile INT32 Pl[PROGRAM_SIZE];
/*-----------------------------------------------------------------------------*/
PT_THREAD(prgm_task(pt_t *pt));

void prgm_limits_init(void);

void prgm_locate_indx(BYTE prgm[]);
BOOL prgm_is_limit_ok(void);

void prgm_locate_indx_u(BYTE prgm[]);

INT32 prgm_get_relay_indx(BYTE relay);

void datumvrijeme_fill_y(datumvrijeme_t *dt, yearList_t* y,BYTE relay) ;
void prgm_fill_y(BYTE prgm[], UINT line, yearList_t* y);

void datumvrijeme_fill_w(datumvrijeme_t *dt, weekList_t *w, BYTE prgm);
void prgm_fill_w(BYTE prgm[], UINT line, weekList_t *w);
INT32 prgm_compare(yearList_t *x, yearList_t *y);

INT32 prgm_is_program_index_ok(BYTE prog);
INT32 prgm_is_relay_index_ok(BYTE relay);

INT32 prgm_find_program(BYTE prgm[], BYTE relay, datumvrijeme_t *d);
INT32 prgm_find_signal(BYTE prgm[], BYTE program, datumvrijeme_t *d);

void prgm_init_pt(void);
void prgm_run_pt(void);

void prgm_check_line_limit(void);

#endif	/* __PRGM_H */