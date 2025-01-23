/*
 * File:   zvono.c
 * Author: Marwan
 * Desc. : Function for turning on and off the bells(zvono) and hold the last
 *         status.
 */

#include "app.h"
#include "zvono.h"
#include "program.h"



/*----------------------------------------------------------------------------*/

#define ZVN_1          0x01
#define ZVN_2          0x04
#define ZVN_3          0x10
#define ZVN_4          0x40




/*----------------------------------------------------------------------------*/
static UINT8 zvn_mirror;

//    
//    result = 
//    data = 0x55;
//    result = 0;
//    result = spi_put(data);

/*----------------------------------------------------------------------------*/
void ZVN_Init(void) {
    gSignal1 = -1;
    gSignal2 = -1;
    gSignal3 = -1;
    gSignal4 = -1;
    gSignal5 = -1;
    gSignal6 = -1;
    zvn_mirror = 0x00U;
    //PORTDbits.RD4 = 0;//BEEP_CLR;//pwmrly_stop();
    //spi_put_zvono(0x00);
}

/*----------------------------------------------------------------------------*/
UINT8 ZVN_set(zvono_t zvono) {
    switch (zvono) {
        case ZVONO1:
            mcp_rly1_set(1);
            break;
        case ZVONO2:
            mcp_rly2_set(1);
            break;
        case ZVONO3:
            mcp_rly3_set(1);
            break;
        case ZVONO4:
            mcp_rly4_set(1);
            break;
        case ZVONO5:
            mcp_rly5_set(1);
            break;
        case ZVONO6:
            mcp_rly6_set(1);
            break;
        default:
            break;
    }
    //spi_put_zvono(zvn_mirror);
    if (zvn_mirror == 0x00) { // all relay is off
        PORTDbits.RD4 = 0;//BEEP_CLR;
    } else {
        PORTDbits.RD4 = 1;//BEEP_SET;
    }
    return 0;

}

/*----------------------------------------------------------------------------*/
UINT8 ZVN_clr(zvono_t zvono) {
    switch (zvono) {
        case ZVONO1:
            mcp_rly1_set(0);
            break;
        case ZVONO2:
            mcp_rly2_set(0);
            break;
        case ZVONO3:
            mcp_rly3_set(0);
            break;
        case ZVONO4:
            mcp_rly4_set(0);
            break;
        case ZVONO5:
            mcp_rly5_set(0);
            break;
        case ZVONO6:
            mcp_rly6_set(0);
            break;
        default:
            break;
    }
    
    return 0;

}

UINT8 ZVN_get(zvono_t zvono) {
    UINT8 temp;
    temp = 0;
    switch (zvono) {
        case ZVONO1:
            temp = ((rly_mirror & BIT_2) != 0);
            break;
        case ZVONO2:
            temp = ((rly_mirror & BIT_3) != 0);
            break;
        case ZVONO3:
            temp = ((rly_mirror & BIT_4) != 0);
            break;
        case ZVONO4:
            temp = ((rly_mirror & BIT_5) != 0);
            break;
        case ZVONO5:
            temp = ((rly_mirror & BIT_7) != 0);
            break;
        case ZVONO6:
            temp = ((rly_mirror & BIT_6) != 0);
            break;
        default:
            break;
    }
    return temp;
}

/*----------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/
static INT32 signal1;
static DWORD zv1_time;

PT_THREAD(zvono1_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay1IsEnabled == 1)&&(gSignal1 != -1) && (gPRGMValid != false)));
        if (gSignal1 == 0) {
            ZVN_clr(ZVONO1);
            gSignal1 = -1;
        } else if (gSignal1 == 100) {
            ZVN_set(ZVONO1);
            gSignal1 = -1;
        } else {
            signal1 = gSignal1 * 1000UL;
            zv1_time = TickGetDiv64K();
            ZVN_set(ZVONO1);
            gSignal1 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv1_time,signal1));
            ZVN_clr(ZVONO1);
        }
    }
    PT_END(pt);
}

/*----------------------------------------------------------------------------*/
static INT32 signal2;
static DWORD zv2_time;

