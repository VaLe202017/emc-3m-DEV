/*  (C) Marwan Khoury
 *   system_hal.h
 */

#ifndef __SYSTEM_HAL_H__
#define	__SYSTEM_HAL_H__

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// INPUT OUTPUT NAMING
// PORT A
#define NUA0        BIT_0  //17 
#define DIR2        BIT_1  //38 
#define DNTA2       BIT_2  //58 
#define DNTA3       BIT_3  //59 
#define NUA4        BIT_4  //60 
#define NUA5        BIT_5  //61 
#define NUA6        BIT_6  //91 
#define NUA7        BIT_7  //92 
#define NUA9        BIT_9  //28 
#define NUA10       BIT_10 //29
#define ETH_PDOWN   BIT_14 //66
#define MCP_INT     BIT_15 //67

#define PORTA_NOT_USED  (NUA0 |NUA5 |NUA4 |NUA6 |NUA7 |NUA9 |NUA10)
#define PORTA_INPUT     (MCP_INT)
#define PORTA_OUTPUT    (ETH_PDOWN | DIR2)
#define PORTA_OD        (0)

// PORT B
#define FLT1       BIT_0   //25
#define FLT2       BIT_1   //24
#define NUB2       BIT_2   //23
#define NUB3       BIT_3   //22
#define NUB4       BIT_4   //21
#define NUB5       BIT_5   //20
#define DNTB6      BIT_6   //26
#define DNTB7      BIT_7   //27
#define NUB8       BIT_8   //32
#define NUB9       BIT_9   //33
#define NUB10      BIT_10  //34
#define DNTB11     BIT_11  //35  ETH.ERXERR
#define DNTB12     BIT_12  //41  ETH.ERXD0
#define DNTB13     BIT_13  //42  ETH.ERXD1
#define NUB14      BIT_14  //43
#define NUB15      BIT_15  //44

#define PORTB_NOT_USED  (NUB2 | NUB3 | NUB4 | NUB5 | NUB8 | NUB9 | NUB10 | NUB14 | NUB15)
#define PORTB_INPUT     (FLT1 | FLT2)
#define PORTB_OUTPUT    (0)
#define PORTB_OD        (0)

//PORT C
#define NUC1        BIT_1  //6
#define NUC2        BIT_2  //7
#define NUC3        BIT_3  //8
#define NUC4        BIT_4  //9  
#define PIN_OSC1    BIT_12 //63
#define NUC13       BIT_13 //73
#define DS_32KHZ    BIT_14 //74
#define PIN_OSC2    BIT_15 //64

#define PORTC_NOT_USED  (NUC1 |NUC2 |NUC3 |NUC4 | NUC13| PIN_OSC1 | DS_32KHZ |PIN_OSC2)
#define PORTC_INPUT     (0)
#define PORTC_OUTPUT    (0)
#define PORTC_OD        (0)

//PORT D
#define DS_INT      BIT_0   //72
#define OE2         BIT_1   //76 buzzer
#define RLY1        BIT_2   //77
#define RLY2        BIT_3   //78
#define NUD4        BIT_4   //81
#define NUD5        BIT_5   //82
#define DNTD6       BIT_6   //83  ETH.ETXEN
#define NUD7        BIT_7   //84
#define DNTD8       BIT_8   //68  ETH.EMDIO
#define NUD9        BIT_9   //69
#define NUD10       BIT_10  //70
#define DNTD11      BIT_11  //71  ETH.EMDC
#define NUD12       BIT_12  //79
#define NUD13       BIT_13  //80
#define NUD14       BIT_14  //47
#define NUD15       BIT_15  //48

#define PORTD_NOT_USED  (NUD4 | NUD5  | NUD7 | NUD12 | NUD13 | NUD9 | NUD10 | NUD14 | NUD15)
#define PORTD_INPUT     (DS_INT)
#define PORTD_OUTPUT    ( RLY2 | OE2 | RLY1)
#define PORTD_OD        (0)

//PORT E
#define NUE0        BIT_0 //93
#define NUE1        BIT_1 //94
#define NUE2        BIT_2 //98
#define NUE3        BIT_3 //99
#define NUE4        BIT_4 //100
#define NUE5        BIT_5 //3
#define NUE6        BIT_6 //4
#define NUE7        BIT_7 //5
#define NUE8        BIT_8 //18
#define NUE9        BIT_9 //19

