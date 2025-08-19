/*  (C) Marwan Khoury
 *   HTTPPrint.c
 */
#include "TCPIPConfig.h"
#include "TCPIP_Stack/TCPIP.h"

#include "app.h"

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
extern APP_CONFIG AppConfig;
extern volatile uint8_t cmdBufAnswer[GPS_RXBUF_SIZE];
extern volatile bool cmdAnswerValid;

// Stick status message variable.  See lastSuccess for details.
static BOOL lastFailure = FALSE;

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void ClearNetBIOSName(BYTE Name[]) {
    BYTE i;

    Name[15] = '\0';
    strupr((char*) Name);
    i = 0;
    while (i < 15u) {
        if (Name[i] == ' ') {
            Name[i] = '\0';
        }
        i++;
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void my_uitoa(WORD Value, BYTE* Buffer) {
    BYTE i;
    WORD Digit;
    WORD Divisor;
    BOOL Printed = FALSE;


    if (Value) {
        if (Value < 10) {
            *Buffer++ = '0';
        }
        for (i = 0, Divisor = Divisor = 10000; i < 5u; i++) {
            Digit = Value / Divisor;
            if (Digit || Printed) {
                *Buffer++ = '0' + Digit;
                Value -= Digit*Divisor;
                Printed = TRUE;
            }
            Divisor /= 10;
        }
    } else {
        *Buffer++ = '0';
        *Buffer++ = '0';
    }

    *Buffer = '\0';
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrintIP(IP_ADDR ip) {
    BYTE digits[4];
    BYTE i;

    for (i = 0; i < 4u; i++) {
        if (i)
            TCPPut(sktHTTP, '.');
        uitoa(ip.v[i], digits);
        TCPPutString(sktHTTP, digits);
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_version() {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 8)
        return;
    curHTTP.callbackPos = 0x00;
    TCPPutROMString(sktHTTP, (ROM void*) FIRMWARE_VERSION);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_hellomsg() {
    BYTE *ptr;
    ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE*) "name");
    // We omit checking for space because this is the only data being written
    if (ptr != NULL) {
        TCPPutROMString(sktHTTP, (ROM BYTE*) "Hello, ");
        TCPPutString(sktHTTP, ptr);
    }
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
extern BOOL lastFailure;

void HTTPPrint_status_fail() {
    if (lastFailure)
        TCPPutROMString(sktHTTP, (ROM BYTE*) "block");
    else
        TCPPutROMString(sktHTTP, (ROM BYTE*) "none");
    lastFailure = FALSE;
}

void HTTPPrint_lin(void) {
    static UINT32 line;
    static BYTE str[20];
    if (TCPIsPutReady(sktHTTP) < 20) {
        curHTTP.callbackPos = 0x01;
        return;
    }
    uitoa((WORD) gPRGMLine, str);
    TCPPutString(sktHTTP, str);
    TCPPut(sktHTTP, ',');

    line = gPRGMLine * 5;

    uitoa((WORD) gPRGM[line], str);
    TCPPutString(sktHTTP, str);
    TCPPut(sktHTTP, ',');

    uitoa((WORD) gPRGM[line + 1], str);
    TCPPutString(sktHTTP, str);
    TCPPut(sktHTTP, ',');
    uitoa((WORD) gPRGM[line + 2], str);
    TCPPutString(sktHTTP, str);
    TCPPut(sktHTTP, ',');
    uitoa((WORD) gPRGM[line + 3], str);
    TCPPutString(sktHTTP, str);
    TCPPut(sktHTTP, ',');
    uitoa((WORD) gPRGM[line + 4], str);
    TCPPutString(sktHTTP, str);
    curHTTP.callbackPos = 0x00;
}

void HTTPPrint_rtim(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20) {
        return;
    }
    BYTE digits[4];
    UINT16 num;

    num = rlyVrijeme.dan;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = rlyVrijeme.mjesec;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    TCPPutROMString(sktHTTP, (ROM void*) "20");
    num = rlyVrijeme.godina;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".  ");

    num = rlyVrijeme.sat;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = rlyVrijeme.minuta;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    curHTTP.callbackPos = 0x00;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_mac(void) {
    BYTE i;

    if (TCPIsPutReady(sktHTTP) < 18u) {//need 17 bytes to write a MAC
        curHTTP.callbackPos = 0x01;
        return;
    }

    // Write each byte
    for (i = 0; i < 6u; i++) {
        if (i)
            TCPPut(sktHTTP, ':');
        TCPPut(sktHTTP, btohexa_high(AppConfig.MyMACAddr.v[i]));
        TCPPut(sktHTTP, btohexa_low(AppConfig.MyMACAddr.v[i]));
    }

    // Indicate that we're done
    curHTTP.callbackPos = 0x00;
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_hostname() {
    TCPPutString(sktHTTP, AppConfig.NetBIOSName);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_dhcpchecked() {
    if (AppConfig.Flags.bIsDHCPEnabled)
        TCPPutROMString(sktHTTP, (ROM BYTE*) "checked");
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_ip(void) {
    HTTPPrintIP(AppConfig.MyIPAddr);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_gw(void) {
    HTTPPrintIP(AppConfig.MyGateway);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_subnet(void) {
    HTTPPrintIP(AppConfig.MyMask);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_dns1(void) {
    HTTPPrintIP(AppConfig.PrimaryDNSServer);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_config_dns2(void) {
    HTTPPrintIP(AppConfig.SecondaryDNSServer);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_date(void) {
    UINT16 num;
    num = 1;
    // Print the output
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_ntp_en(void) {
    if (AppConfig.ntpPOOLIsEnabled)
        TCPPutROMString(sktHTTP, (ROM BYTE*) "checked");
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_ntp_ip(void) {
    HTTPPrintIP(AppConfig.ntpIPAddr);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_ntp_port(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 10)
        return;
    curHTTP.callbackPos = 0x00;
    BYTE AN0String[12];
    uitoa(AppConfig.ntpPort, (BYTE*) AN0String);
    TCPPutString(sktHTTP, AN0String);
    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_reboot() {
    // This is not so much a print function, but causes the board to reboot
    // when the configuration is changed.  If called via an AJAX call, this
    // will gracefully reset the board and bring it back online immediately
    Reset();
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_rebootaddr() {
    // This is the expected address of the board upon rebooting
    //TCPPutString(sktHTTP, curHTTP.data);
    static BYTE str[16];
    memcpy(str, AppConfig.NetBIOSName, 16);
    ClearNetBIOSName(str);
    TCPPutString(sktHTTP, str);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_time() {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];

    uitoa(vrijeme.dan, digits);
    if (vrijeme.dan < 10) {
        TCPPutROMString(sktHTTP, (ROM void*) "0");
    }
    TCPPutString(sktHTTP, digits);

    TCPPutROMString(sktHTTP, (ROM void*) ".");

    uitoa(vrijeme.mjesec, digits);
    if (vrijeme.mjesec < 10) {
        TCPPutROMString(sktHTTP, (ROM void*) "0");
    }
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    uitoa(vrijeme.godina + 2000, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ". ");

    uitoa(vrijeme.sat, digits);
    if (vrijeme.sat < 10) {
        TCPPutROMString(sktHTTP, (ROM void*) "0");
    }
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");
    uitoa(vrijeme.minuta, digits);
    if (vrijeme.minuta < 10) {
        TCPPutROMString(sktHTTP, (ROM void*) "0");
    }
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");
    my_uitoa(vrijeme.sekunda, digits);
    TCPPutString(sktHTTP, digits);

}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_temp() {

    BYTE digits[10];
    int16_t temp;
    temp = (int16_t) gTSAvgVal;
    if (temp == 85) {
        TCPPutROMString(sktHTTP, (ROM void*) "--");
    } else {
        itoa(digits, temp, 10);
        TCPPutString(sktHTTP, digits);
    }

    //TCPPutROMString(sktHTTP, (ROM void*) "");
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// Ispis na web

void HTTPPrint_ntp_zad() {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];

    uitoa(gZadSinkroNTP.dan, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    uitoa(gZadSinkroNTP.mjesec, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    uitoa(gZadSinkroNTP.godina + 2000, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ". ");

    uitoa(gZadSinkroNTP.sat, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");
    uitoa(gZadSinkroNTP.minuta, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");
    my_uitoa(gZadSinkroNTP.sekunda, digits);
    TCPPutString(sktHTTP, digits);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// Is NTP enabled?

void HTTPPrint_ntp_is() {
    if (AppConfig.ntpIsEnabled == 1) {
        TCPPutROMString(sktHTTP, (ROM BYTE*) "checked");
    }

    return;
}
/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// Is GPS enabled?

void HTTPPrint_gps_is() {
    if (AppConfig.gpsIsEnabled == 1) {
        TCPPutROMString(sktHTTP, (ROM BYTE*) "checked");
    }

    return;
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_edesID(void) {
    BYTE digits[3];
    BYTE temp;
    temp = (BYTE) AppConfig.ID;
    digits[0] = btohexa_high(temp);
    digits[1] = btohexa_low(temp);
    digits[2] = '\0';
    TCPPutString(sktHTTP, digits);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_cloSel(WORD type, WORD value) {
    uint8_t col;
    col = 50; // not defined
    switch (type) {
        case 1: col = (uint8_t) AppConfig.TimeOfTime;
            break;
        case 2: col = (uint8_t) AppConfig.TimeOfDate;
            break;
        case 3: col = (uint8_t) AppConfig.TimeOfTemperature;
            break;
        case 4: col = (uint8_t) AppConfig.ClockIntensity;
            break;
        case 5: col = (uint8_t) AppConfig.ClockDayLightSaving;
            break;
        case 6:
        {
            if (AppConfig.ClockTimeZone >= 0) {
                col = (uint8_t) AppConfig.ClockTimeZone;
            } else {
                col = (uint8_t) (-1 * AppConfig.ClockTimeZone) + 20;
            }

            break;
        }
        case 7: col = (uint8_t) AppConfig.ClockTimeFormat;
            break;
        case 8: col = (uint8_t) AppConfig.BeepEnabled;
            break;
        case 9: col = (uint8_t) AppConfig.BeepTimerEnabled;
            break;
        case 10: col = (uint8_t) AppConfig.TimeOfHumidity;
            break;
        case 11: col = (uint8_t) AppConfig.relay1IsEnabled;
            break;
        case 12: col = (uint8_t) AppConfig.relay2IsEnabled;
            break;
    }
    if (col == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_tempSel(WORD value) {
    if (gTSStatic == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_tempStatic() {
    char str[20];
    sprintf(str, "%d", gTSStaticVal);
    TCPPutString(sktHTTP, (uint8_t *) str);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_humidSel(WORD value) {
    if (gHSStatic == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_humidStatic() {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;
    char str[20];
    sprintf(str, "%d", gHSStaticVal);
    TCPPutString(sktHTTP, (uint8_t *) str);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_lopwrEn(WORD value) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;
    if (AppConfig.lopwrEnabled == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_lopwrIn(WORD value) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;
    if (AppConfig.lopwrClockIntensity == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_lopwrBe(WORD value) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;
    if (AppConfig.lopwrBeepEnabled == value) {
        TCPPutROMString(sktHTTP, (ROM uint8_t *) "SELECTED");
    }
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_lopwrFrom(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];

    my_uitoa(AppConfig.lopwrFromSat, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    my_uitoa(AppConfig.lopwrFromMin, digits);
    TCPPutString(sktHTTP, digits);
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void HTTPPrint_lopwrTo(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 25)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];

    my_uitoa(AppConfig.lopwrToSat, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    my_uitoa(AppConfig.lopwrToMin, digits);
    TCPPutString(sktHTTP, digits);
}
/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
extern UINT deviceBezNap;

void HTTPPrint_bnap(void) {

    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 12)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE AN0String[12];

    //    uitoa(deviceBezNap, (BYTE*) AN0String);
    TCPPutString(sktHTTP, AN0String);
    TCPPutROMString(sktHTTP, (ROM void*) " min");
}

void HTTPPrint_rl14(void) {

    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 10)
        return;
    curHTTP.callbackPos = 0x00;

    UINT16 num;

    num = ZVN_get(ZVONO1);
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = ZVN_get(ZVONO2);
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = ZVN_get(ZVONO3);
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = ZVN_get(ZVONO4);
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = ZVN_get(ZVONO5);
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = ZVN_get(ZVONO6);
    TCPPut(sktHTTP, (num ? '1' : '0'));

}

void HTTPPrint_uconf(void) {

    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];
    UINT16 num;

    num = AppConfig.gpsIsEnabled;
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = AppConfig.ntpIsEnabled;
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = AppConfig.relay1IsEnabled;
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = AppConfig.relay2IsEnabled;
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = AppConfig.relayDayLight;
    TCPPut(sktHTTP, (num ? '1' : '0'));
    TCPPut(sktHTTP, ',');

    num = AppConfig.relayTimezone + 12;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
}

void HTTPPrint_impulse(void) {
    UINT16 num;
    num = 1;
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

void HTTPPrint_gps(void) {
    UINT16 num;
    if (gprmc_gps_isValid() == 'A') {
        num = 1;
    } else {
        num = 0;
    }
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

void HTTPPrint_relay(void) {
    UINT16 num;
    num = 1;
    // Print the output
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

void HTTPPrint_dat(UINT16 num) {
    // Determine which LED
    BYTE digits[4];

    switch (num) {
        case 0: // minites
            num = vrijeme.dan;
            break;
        case 1:
            num = vrijeme.mjesec;
            break;
        case 2: // minites
            num = vrijeme.godina;
            break;
        case 3:
            num = vrijeme.sat;
            break;
        case 4:
            num = vrijeme.minuta;
            break;
        case 5:
            num = vrijeme.sekunda;
            break;
        default:
            break;
    }
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
}

void HTTPPrint_nbat(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 10)
        return;
    curHTTP.callbackPos = 0x00;
    BYTE AN0String[8];
    UINT adc;
    adc = 0x00;
    uitoa(adc, (BYTE*) AN0String);
    TCPPutString(sktHTTP, AN0String);
    TCPPutROMString(sktHTTP, (ROM void*) " Volts");
}

void HTTPPrint_nnap(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 10)
        return;
    curHTTP.callbackPos = 0x00;
    BYTE AN0String[8];
    UINT adc;
    adc = 0x00;
    uitoa(adc, (BYTE*) AN0String);
    TCPPutString(sktHTTP, AN0String);
    TCPPutROMString(sktHTTP, (ROM void*) " Volts");
}

void HTTPPrint_zadntp(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20) {
        return;
    }
    BYTE digits[4];
    UINT16 num;


    num = gZadSinkroNTP.dan;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = gZadSinkroNTP.mjesec;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = gZadSinkroNTP.godina;
    if (num > 9) {
        TCPPutROMString(sktHTTP, (ROM void*) "20");
    } else {
        TCPPutROMString(sktHTTP, (ROM void*) "200");
    }
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".  ");


    num = gZadSinkroNTP.sat;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroNTP.minuta;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroNTP.sekunda;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    curHTTP.callbackPos = 0x00;
}

void HTTPPrint_zadman(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20) {
        return;
    }
    BYTE digits[4];
    UINT16 num;


    num = gZadSinkroMAN.dan;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = gZadSinkroMAN.mjesec;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = gZadSinkroMAN.godina;
    if (num > 9) {
        TCPPutROMString(sktHTTP, (ROM void*) "20");
    } else {
        TCPPutROMString(sktHTTP, (ROM void*) "200");
    }
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".  ");

    num = gZadSinkroMAN.sat;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroMAN.minuta;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroMAN.sekunda;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    curHTTP.callbackPos = 0x00;
}

/*----------------------------------------------------------------------------*/
void HTTPPrint_led(UINT16 num) {
    // Determine which LED
    switch (num) {
        case 0:
            num = ZVN_get(ZVONO1);
            break;
        case 1:
            num = ZVN_get(ZVONO2);
            break;
        case 2:
            num = ZVN_get(ZVONO3);
            break;
        case 3:
            num = ZVN_get(ZVONO4);
            break;
        default:
            break;
    }
    // Print the output
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

/*----------------------------------------------------------------------------*/
void HTTPPrint_zadgps(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20) {
        return;
    }
    BYTE digits[4];
    UINT16 num;

    num = gZadSinkroGPS.dan;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");

    num = gZadSinkroGPS.mjesec;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".");


    num = gZadSinkroGPS.godina;
    if (num > 9) {
        TCPPutROMString(sktHTTP, (ROM void*) "20");
    } else {
        TCPPutROMString(sktHTTP, (ROM void*) "200");
    }
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ".  ");

    num = gZadSinkroGPS.sat;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroGPS.minuta;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ":");

    num = gZadSinkroGPS.sekunda;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);

    curHTTP.callbackPos = 0x00;
}

/*----------------------------------------------------------------------------*/
void HTTPPrint_checkSincronization(void) {
    curHTTP.callbackPos = 0x01;
    uint8_t checkGPS = gprmc_gps_isValid();
    BYTE checkGPSnum[4];
    uitoa(checkGPS, checkGPSnum);
    TCPPutString(sktHTTP, checkGPSnum);
    curHTTP.callbackPos = 0x00;
}

void HTTPPrint_gString(void) {
    if (TCPIsPutReady(sktHTTP) < 100) {
        curHTTP.callbackPos = 0x01;
        return;
    }
    if (cmdAnswerValid == true) {
        TCPPutString(sktHTTP, (BYTE *) cmdBufAnswer);
        cmdAnswerValid = false;
    } else {
        TCPPutROMString(sktHTTP, (ROM void*) " ");
    }
    cmdBufAnswer[0] = '\0';

}

/*----------------------------------------------------------------------------*/
void HTTPPrint_sync(void) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20) {
        return;
    }
    if (AppConfig.gpsIsEnabled == 1) {
        BYTE digits[4];
        UINT16 num;

        num = gZadSinkroGPS.dan;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".");

        num = gZadSinkroGPS.mjesec;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".");


        num = gZadSinkroGPS.godina;
        if (num > 9) {
            TCPPutROMString(sktHTTP, (ROM void*) "20");
        } else {
            TCPPutROMString(sktHTTP, (ROM void*) "200");
        }
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".  ");

        num = gZadSinkroGPS.sat;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ":");

        num = gZadSinkroGPS.minuta;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ":");

        num = gZadSinkroGPS.sekunda;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
    } else {
        BYTE digits[4];
        UINT16 num;


        num = gZadSinkroNTP.dan;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".");

        num = gZadSinkroNTP.mjesec;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".");

        num = gZadSinkroNTP.godina;
        if (num > 9) {
            TCPPutROMString(sktHTTP, (ROM void*) "20");
        } else {
            TCPPutROMString(sktHTTP, (ROM void*) "200");
        }
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ".  ");


        num = gZadSinkroNTP.sat;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ":");

        num = gZadSinkroNTP.minuta;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
        TCPPutROMString(sktHTTP, (ROM void*) ":");

        num = gZadSinkroNTP.sekunda;
        uitoa(num, digits);
        TCPPutString(sktHTTP, digits);
    }




    curHTTP.callbackPos = 0x00;
}

void HTTPPrint_ien(void) {
    UINT16 num;
    num = AppConfig.implSet[1].isEnabled;
    // Print the output
    TCPPut(sktHTTP, (num ? '1' : '0'));
}

void HTTPPrint_imp(UINT16 num) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 15)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];
    UINT indx;

    indx = 0;
    switch (num) {
        case 1:
            indx = 1;
            break;
        case 2:
            indx = 2;
            break;
        case 3:
            indx = 3;
            break;
        case 4:
            indx = 4;
            break;
        case 5:
            indx = 5;
            break;
        case 6:
            indx = 6;
            break;
        case 7:
            indx = 7;
            break;
        case 8:
            indx = 8;
            break;
        default:
            break;
    }
    if (indx == 0) {
        return;
    }
    num = AppConfig.implSet[indx].isEnabled;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ",");

    num = implVar[indx].IsFault;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ",");

    num = implVar[indx].ticks;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
}

void HTTPPrint_tim(UINT16 num) {
    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 8)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];
    UINT indx;

    indx = 0;
    switch (num) {
        case 1:
            indx = 1;
            break;
        case 2:
            indx = 2;
            break;
        case 3:
            indx = 3;
            break;
        case 4:
            indx = 4;
            break;
        case 5:
            indx = 5;
            break;
        case 6:
            indx = 6;
            break;
        case 7:
            indx = 7;
            break;
        case 8:
            indx = 8;
            break;
        default:
            break;
    }
    if (indx == 0) {
        return;
    }
    num = implVar[indx].time;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
}

void HTTPPrint_iconf(UINT16 num) {

    curHTTP.callbackPos = 0x01;
    if (TCPIsPutReady(sktHTTP) < 20)
        return;
    curHTTP.callbackPos = 0x00;

    BYTE digits[10];
    UINT indx;

    indx = 0;
    switch (num) {
        case 1:
            indx = 1;
            break;
        case 2:
            indx = 2;
            break;
        case 3:
            indx = 3;
            break;
        case 4:
            indx = 4;
            break;
        case 5:
            indx = 5;
            break;
        case 6:
            indx = 6;
            break;
        case 7:
            indx = 7;
            break;
        case 8:
            indx = 8;
            break;
        default:
            break;
    }
    if (indx == 0) {
        return;
    }
    num = AppConfig.implSet[indx].dayLight;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ",");

    num = AppConfig.implSet[indx].timeZone + 12;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ",");

    num = AppConfig.implSet[indx].implMode;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
    TCPPutROMString(sktHTTP, (ROM void*) ",");

    num = AppConfig.implSet[indx].implLength;
    uitoa(num, digits);
    TCPPutString(sktHTTP, digits);
}