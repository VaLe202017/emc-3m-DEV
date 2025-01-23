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
//#define FLASH_PAGE_PROG 0xBD031000UL
#define FLASH_PAGE_PROG 0xBD06A000UL
//const unsigned int flashData __attribute__ ((aligned (FLASH_PAGE_SIZE))) = {0};

static UINT pagebuff[1024];
static UINT result;

/*----------------------------------------------------------------------------*/
void APP_SaveSettings(void) {
    //INTDisableInterrupts();
    //NVMClearError();
#if APP_EMC == EDC130
    AppConfig.Flag.bInConfigMode = TRUE;
#endif
    if (NVMemClearError() == 0UL) {
        result = NVMemErasePage((void *) FLASH_PAGE_PROG);
        if (result == 0UL) {
            AppConfig.flashCounter++;
            NVMProgram((void *) (FLASH_PAGE_PROG), (const void *) &AppConfig, sizeof (APP_CONFIG), (void*) &pagebuff);
        }
    }
}

/*----------------------------------------------------------------------------*/
extern void app_defaults_load(void);

void APP_LoadSettings(void) {
    INTDisableInterrupts();
    memcpy((void*) &AppConfig, (void *) FLASH_PAGE_PROG, sizeof (APP_CONFIG));
    INTEnableInterrupts();
    if (AppConfig.flashCounter == 0xFFFFFFFFUL) {
        app_defaults_load();
    }
}