/*********************************************************************
 *
 *                  PIC32 Boot Loader
 *
 *********************************************************************
 * FileName:        NVMem.c
 * Dependencies:
 * Processor:       PIC32
 *
 * Compiler:        MPLAB C32
 *                  MPLAB IDE
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PIC32 Microcontroller is intended
 * and supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PIC32 Microcontroller products.
 * The software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *
 * $Id:  $
 * $Name: $
 *
 **********************************************************************/
#include <app.h>

const UINT countPerMicroSec = ((80000000ul / 1000000) / 2);
#define NVMemIsError()    (NVMCON & (_NVMCON_WRERR_MASK | _NVMCON_LVDERR_MASK))




UINT __attribute__((nomips16)) NVMemOperation(UINT nvmop) {
    int int_status;
    int susp;

    // Disable DMA & Disable Interrupts
#ifdef _DMAC
    int_status = INTDisableInterrupts();
    susp = DmaSuspend();
#else
    int_status = INTDisableInterrupts();
#endif	// _DMAC

    // Enable Flash Write/Erase Operations
    NVMCON = NVMCON_WREN | nvmop;
    // Data sheet prescribes 6us delay for LVD to become stable.
    // To be on the safer side, we shall set 7us delay.
    delay_us(7);

    NVMKEY = 0xAA996655;
    NVMKEY = 0x556699AA;
    NVMCONSET = NVMCON_WR;

    // Wait for WR bit to clear
    while (NVMCON & NVMCON_WR);

    // Disable Flash Write/Erase operations
    NVMCONCLR = NVMCON_WREN;


    // Enable DMA & Enable Interrupts
#ifdef _DMAC
    DmaResume(susp);
    INTRestoreInterrupts(int_status);
#else
    INTRestoreInterrupts(int_status);
#endif // _DMAC

    // Return Error Status
    return (NVMemIsError());
}

UINT NVMemClearError(void) {
    unsigned int res;

    res = NVMemOperation(NVMOP_NOP);

    return res;
}

UINT NVMemErasePage(void* address) {
    UINT res;

    // Convert Address to Physical Address
    NVMADDR = KVA_TO_PA((unsigned int) address);

    // Unlock and Erase Page
    res = NVMemOperation(NVMOP_PAGE_ERASE);

    // Return WRERR state.
    return res;

}