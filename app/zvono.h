/*
 * File:   zvono.h
 * Author: Marwan
 * Desc. : Function for turning on and off the bells(zvono) and hold the last
 *         status.
 */

#ifndef ZVONO_H
#define	ZVONO_H

//#define PRGM_SIZE 4096U
//#define PRGM_LINES 800U
APP_EXT BYTE gPRGM[PRGM_SIZE];
APP_EXT volatile BOOL gPRGMValid;

APP_EXT volatile BOOL gPRGMStatus;


/*----------------------------------------------------------------------------*/
typedef enum {
    ZVONO1,
    ZVONO2,
    ZVONO3,
    ZVONO4,
    ZVONO5,
    ZVONO6
} zvono_t;

APP_EXT INT32 gSignal1;
APP_EXT INT32 gSignal2;
APP_EXT INT32 gSignal3;
APP_EXT INT32 gSignal4;
APP_EXT INT32 gSignal5;
APP_EXT INT32 gSignal6;
APP_EXT UINT8 rly_mirror;
/*----------------------------------------------------------------------------*/
void ZVN_Init(void);
UINT8 ZVN_set(zvono_t zvono);
UINT8 ZVN_clr(zvono_t zvono);
UINT8 ZVN_get(zvono_t zvono);

PT_THREAD(zvono1_task(pt_t *pt));
PT_THREAD(zvono2_task(pt_t *pt));
PT_THREAD(zvono3_task(pt_t *pt));
PT_THREAD(zvono4_task(pt_t *pt));
PT_THREAD(zvono5_task(pt_t *pt));
PT_THREAD(zvono6_task(pt_t *pt));


#endif	/* ZVONO_H */