PT_THREAD(zvono2_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay2IsEnabled == 1)&&(gSignal2 != -1)&& (gPRGMValid != false)));
        if (gSignal2 == 0) {
            ZVN_clr(ZVONO2);
            gSignal2 = -1;
        } else if (gSignal2 == 100) {
            ZVN_set(ZVONO2);
            gSignal2 = -1;
        } else {
            signal2 = gSignal2 * 1000UL;
            zv2_time = TickGetDiv64K();
            ZVN_set(ZVONO2);
            gSignal2 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv2_time,signal2));
            ZVN_clr(ZVONO2);
        }
    }
    PT_END(pt);
}

/*----------------------------------------------------------------------------*/
static INT32 signal3;
static DWORD zv3_time;

PT_THREAD(zvono3_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay3IsEnabled == 1)&&(gSignal3 != -1) && (gPRGMValid != false)));
        if (gSignal3 == 0) {
            ZVN_clr(ZVONO3);
            gSignal3 = -1;
        } else if (gSignal3 == 100) {
            ZVN_set(ZVONO3);
            gSignal3 = -1;
        } else {
            signal3 = gSignal3 * 1000UL;
            zv3_time = TickGetDiv64K();
            ZVN_set(ZVONO3);
            gSignal3 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv3_time,signal3));
            ZVN_clr(ZVONO3);
        }
    }
    PT_END(pt);
}

/*----------------------------------------------------------------------------*/

static INT32 signal4;
static DWORD zv4_time;
PT_THREAD(zvono4_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay4IsEnabled == 1)&&(gSignal4 != -1)&& (gPRGMValid != false)));
        if (gSignal4 == 0) {
            ZVN_clr(ZVONO4);
            gSignal4 = -1;
        } else if (gSignal4 == 100) {
            ZVN_set(ZVONO4);
            gSignal4 = -1;
        } else {
            signal4 = gSignal4 * 1000UL;
            zv4_time = TickGetDiv64K();
            ZVN_set(ZVONO4);
            gSignal4 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv4_time,signal4));
            ZVN_clr(ZVONO4);
        }
    }
    PT_END(pt);
}
/*----------------------------------------------------------------------------*/

static INT32 signal5;
static DWORD zv5_time;
PT_THREAD(zvono5_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay5IsEnabled == 1)&&(gSignal5 != -1)&& (gPRGMValid != false)));
        if (gSignal5 == 0) {
            ZVN_clr(ZVONO5);
            gSignal5 = -1;
        } else if (gSignal5 == 100) {
            ZVN_set(ZVONO5);
            gSignal5 = -1;
        } else {
            signal5 = gSignal5 * 1000UL;
            zv5_time = TickGetDiv64K();
            ZVN_set(ZVONO5);
            gSignal5 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv5_time,signal5));
            ZVN_clr(ZVONO5);
        }
    }
    PT_END(pt);
}
/*----------------------------------------------------------------------------*/

static INT32 signal6;
static DWORD zv6_time;
PT_THREAD(zvono6_task(pt_t *pt)) {
    PT_BEGIN(pt);
    for (;;) {
        PT_WAIT_UNTIL(pt, ((AppConfig.relay6IsEnabled == 1)&&(gSignal6 != -1)&& (gPRGMValid != false)));
        if (gSignal6 == 0) {
            ZVN_clr(ZVONO6);
            gSignal6 = -1;
        } else if (gSignal6 == 100) {
            ZVN_set(ZVONO6);
            gSignal6 = -1;
        } else {
            signal6 = gSignal6 * 1000UL;
            zv6_time = TickGetDiv64K();
            ZVN_set(ZVONO6);
            gSignal6 = -1;
            PT_WAIT_UNTIL(pt, pt_is_dly_end(zv6_time,signal6));
            ZVN_clr(ZVONO6);
        }
    }
    PT_END(pt);
}
/*----------------------------------------------------------------------------*/
