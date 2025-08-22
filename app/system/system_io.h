/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// INPUT OUTPUT NAMING INPUT(I) OUTPUT(0) I/O(INPUT/OUTPUT) PIC31MX695F512L
// PORT A
#define NUA0        BIT_0  //17 NOT USED
#define DIR2        BIT_1  //38 I/O |DO NOT TOGGLE| TCK/RA1 DIR2 
#define DNTA2       BIT_2  //58 I/O |DO NOT TOGGLE| SCL2/RA2 DS.SCL 
#define DNTA3       BIT_3  //59 I/O |DO NOT TOGGLE| SDA2/RA3 DS.SDA 
#define NUA4        BIT_4  //60 NOT USED
#define NUA5        BIT_5  //61 NOT USED
#define NUA6        BIT_6  //91 NOT USED
#define NUA7        BIT_7  //92 NOT USED
#define NUA9        BIT_9  //28 NOT USED
#define NUA10       BIT_10 //29 NOT USED
#define ETH_PDOWN   BIT_14 //66 I/O |PULLDOWN| AETXCLK/SCL1/INT3/RA14 ETH.EINT 
#define MCP_INT     BIT_15 //67 I/O AETXEN/SDA1/INT4/RA15 INT_MCP

#define PORTA_NOT_USED  (NUA0 |NUA5 |NUA4 |NUA6 |NUA7 |NUA9 |NUA10)
#define PORTA_INPUT     (MCP_INT)
#define PORTA_OUTPUT    (ETH_PDOWN | DIR2)
#define PORTA_OD        (0)

// PORT B
#define FLT1       BIT_0   //25 I PGED1/AN0/CN2/RB0 FLT1
#define FLT2       BIT_1   //24 I PGEC1/AN1/CN3/RB1 FLT2
#define NUB2       BIT_2   //23 NOT USED 
#define NUB3       BIT_3   //22 NOT USED
#define NUB4       BIT_4   //21 NOT USED
#define NUB5       BIT_5   //20 NOT USED
#define DNTB6      BIT_6   //26 O PGEC2/AN6/OCFA/RB4
#define DNTB7      BIT_7   //27 O PGED2/AN7/RB7
#define NUB8       BIT_8   //32 NOT USED AN8/C1OUT/RB8
#define NUB9       BIT_9   //33 NOT USED AN9/C2OUT/RB9
#define NUB10      BIT_10  //34 NOT USED AN10/CVREFOUT/PMA12
#define DNTB11     BIT_11  //35 I/O |DO NOT TOGGLE| AN10/CVREFOUT/PMA13/RB10 ETH.ERXERR
#define DNTB12     BIT_12  //41 I/O |DO NOT TOGGLE| AN12/ERXD0/AECRS/PMA11/RB12 ETH.ERXD0
#define DNTB13     BIT_13  //42 I/O |DO NOT TOGGLE| AN12/ERXD1/AECIK/PMA10/RB12 ETH.ERXD1
#define NUB14      BIT_14  //43 NOT USED
#define NUB15      BIT_15  //44 NOT USED

#define PORTB_NOT_USED  (NUB2 | NUB3 | NUB4 | NUB5 | NUB8 | NUB9 | NUB10 | NUB14 | NUB15)
#define PORTB_INPUT     (FLT1 | FLT2)
#define PORTB_OUTPUT    (0)
#define PORTB_OD        (0)

//PORT C
#define NUC1        BIT_1  //6 NOT USED
#define NUC2        BIT_2  //7 NOT USED
#define NUC3        BIT_3  //8 NOT USED
#define NUC4        BIT_4  //9 NOT USED 
#define PIN_OSC1    BIT_12 //63 OSC1/CLK1/RC12 OSC1
#define NUC13       BIT_13 //73 NOT USED
#define DS_32KHZ    BIT_14 //74 I/O SOSCO/T1CK/CN0/RC14 DS.32KhZ
#define PIN_OSC2    BIT_15 //64 OSC2/CLK0/RC15 OSC2

#define PORTC_NOT_USED  (NUC1 |NUC2 |NUC3 |NUC4 | NUC13| PIN_OSC1 | DS_32KHZ |PIN_OSC2)
#define PORTC_INPUT     (0)
#define PORTC_OUTPUT    (0)
#define PORTC_OD        (0)

//PORT D
#define DS_INT      BIT_0   //72 I/O SDO1/OC1/RC13 DS.INT
#define OE2         BIT_1   //76 O OC2/RD1 BUZZER
#define RLY1        BIT_2   //77 O OC3/RD2 RLY1
#define RLY2        BIT_3   //78 O OC4/RD3 RLY2
#define NUD4        BIT_4   //81 I/O |NOT USED| OC5/PMWR/CN13/RD4 REZ-3 
#define NUD5        BIT_5   //82 NOT USED
#define DNTD6       BIT_6   //83 I/O ETXEN/PMD12/CN15/RD6 ETH.ETXEN
#define NUD7        BIT_7   //84 NOT USED
#define DNTD8       BIT_8   //68 I/O |DO NOT TOGGLE| RTCC/EMDIO/AEMDIO/IC1/RD8 ETH.EMDIO 
#define NUD9        BIT_9   //69 NOT USED
#define NUD10       BIT_10  //70 NOT USED
#define DNTD11      BIT_11  //71 I/O |DO NOT TOGGLE| EMDC/AEMDC/IC4/PMA14/RD1 ETH.EMDC 
#define NUD12       BIT_12  //79 I/O ETXD1/IC5/PMD12/RD12 REZ 1 
#define NUD13       BIT_13  //80 I/O ETXD2/PMD12/CN19/RD13 REZ 2
#define NUD14       BIT_14  //47 NOT USED
#define NUD15       BIT_15  //48 NOT USED

