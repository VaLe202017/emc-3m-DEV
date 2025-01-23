/*  ELAK d.o.o.
 *  By: Marwan Khoury
 *  display_ip.c
 */
#include <app.h>

/*----------------------------------------------------------------------------*/
void DisplayIPValue(IP_ADDR IPVal) {
    // printf("%u.%u.%u.%u", IPVal.v[0], IPVal.v[1], IPVal.v[2], IPVal.v[3]);
    BYTE IPDigit[4];
    BYTE i;

#ifdef USE_LCD
    BYTE j;
    BYTE LCDPos = 16;
#endif

    for (i = 0; i < sizeof (IP_ADDR); i++) {
        uitoa((WORD) IPVal.v[i], IPDigit);

#if defined(STACK_USE_UART)
        putsUART((char *) IPDigit);
#endif

#ifdef USE_LCD
        for (j = 0; j < strlen((char*) IPDigit); j++) {
            LCDText[LCDPos++] = IPDigit[j];
        }
        if (i == sizeof (IP_ADDR) - 1)
            break;
        LCDText[LCDPos++] = '.';
#else
        if (i == sizeof (IP_ADDR) - 1)
            break;
#endif

#if defined(STACK_USE_UART)
        while (BusyUART());
        WriteUART('.');
#endif
    }

#ifdef USE_LCD
    if (LCDPos < 32u)
        LCDText[LCDPos] = 0;
    LCDUpdate();
#endif
}
