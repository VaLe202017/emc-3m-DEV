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
    //mcp_rly1_set(0);
    //mcp_rly2_set(0);
    LATDbits.LATD2=0; //inicijalizacija na LOW
    TRISDbits.TRISD2=0;//inicijalizacija na output
    LATDbits.LATD3=0;
    TRISDbits.TRISD3=0;
}

/*----------------------------------------------------------------------------*/
UINT8 ZVN_set(zvono_t zvono) {
    switch (zvono) {
        case ZVONO1:
            //mcp_rly1_set(1);
            LATDbits.LATD2=1;//manipulacija HIGH LOW
            AppConfig.relay1IsEnabled=1;
            break;
        case ZVONO2:
            //mcp_rly2_set(1);
            LATDbits.LATD3=1;
            AppConfig.relay2IsEnabled=1;
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
            //mcp_rly1_set(0);
            LATDbits.LATD2=0;
            break;
        case ZVONO2:
            //mcp_rly2_set(0);
            LATDbits.LATD3=0;
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
            //temp = ((rly_mirror & BIT_1) != 0);
            temp=PORTDbits.RD2;
            break;
        case ZVONO2:
            //temp = ((rly_mirror & BIT_5) != 0);
            temp=PORTDbits.RD3;
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