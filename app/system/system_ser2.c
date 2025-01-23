/*  (By) Marwan Khoury
 *  system_ser1.c
 */

#include "app.h"
/*----------------------------------------------------------------------------*/
//stopwatch
#define _UX         UART2
#define _UX_VECTOR  _UART_2_VECTOR
#define UART_ISR    _IntUART2Handler

#define TX_INT_EN  INTEnable(INT_SOURCE_UART_TX(_UX), INT_ENABLED)
#define TX_INT_DIS INTEnable(INT_SOURCE_UART_TX(_UX), INT_DISABLED)

#define RX_INT_EN  INTEnable(INT_SOURCE_UART_RX(_UX), INT_ENABLED)
#define RX_INT_DIS INTEnable(INT_SOURCE_UART_RX(_UX), INT_DISABLED)


#define SERIAL_LEN      100ul

static volatile bool TxInPro;
static volatile uint8_t TxBufIx;
static uint8_t xTxbuf[SERIAL_LEN];
static uint8_t xTxlen;

/*----------------------------------------------------------------------------*/
void sys_ser2_init() {

    TxInPro = false;
    for (xTxlen = 0; xTxlen < SERIAL_LEN; xTxlen++) {
        xTxbuf[xTxlen] = 0;
    }
    xTxlen = 0;
    TxBufIx = 0;
    UARTConfigure(_UX, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(_UX, UART_INTERRUPT_ON_TX_DONE | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(_UX, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(_UX, SYS_CLK_FrequencyPeripheralGet(), 9600);
    UARTEnable(_UX, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
    RX_INT_DIS;
    TX_INT_DIS;
    INTSetVectorPriority(INT_VECTOR_UART(_UX), PRI_LEVEL(SER4_IPL));
    INTSetVectorSubPriority(INT_VECTOR_UART(_UX), SUBPRI_LEVEL(SER4_SIPL));
    SER2_TX;
}

/*----------------------------------------------------------------------------*/
void sys_ser2_tx_buf_send(uint8_t *buf, uint8_t len) {
    uint8_t i;
    xTxlen = len;
    for (i = 0; i < len; i++) {
        xTxbuf[i] = *buf;
        buf++;
    }
    SER2_TX;
    while (UARTTransmitterIsReady(_UX) == FALSE);
    UARTSendDataByte(_UX, xTxbuf[0]);
    TxBufIx = 1;
    TxInPro = true;    
    TX_INT_EN;
}

/*----------------------------------------------------------------------------*/
void __ISR(_UX_VECTOR, IPL(SER4_IPL)) UART_ISR(void) {

    static uint8_t c;

    if (INTGetFlag(INT_SOURCE_UART_RX(_UX))) {
        c = (uint8_t) UARTGetDataByte(_UX);
        sys_t1_ser4ticks_reset();
        cmndW_data_new(c);
        INTClearFlag(INT_SOURCE_UART_RX(_UX));
    }
    if (INTGetFlag(INT_SOURCE_UART_TX(_UX))) {
        if (TxInPro == true) {
            UARTSendDataByte(_UX, xTxbuf[TxBufIx]);
            TxBufIx++;
            if (TxBufIx > xTxlen) {
                TxInPro = false;
                TX_INT_DIS;                
                SER2_TX;
            }
        }
        INTClearFlag(INT_SOURCE_UART_TX(_UX));
    }
}