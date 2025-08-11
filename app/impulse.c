/*  (By) Marwan Khoury
 *  impl.c
 */

#include "app.h"

#define IN_N4 BIT_1
#define IN_N3 BIT_2
#define IN_N2 BIT_3
#define IN_P2 BIT_4
#define IN_P3 BIT_5
#define IN_P4 BIT_6

#define IN_P5 BIT_1
#define IN_P6 BIT_2
#define IN_P1 BIT_3
#define IN_N1 BIT_4
#define IN_N6 BIT_5
#define IN_N5 BIT_6

static UINT8 impl165;
static UINT8 impl234;

/*----------------------------------------------------------------------------*/
static void impl_il1_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl234 |= IN_P4;
            impl234 &= ~IN_N4;
            break;
        case IMP_NEG:
            impl234 |= IN_P4;
            impl234 |= IN_N4;
            break;
        case IMP_LOP:
            impl234 &= ~IN_P4;
            impl234 |= IN_N4;
            break;
        case IMP_BRK:
            impl234 &= ~IN_P4;
            impl234 &= ~IN_N4;
            break;
        default:
            break;
    }
}
static void impl_il2_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl234 |= IN_P3;
            impl234 &= ~IN_N3;
            break;
        case IMP_NEG:
            impl234 |= IN_P3;
            impl234 |= IN_N3;
            break;
        case IMP_LOP:
            impl234 &= ~IN_P3;
            impl234 |= IN_N3;
            break;
        case IMP_BRK:
            impl234 &= ~IN_P3;
            impl234 &= ~IN_N3;
            break;
        default:
            break;
    }
}
static void impl_il3_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl234 |= IN_P2;
            impl234 &= ~IN_N2;
            break;
        case IMP_NEG:
            impl234 |= IN_P2;
            impl234 |= IN_N2;
            break;
        case IMP_LOP:
            impl234 &= ~IN_P2;
            impl234 |= IN_N2;
            break;
        case IMP_BRK:
            impl234 &= ~IN_P2;
            impl234 &= ~IN_N2;
            break;
        default:
            break;
    }
}
static void impl_il4_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl165 |= IN_P1;
            impl165 &= ~IN_N1;
            break;
        case IMP_NEG:
            impl165 |= IN_P1;
            impl165 |= IN_N1;
            break;
        case IMP_LOP:
            impl165 &= ~IN_P1;
            impl165 |= IN_N1;
            break;
        case IMP_BRK:
            impl165 &= ~IN_P1;
            impl165 &= ~IN_N1;
            break;
        default:
            break;
    }
}
static void impl_il5_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl165 |= IN_P6;
            impl165 &= ~IN_N6;
            break;
        case IMP_NEG:
            impl165 |= IN_P6;
            impl165 |= IN_N6;
            break;
        case IMP_LOP:
            impl165 &= ~IN_P6;
            impl165 |= IN_N6;
            break;
        case IMP_BRK:
            impl165 &= ~IN_P6;
            impl165 &= ~IN_N6;
            break;
        default:
            break;
    }
}
static void impl_il6_set(UINT state) {
    switch (state) {
        case IMP_POZ:
            impl165 |= IN_P5;
            impl165 &= ~IN_N5;
            break;
        case IMP_NEG:
            impl165 |= IN_P5;
            impl165 |= IN_N5;
            break;
        case IMP_LOP:
            impl165 &= ~IN_P5;
            impl165 |= IN_N5;
            break;
        case IMP_BRK:
            impl165 &= ~IN_P5;
            impl165 &= ~IN_N5;
            break;
        default:
            break;
    }
}

/*----------------------------------------------------------------------------*/
void impl_il16_set(UINT indx, UINT state) {

    switch (indx) {
        case 3:
            impl_il1_set(state);
            break;
        case 4:
            impl_il2_set(state);
            break;
        case 5:
            impl_il3_set(state);
            break;
        case 6:
            impl_il4_set(state);
            break;
        case 7:
            impl_il5_set(state);
            break;
        case 8:
            impl_il6_set(state);
            break;
        default:
            break;
    }
    spi_put_impl(impl234,impl165);
}

/*----------------------------------------------------------------------------*/
void impl_il16_reset() {
    impl165 = 0x00U;
    impl234 = 0x00U;
    spi_put_impl(impl234,impl165);
}

/*----------------------------------------------------------------------------*/
void impl_time_get(UINT indx, const datumvrijeme_t *time, datumvrijeme_t* dt) {
    INT i;
    IMPL_SET * pSet;
    IMPL_VAR * pVar;

    pSet = &AppConfig.implSet[indx];
    pVar = &implVar[indx];

    dt->sekunda = time->sekunda;
    dt->minuta = time->minuta;
    dt->dan_u_tjednu = time->dan_u_tjednu;
    dt->sat = time->sat;
    dt->dan = time->dan;
    dt->mjesec = time->mjesec;
    dt->godina = time->godina;

    if (pSet->timeZone > 0) {
        for (i = 0; i < pSet->timeZone; i++) {
            sat_inc_sat(dt);
        }
    } else if (pSet->timeZone < 0) {
        for (i = pSet->timeZone; i < 0; i++) {
            sat_dec_sat(dt);
        }
    }

    if (pSet->dayLight == 1U) {
        if (sat_is_daylightsaving_time(dt) == 1U) {
            sat_inc_sat(dt);
        }
    }

    INT_LOCK;
    if (dt->sat >= 12U) {
        pVar->time = ((dt->sat - 12U)* 3600U) + (dt->minuta * 60) + dt->sekunda;
    } else {
        pVar->time = (dt->sat * 3600U) + (dt->minuta * 60) + dt->sekunda;
    }
    INT_UNLOCK;

}

