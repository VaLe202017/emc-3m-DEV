/*  (C) Marwan Khoury
 *  system.h
 */

#ifndef __SYSTEM_H__
#define	__SYSTEM_H__

#include "system_io.h"

/*----------------------------------------------------------------------------*/


#define _vInLine        inline void      __attribute__ ((always_inline))
#define _bInLine        inline bool      __attribute__ ((always_inline))
#define _u32InLine      inline uint32_t  __attribute__ ((always_inline))

#define _Weak           __attribute__((weak)) 

#define sysENTER_CRITICAL()   __builtin_disable_interrupts()
#define sysEXIT_CRITICAL()    __builtin_enable_interrupts()
#define INT_LOCK              __builtin_disable_interrupts()
#define INT_UNLOCK            __builtin_enable_interrupts()

#define sys_IDLE               
#define sys_SLEEP              
#define sys_RESET              SoftReset()


#define SYS_CLK_FrequencySystemGet()        (80000000ul)
#define SYS_CLK_FrequencyPeripheralGet()    (SYS_CLK_FrequencySystemGet() /(1 << OSCCONbits.PBDIV))
#define SYS_CLK_FrequencyInstructionGet()   (SYS_CLK_FrequencySystemGet())

#define SYS_INT4_IPL    5
#define SYS_INT4_SIPL   1

#define SYS_T1_IPL      5
#define SYS_T1_SIPL     1

#define SYS_T4_IPL      5
#define SYS_T4_SIPL     1

#define SER4_IPL        5
#define	SER4_SIPL       1

#define SYS_INT0_IPL    5
#define SYS_INT0_SIPL   1

/*----------------------------------------------------------------------------*/

//extern volatile UINT gMinuitFlag;

//#define CLOCK_UPDATE_FROM_DS gMinuitFlag++

/*----------------------------------------------------------------------------*/
/* system_iic2.c */
void sys_iic2_init();
BOOL sys_iic2_check(UINT address);
BOOL sys_iic2_write(UINT address, UINT reg, BYTE buf[], UINT count);
BOOL sys_iic2_read(UINT address, UINT reg, BYTE buf[], UINT count);
/* system_iic3.c */
void sys_iic3_init();
BOOL sys_iic3_check(UINT address);
BOOL sys_iic3_write(UINT address, UINT reg, BYTE buf[], UINT count);
BOOL sys_iic3_read(UINT address, UINT reg, BYTE buf[], UINT count);

/* system_int4.c */
void sys_int4_init();
uint8_t sys_int4Signal_get();
void sys_int4_force();

/* system_io.c */
void sys_io_init();
void sys_us_delay(uint32_t usec);
void sys_ms_delay(uint32_t msec);

/* system_keys.c */
bool sys_keys_enter_isSet();
bool sys_keys_minus_isSet();

/* system_oc5.c */
void sys_oc5_stop();
void sys_oc5_run(uint16_t duty);
void sys_oc5_duty_set(uint16_t duty);

/* system_onewire.c */
int16_t sys_1wire_read_temperature(int16_t* tsValue);
int16_t sys_1wire_start_9bits();

/* system_pwm.c */
void sys_pwm_stop();
void sys_pwm_run(uint16_t duty);

/* system_ser4.c */
void sys_ser5_init();
void sys_ser5_tx_buf_send(uint8_t *buf, uint8_t len);

/* system_ser2.c */
void sys_ser2_init();
void sys_ser2_tx_buf_send(uint8_t *buf, uint8_t len);


/* system_spi1.c */
void sys_spi1_init();
void sys_spi1_send(uint8_t *buf, uint8_t cnt);

/* system_spi4.c */
void sys_spi4_init();
void sys_spi4_send(uint8_t *buf, uint8_t cnt);

/* system_t1.c */
void sys_t1_init();
uint32_t sys_t1_get();
bool sys_t1_is_dly_end(uint32_t ticks1, uint32_t dt);
void sys_t1_ser4ticks_reset();
bool sys_t1_ser4ticks_tout_end();

#endif	/* __SYSTEM_H__ */

