/*  ELAK d.o.o.
 *  By: Marwan
 *  prgm.c
 */

#include "app.h"

void prgm_locate_indx_Ru(BYTE prgm[], UINT relay);
void prgm_locate_indx_Pu(BYTE prgm[], UINT prg);

void prgm_limits_init(void) {
    UINT i;
    for (i = 0; i < LIMIT_SIZE; i++) {
        L[i] = -1;
    }
    for (i = 0; i < RELAY_SIZE; i++) {
        Ru[i] = -1;
        Rl[i] = -1;
    }
    for (i = 0; i < PROGRAM_SIZE; i++) {
        Pu[i] = -1;
        Pl[i] = -1;
    }
}

void prgm_locate_indx_u(BYTE prgm[]) {
    UINT32 i;
    for (i = 241; i <= 246; i++) {
        prgm_locate_indx_Ru(prgm, i);
    }
    for (i = 0; i < 100; i++) {
        prgm_locate_indx_Pu(prgm, i);
    }

}

void prgm_locate_indx_Ru(BYTE prgm[], UINT relay) {
    UINT32 i;
    yearList_t yl;
    BOOL flag;
    UINT indx;

    indx = relay - 240;
    if (Rl[indx] == -1) {
        Ru[indx] = -1;
        return;
    }
    flag = true;
    for (i = 5; ((i < PRGM_SIZE) && (flag == true)); i += 5) {
        prgm_fill_y(prgm, i, &yl);
        if (yl.relay == relay) {
            flag = false;
            Ru[indx] = i;
        }
    }
}

void prgm_locate_indx_Pu(BYTE prgm[], UINT prg) {
    UINT32 i;
    weekList_t wl;
    BOOL flag;

    if (Pl[prg] == -1) {
        Pu[prg] = -1;
        return;
    }
    flag = true;
    for (i = L[2] + 5; ((i < PRGM_SIZE) && (flag == true)); i += 5) {
        prgm_fill_w(prgm, i, &wl);
        if (wl.prgm == prg) {
            flag = false;
            Pu[prg] = i;
        }
    }
}

void datumvrijeme_fill_y(datumvrijeme_t *dt, yearList_t* y, BYTE relay) {
    y->year = dt->godina;
    y->month = dt->mjesec;
    y->day = dt->dan;
    y->relay = relay + 240;
    y->prgm = 100;
}

void prgm_fill_y(BYTE prgm[], UINT line, yearList_t* y) {
    y->relay = prgm[line];
    y->year = prgm[line + 1];
    y->month = prgm[line + 2];
    y->day = prgm[line + 3];
    y->prgm = prgm[line + 4];
}

void datumvrijeme_fill_w(datumvrijeme_t *dt, weekList_t *w, BYTE prgm) {
    w->time = (dt->sat * 60) + dt->minuta;
    w->signal = 0;
    w->prgm = prgm;
    w->dayWeek.Val = 0x80 >> (dt->dan_u_tjednu);
}

void prgm_fill_w(BYTE prgm[], UINT line, weekList_t *w) {
    w->prgm = prgm[line];
    w->time = (prgm[line + 1] * 60) + prgm[line + 2];
    w->dayWeek.Val = prgm[line + 3];
    w->signal = prgm[line + 4];
}

void prgm_locate_indx(BYTE prgm[]) {
    static INT32 lm;
    yearList_t yl;
    weekList_t wl;
    BOOL flag;
    UINT indx;

    //upperlimit is on the begining
    L[1] = -1;
    lm = 0;
    prgm_fill_y(prgm, lm, &yl);
    if ((yl.day == 0) && (yl.month == 0) && (yl.prgm == 0) && (yl.relay == 0) && (yl.year == 0)) {
        L[1] = 0;
    } else {
        L[1] = -1;
        return; // no need to work more.
    }

    //  find relay indexes up to second limit
    L[2] = -1;
    lm = 0;
    flag = true;
    lm += 5U;
    do {
        prgm_fill_y(prgm, lm, &yl);
        if ((yl.day == 0) && (yl.month == 0) && (yl.prgm == 0) && (yl.relay == 0) && (yl.year == 0)) {
            L[2] = lm;
            flag = false;
        } else if (yl.relay > 240) {
            indx = yl.relay - 240;
            Rl[indx] = lm;
        }
        lm = lm + 5;
    } while ((lm < PRGM_SIZE) && (flag == true));


    if (lm < PRGM_SIZE) {
        flag = true;
        do {
            prgm_fill_w(prgm, lm, &wl);
            if ((wl.dayWeek.Val == 0) && (wl.time == 0) && (wl.prgm == 0) && (wl.signal == 0)) {
                L[3] = lm;
                flag = false;
            } else {
                indx = wl.prgm;
                if (indx < 100) {
                    Pl[indx] = lm;
                }
            }
            lm = lm + 5;
        } while ((lm < PRGM_SIZE) && (flag == true));
    } else {
        L[3] = -1;
    }
}