/*----------------------------------------------------------------------------*/
void impl_upload_time(UINT indx, const datumvrijeme_t *time) {
    INT i;
    datumvrijeme_t dt;
    IMPL_SET * pSet;
    IMPL_VAR * pVar;

    pSet = &AppConfig.implSet[indx];
    pVar = &implVar[indx];

    dt.sekunda = time->sekunda;
    dt.minuta = time->minuta;
    dt.dan_u_tjednu = time->dan_u_tjednu;
    dt.sat = time->sat;
    dt.dan = time->dan;
    dt.mjesec = time->mjesec;
    dt.godina = time->godina;

    if (pSet->timeZone > 0) {
        for (i = 0; i < pSet->timeZone; i++) {
            sat_inc_sat(&dt);
        }
    } else if (pSet->timeZone < 0) {
        for (i = pSet->timeZone; i < 0; i++) {
            sat_dec_sat(&dt);
        }
    }

    if (pSet->dayLight == 1U) {
        if (sat_is_daylightsaving_time(&dt) == 1U) {
            sat_inc_sat(&dt);
        }
    }

    INT_LOCK;
    if (dt.sat >= 12U) {
        pVar->time = ((dt.sat - 12U)* 3600U) + (dt.minuta * 60) + dt.sekunda;
    } else {
        pVar->time = (dt.sat * 3600U) + (dt.minuta * 60) + dt.sekunda;
    }
    INT_UNLOCK;

}

/*----------------------------------------------------------------------------*/
//time base is the same only the diff is datum and
void impl_inc_time() {
    UINT indx;
    IMPL_SET * pSet;
    IMPL_VAR * pVar;
    for (indx = 1; indx < IMPL_NUM; indx++) {
        pSet = &AppConfig.implSet[indx];
        pVar = &implVar[indx];
        pVar->time++;
        if (pVar->time >= IMPL_TICK_MAX) {
            pVar->time = 0;
        }
    }
}

/*----------------------------------------------------------------------------*/
void impl_inc_ticks(UINT indx) {
    IMPL_SET * pSet;
    IMPL_VAR * pVar;

    pSet = &AppConfig.implSet[indx];
    pVar = &implVar[indx];

    if (pSet->implMode == 0U) { // sat je sekondni mode
        pVar->ticks++;
    } else {
        pVar->ticks += 60;
    }
    if (pVar->ticks >= IMPL_TICK_MAX) {
        pVar->ticks = 0;
    }
}

/*----------------------------------------------------------------------------*/
static UINT impl_tRun(UINT indx, INT diff) {
    UINT ticks;
    IMPL_SET * pSet;
    pSet = &AppConfig.implSet[indx];
    ticks = 0;
    if (pSet->implMode == 0) {
        //seconds clock
        ticks = (diff * 1000) / (1000 - (pSet->implLength));
    } else {
        //miniutes Clock
        ticks = (diff * 1000) / (60000 - (pSet->implLength));
    }
    return ticks;
}

/*----------------------------------------------------------------------------*/
BOOL impl_is_to_run(UINT indx) {

    INT diff;
    static UINT tWait;
    static UINT tRun;
    IMPL_SET * pSet;
    IMPL_VAR * pVar;

    pSet = &AppConfig.implSet[indx];
    pVar = &implVar[indx];


    if (pVar->time > pVar->ticks) {
        diff = (pVar->time - pVar->ticks);
        if (pSet->implMode == 1) {
            //FIXME less to make miniuts and seconds the sam time movments.
            if (diff < 60) {
                return false;
            }
        }

        tRun = impl_tRun(indx, diff);
        tWait = IMPL_TICK_MAX - diff;
    } else if (pVar->time < pVar->ticks) {
        tWait = (pVar->ticks - pVar->time);
        diff = IMPL_TICK_MAX - tWait;
        tRun = impl_tRun(indx, diff);
    } else {
        return false;
    }

    if (tWait < tRun) {
        return false;
    } else if (tWait > tRun) {
        if (pSet->implMode == 1) {

        }
        return true;

    } else {
        return false;
    }
    return true;
}

/*----------------------------------------------------------------------------*/
void impl_init_structure() {
    UINT indx;
    IMPL_VAR * pVar;

    for (indx = 0; indx < IMPL_NUM; indx++) {
        pVar = &implVar[indx];
        pVar->IsFault = 0;
        pVar->time = 0;
        pVar->polarity = 0;
        pVar->ticks = 0;
    }
}