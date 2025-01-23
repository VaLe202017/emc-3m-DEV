/*******************************************************************************
  PIC32 ESK BSP initialization file

  Summary:
    BSP Module for Elak Net Monitor
    
  Description:
    Performs the BSP initialization of the PIC32 ESK board
 *******************************************************************************/

#include "app.h"
// PFM KERNEL AND USER MODE MAPPING
//  Virtual Address                     Physical Address
//  ---------------                     ----------------
//  0xBFC0_2FFF or  *****************   0x1FC0_2FFF
//  0X9FC0_2FFF     *               *
//                  *               *
//                  *  Boot Flash   *
//  0xBFC0_0000 or  *               *
//  0x9FC0_0000     *****************   0x1FC0_0000


//                  *****************
//                  *               *
//                  *   Optional    *
//                  * User Program  *
//                  *     Flash     *
//                  *               *
//                  *               *
//  0x7D00_0000 +   *               *   0xBD00_0000 +
//  BMXPUPBA        *****************   BMXPUPBA
//                  *               *
//                  *   Program     *
//                  *    Flash      *
//  0xBD00_0000 or  *               *
//  0x9D00_0000     *****************   0x1D00_0000

#define FLASH_PAGE_SIZE 4096
#define FLASH_PAGE_PROG1 0xBD07F000UL
//#define FLASH_PAGE_PROG 0xBD06A000UL

//#define NVMemIsError()    (NVMCON & (_NVMCON_WRERR_MASK | _NVMCON_LVDERR_MASK))


//const unsigned int flashData __attribute__ ((aligned (FLASH_PAGE_SIZE))) = {0};

static UINT pagebuff1[1024];
static UINT result;

/*----------------------------------------------------------------------------*/
void PRGM_SaveSettings(void) {
    if (NVMemClearError() == 0UL) {
        result = NVMemErasePage((void *) FLASH_PAGE_PROG1);
        if (result == 0UL) {
            NVMProgram((void *) (FLASH_PAGE_PROG1), (const void *) &gPRGM[0], PRGM_SIZE, (void*) &pagebuff1);
        }
    }
}
void delay_us(UINT us) {
    UINT count;
    for (count = 0; count < 700000UL; count++) {
        ;
    }
}

/*----------------------------------------------------------------------------*/
void PRGM_LoadSettings(void) {
    UINT *ptr;
    INTDisableInterrupts();
    memcpy((void*) &gPRGM[0], (const void *) FLASH_PAGE_PROG1, PRGM_SIZE);
    INTEnableInterrupts();
    ptr = (UINT*)&gPRGM[0];
    if (*ptr == 0xFFFFFFFFUL) {
        memset((void*) &gPRGM[0], 0x00, PRGM_SIZE);
        gPRGMValid = false;
        return;
    }
    gPRGMValid = true;
    return;
}