BOOL prgm_is_limit_ok(void) {
    if (L[1] != 0) {
        return false;
    } else if (L[1] >= L[2]) {
        return false;
    } else if (L[2] >= L[3]) {
        return false;
    } else if (L[3] >= PRGM_SIZE +5) { //ima mjesta za limit
        return false;
    } else {
        return true;
    }
}

INT32 prgm_is_program_index_ok(BYTE prog) {
    if ((Pu[prog] != -1) && (Pl[prog] != -1)) {
        if (Pu[prog] <= Pl[prog]) {
            return 1;
        }
    }
    return -1;
}

INT32 prgm_is_relay_index_ok(BYTE relay) {
    if ((Ru[relay] != -1) && (Rl[relay] != -1)) {
        if (Ru[relay] <= Rl[relay]) {
            return 1;
        }
    }
    return -1;
}

INT32 prgm_find_program(BYTE prgm[], BYTE relay, datumvrijeme_t *d) {
    static INT32 i;
    static INT32 cmp1;
    static INT32 cmp2;
    INT32 prog;
    static BOOL flag;
    static yearList_t ly;
    static yearList_t lyu;
    static yearList_t lyl;

    prog = -1;
    if (prgm_is_relay_index_ok(relay) == 1) {
        flag = true;
        datumvrijeme_fill_y(d, &ly, relay);
        i = Ru[relay];
        do {
            prgm_fill_y(prgm, i, &lyu);
            prgm_fill_y(prgm, i + 5, &lyl);
            cmp1 = prgm_compare(&lyu, &ly);
            cmp2 = prgm_compare(&lyl, &ly);
            if (cmp1 <= 0) {
                if ((cmp2 == -1000)||(cmp2 > 0)) { // differ in relay
                    //program in lyu;
                    prog = lyu.prgm;
                    flag = false;
                } 
            }
            i += 5;
        } while ((i <= Rl[relay]) && (flag == true));
    }
    return prog;
}

INT32 prgm_find_signal(BYTE prgm[], BYTE program, datumvrijeme_t *d) {
    static INT32 i;
    static INT32 sig;
    static BOOL flag;
    static weekList_t w1;
    static weekList_t w2;
    sig = -1;
    if (prgm_is_program_index_ok(program) == 1) {
        flag = true;
        datumvrijeme_fill_w(d, &w1, program);
        i = Pu[program];
        do {
            prgm_fill_w(prgm, i, &w2);
            if (w1.time == w2.time) {
                if ((w1.dayWeek.Val & w2.dayWeek.Val) > 0) {
                    sig = w2.signal;
                    flag = false;
                }
            }
            i += 5;
        } while ((i <= Pl[program]) && (flag == true));
    }
    return sig;
}

/* prgm_compare
 * use this as x is program line
 *             y is the now time
 * 100 relay of line is MORE then y
 * 101 realy of line is LOW than y
 * 0 is the same date relay
 *  less    more
 */

INT32 prgm_compare(yearList_t *x, yearList_t *y) {
    if (x->relay == y->relay) {
        if (x->year == y->year) {
            if (x->month == y->month) {
                if (x->day == y->day) {
                    return 0;
                } else if (x->day < y->day) {
                    return -1;
                } else {
                    return 1;
                }

            } else if (x->month < y->month) {
                return -10;
            } else {
                return 10;
            }

        } else if (x->year < y->year) {
            return -100;
        } else {
            return 100;
        }
    } else if (x->relay < y->relay) {
        return -1000; // end of search
    } else {
        return -1000; // end of search
    }
}