/*  (C) Marwan Khoury
 *   system_configbits.c
 */

#include "app.h"

#if defined(__DEBUG)
//DEVCFG0
#pragma config CP       = OFF           // Code Protect
#pragma config BWP      = OFF           // Boot Flash Write Protect
#pragma config PWP      = OFF           // Program Flash Write Protect
#pragma config ICESEL   = ICS_PGx2      // ICD/ICD comm Channel Select
#pragma config DEBUG    = ON

//DEVCFG1
#pragma config FWDTEN   = OFF           // Watchdog Timer
#pragma config WDTPS    = PS1           // Watchdog Timer Postscale
#pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
#pragma config FPBDIV   = DIV_1         // Peripheral Clock divisor
#pragma config OSCIOFNC = OFF           // CLKO Enable
#pragma config POSCMOD  = XT            // Primary Oscillator
#pragma config IESO     = OFF           // Internal External Switch Over
#pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable
#pragma config FNOSC    = PRIPLL        // @chngd Oscillator Selection

//DEVCFG2
#pragma config FPLLODIV = DIV_1         // PLL Output Divider
#pragma config UPLLEN   = OFF           // USB PLL Enable
#pragma config UPLLIDIV = DIV_1         // USB PLL Input Divider
#pragma config FPLLMUL  = MUL_20        // PLL Multiplier
#pragma config FPLLIDIV = DIV_2         // PLL Input Divider

//DEVCFG3
#pragma config  FVBUSONIO   = OFF
#pragma config  FUSBIDIO    = OFF
//#pragma config  FCANIO      = OFF
#pragma config  FETHIO      = ON        // external PHY in Default Ethernet
#pragma config  FMIIEN      = OFF       //RMII/alternate configuration
#pragma config  FSRSSEL     = PRIORITY_0

#else // block reading mem
//DEVCFG0
#pragma config CP       = ON           // Code Protect
#pragma config BWP      = OFF           // Boot Flash Write Protect
#pragma config PWP      = OFF           // Program Flash Write Protect
#pragma config ICESEL   = ICS_PGx2      // ICD/ICD comm Channel Select
#pragma config DEBUG    = OFF

//DEVCFG1
#pragma config FWDTEN   = OFF           // Watchdog Timer
#pragma config WDTPS    = PS1           // Watchdog Timer Postscale
#pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
#pragma config FPBDIV   = DIV_1         // Peripheral Clock divisor
#pragma config OSCIOFNC = OFF           // CLKO Enable
#pragma config POSCMOD  = XT            // Primary Oscillator
#pragma config IESO     = OFF           // Internal External Switch Over
#pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable
#pragma config FNOSC    = PRIPLL        // @chngd Oscillator Selection

//DEVCFG2
#pragma config FPLLODIV = DIV_1         // PLL Output Divider
#pragma config UPLLEN   = OFF           // USB PLL Enable
#pragma config UPLLIDIV = DIV_1         // USB PLL Input Divider
#pragma config FPLLMUL  = MUL_20        // PLL Multiplier
#pragma config FPLLIDIV = DIV_2         // PLL Input Divider

//DEVCFG3
#pragma config  FVBUSONIO   = OFF
#pragma config  FUSBIDIO    = OFF
//#pragma config  FCANIO      = OFF
#pragma config  FETHIO      = ON        // external PHY in Default Ethernet
#pragma config  FMIIEN      = OFF       //RMII/alternate configuration
#pragma config  FSRSSEL     = PRIORITY_0
#endif

