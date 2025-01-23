/*  (C) Marwan Khoury
 *   HardwareProfile.h
 */

#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H


#define SYS_CLK_FrequencySystemGet()        (80000000ul)
#define SYS_CLK_FrequencyPeripheralGet()    (SYS_CLK_FrequencySystemGet() /(1 << OSCCONbits.PBDIV))
#define SYS_CLK_FrequencyInstructionGet()   (SYS_CLK_FrequencySystemGet())

/*----------------------------------------------------------------------------*/
#define GetSystemClock()        SYS_CLK_FrequencySystemGet()
#define GetPeripheralClock()	SYS_CLK_FrequencyPeripheralGet()
#define GetInstructionClock()	SYS_CLK_FrequencyInstructionGet()

/*----------------------------------------------------------------------------*/
// External National PHY configuration check system_configbits.c
//#define	PHY_CONFIG_ALTERNATE    // alternate configuration used
#define	PHY_RMII                        // external PHY runs in RMII mode
#define	PHY_ADDRESS		0x01    // the address of the National DP83848 PHY

#endif // #ifndef HARDWARE_PROFILE_H