#define PORTE_NOT_USED  (NUE0 |NUE1 |NUE2 |NUE3 |NUE4 |NUE5 |NUE6 |NUE7 |NUE8 |NUE9 )
#define PORTE_INPUT     (0)
#define PORTE_OUTPUT    (0)
#define PORTE_OD        (0)

//PORT F
#define DNTF0       BIT_0  //87 ETH.ETXD1
#define DNTF1       BIT_1  //88 ETH.ETXD0
#define DNTF2       BIT_2  //52  SDA-MCP
#define DIR1        BIT_3  //51
#define SER2RX      BIT_4  //49
#define SER2TX      BIT_5  //50
#define DNTF8       BIT_8  //53  SCL-MCP
#define SER5RX      BIT_12 //40
#define SER5TX      BIT_13 //39

#define PORTF_NOT_USED  (0)
#define PORTF_INPUT     (SER2RX | SER5RX )
#define PORTF_OUTPUT    (DIR1 | SER2TX | SER5TX)
#define PORTF_OD        (0)

//PORT G
#define NUG0        BIT_0  //90 
#define NUG1        BIT_1  //89 
#define NUG2        BIT_2  //57 
#define NUG3        BIT_3  //56 
#define NUG6        BIT_6  //10 
#define NUG7        BIT_7  //11 IR?
#define DNTG8       BIT_8  //12 ETH.ECRS DV
#define DNTG9       BIT_9  //14 ETH.EREF CLK
#define NUG12       BIT_12 //96 
#define NUG13       BIT_13 //97 
#define NUG14       BIT_14 //95 
#define NUG15       BIT_15 //1

#define PORTG_NOT_USED  (NUG0 | NUG1 | NUG2 | NUG3 | NUG6 | NUG7 | NUG12 | NUG13 | NUG15 | NUG14)
#define PORTG_INPUT     (0)
#define PORTG_OUTPUT    (0)
#define PORTG_OD        (0)


/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// Pin manipoulation defines

#define ETH_PWR_SET     do{mPORTASetBits(ETH_PDOWN);mPORTASetPinsDigitalIn(ETH_PDOWN);}while(0)
#define ETH_PWR_CLR     do{mPORTASetPinsDigitalOut(ETH_PDOWN);mPORTAClearBits(ETH_PDOWN);}while(0)

#define SER5_TX         do{mPORTFSetBits(DIR2);}while(0)
#define SER5_RX         do{mPORTFClearBits(DIR2);}while(0)

#define SER2_TX         do{mPORTFSetBits(DIR1);}while(0)
#define SER2_RX         do{mPORTFClearBits(DIR1);}while(0)

#define LE1_SET          do{mPORTDSetBits(LE1);}while(0)
#define LE1_CLR          do{mPORTDClearBits(LE1);}while(0)

#define LE2_SET          do{mPORTFSetBits(LE2);}while(0)
#define LE2_CLR          do{mPORTFClearBits(LE2);}while(0)

#define OE1_INP         do{mPORTDCloseBits(OE1);mPORTDSetPinsDigitalIn(OE1);}while(0)
#define OE1_SET         do{mPORTDSetBits(OE1);}while(0)
#define OE1_CLR         do{mPORTDClearBits(OE1);}while(0)

#define OE2_INP         do{mPORTDCloseBits(OE2);mPORTDSetPinsDigitalIn(OE2);}while(0)
#define OE2_SET         do{mPORTDSetBits(OE2);}while(0)
#define OE2_CLR         do{mPORTDClearBits(OE2);}while(0)

#define OEBUZ_INP       do{mPORTDCloseBits(OEBUZ);mPORTDSetPinsDigitalIn(OEBUZ);}while(0)
#define OEBUZ_SET       do{mPORTDSetBits(OEBUZ);}while(0)
#define OEBUZ_CLR       do{mPORTDClearBits(OEBUZ);}while(0)

#define BEEP_SET        do{sys_oc5_run(1250);}while(0)
#define BEEP_CLR        do{sys_oc5_stop();}while(0)

// TRUE ako je 0;
#define IS_KEY_PLUS_PRESSED     ((PORTB & KEY1)== 0U)
#define IS_KEY_ENTR_PRESSED     ((PORTB & KEY2)== 0U)
#define IS_KEY_MINUS_PRESSED    ((PORTB & KEY3)== 0U)

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/


#endif	/* __SYSTEM_HAL_H__ */