#define PORTD_NOT_USED  (NUD4 | NUD5  | NUD7 | NUD12 | NUD13 | NUD9 | NUD10 | NUD14 | NUD15)
#define PORTD_INPUT     (DS_INT)
#define PORTD_OUTPUT    ( RLY2 | OE2 | RLY1)
#define PORTD_OD        (0)

//PORT E
#define NUE0        BIT_0 //93 NOT USED
#define NUE1        BIT_1 //94 NOT USED
#define NUE2        BIT_2 //98 NOT USED
#define NUE3        BIT_3 //99 NOT USED
#define NUE4        BIT_4 //100 NOT USED
#define NUE5        BIT_5 //3 NOT USED
#define NUE6        BIT_6 //4 NOT USED
#define NUE7        BIT_7 //5 NOT USED
#define NUE8        BIT_8 //18 NOT USED
#define NUE9        BIT_9 //19 NOT USED

#define PORTE_NOT_USED  (NUE0 |NUE1 |NUE2 |NUE3 |NUE4 |NUE5 |NUE6 |NUE7 |NUE8 |NUE9 )
#define PORTE_INPUT     (0)
#define PORTE_OUTPUT    (0)
#define PORTE_OD        (0)

//PORT F
#define DNTF0       BIT_0  //87 I/O |DO NOT TOGGLE| C1RX/ETXD1/PMD11/RF0 ETH.ETXD1 
#define DNTF1       BIT_1  //88 I/O |DO NOT TOGGLE| C1TX/ETXD0/PMD10/RF1 ETH.ETXD0 
#define DNTF2       BIT_2  //52 I/O |DO NOT TOGGLE| SDA3/SDI3/U1RX/RF2 SDA-MCP
#define DIR1        BIT_3  //51 I/O |DO NOT TOGGLE| USBID/RF3
#define SER2RX      BIT_4  //49 I SDA5/SDI4/U2RX/PMA9/CN21/RD15 RX1
#define SER2TX      BIT_5  //50 O SCL5/SDO4/U2TX/PMA8/CN18/RF5 TX1
#define DNTF8       BIT_8  //53 O |DO NOT TOGGLE| SCL3/SDO3/U1TX/RF8 SCL-MCP
#define SER5RX      BIT_12 //40 I AC1RX/SS4/U5RX/U2CTS/RF12 RX2
#define SER5TX      BIT_13 //39 O AC1TX/SCK4/U5TX/U2RTS/RF13 TX2

#define PORTF_NOT_USED  (0)
#define PORTF_INPUT     (SER2RX | SER5RX )
#define PORTF_OUTPUT    (DIR1 | SER2TX | SER5TX)
#define PORTF_OD        (0)

//PORT G
#define NUG0        BIT_0  //90 NOT USED
#define NUG1        BIT_1  //89 NOT USED
#define NUG2        BIT_2  //57 NOT USED
#define NUG3        BIT_3  //56 NOT USED
#define NUG6        BIT_6  //10 NOT USED
#define NUG7        BIT_7  //11 SCRS/SDA4/SDI2/U3RX/PMA4/CN9/RG7 IR
#define DNTG8       BIT_8  //12 I/O ERXDV/AERXDV/ECRSDV/AECRSDV/SCL4/SDO2/U3TX/PMA3/CN10/RG8 ETH.ECRS DV
#define DNTG9       BIT_9  //14 I/O ERXCLK/AERXCLK/EREFCLK/AEREFCLK/SS2/U6RX/U3CTS/PMA2/CN11/RG9 ETH.EREF CLK
#define NUG12       BIT_12 //96 NOT USED
#define NUG13       BIT_13 //97 NOT USED
#define NUG14       BIT_14 //95 NOT USED
#define NUG15       BIT_15 //1 NOT USED

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

//test
#define RLY1_CLR        do{mPORTAClearBits(RLY1);}while(0)
#define RLY1_SET        do{mPORTASetBits(RLY1);}while(0)

#define RLY2_CLR        do{mPORTAClearBits(RLY2);}while(0)
#define RLY2_SET        do{mPORTASetBits(RLY2);}while(0)


// TRUE ako je 0;
#define IS_KEY_PLUS_PRESSED     ((PORTB & KEY1)== 0U)
#define IS_KEY_ENTR_PRESSED     ((PORTB & KEY2)== 0U)
#define IS_KEY_MINUS_PRESSED    ((PORTB & KEY3)== 0U)

#define IS_INTA_PRESSED    ((PORTA & (MCP_INT)    ) == 0U)

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
