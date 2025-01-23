/*********************************************************************
 *
 *  Application to Demo HTTP2 Server
 *  Support for HTTP2 module in Microchip TCP/IP Stack
 *	 -Implements the application 
 *	 -Reference: RFC 1002
 *
 *********************************************************************
 * FileName:        CustomHTTPApp.c
 * Dependencies:    TCP/IP stack
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Elliott Wood     	6/18/07	Original
 ********************************************************************/
#define __CUSTOMHTTPAPP_C

#include "TCPIPConfig.h"
#include "TCPIP_Stack/TCPIP.h"
#include "app.h"

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/


/****************************************************************************
  Section:
        Function Prototypes and Memory Globalizers
 ***************************************************************************/
#if defined(HTTP_USE_POST)
#if defined(USE_LCD)
static HTTP_IO_RESULT HTTPPostLCD(void);
#endif
#if defined(STACK_USE_HTTP_MD5_DEMO)
#if !defined(STACK_USE_MD5)
#error The HTTP_MD5_DEMO requires STACK_USE_MD5
#endif
static HTTP_IO_RESULT HTTPPostMD5(void);
#endif
#if defined(STACK_USE_AUTOUPDATE_HTTPSERVER) && defined(WF_CS_TRIS) && defined(MRF24WG)
static HTTP_IO_RESULT HTTPPostImage(void);
#endif
#if defined(STACK_USE_HTTP_APP_RECONFIG)
extern APP_CONFIG AppConfig;
static HTTP_IO_RESULT HTTPPostConfig(void);
static HTTP_IO_RESULT HTTPPostNTPConfig(void);
#if defined(STACK_USE_SNMP_SERVER)
static HTTP_IO_RESULT HTTPPostSNMPCommunity(void);
#endif
#endif
#if defined(STACK_USE_HTTP_EMAIL_DEMO) || defined(STACK_USE_SMTP_CLIENT)
#if !defined(STACK_USE_SMTP_CLIENT)
#error The HTTP_EMAIL_DEMO requires STACK_USE_SMTP_CLIENT
#endif
static HTTP_IO_RESULT HTTPPostEmail(void);
#endif
#if defined(STACK_USE_DYNAMICDNS_CLIENT)
static HTTP_IO_RESULT HTTPPostDDNSConfig(void);
#endif
#endif

// RAM allocated for DDNS parameters
#if defined(STACK_USE_DYNAMICDNS_CLIENT)
static BYTE DDNSData[100];
#endif

static BOOL lastSuccess = FALSE;

BOOL lastFailure = FALSE;

/*----------------------------------------------------------------------------*/
#if defined(HTTP_USE_AUTHENTICATION)

BYTE HTTPNeedsAuth(BYTE* cFile) {
    if (memcmppgm2ram(cFile, (ROM void*) "admin", 5) == 0) {
        return 0x00; // Authentication will be needed later
    }
    return 0x80; // No authentication required
}

/*----------------------------------------------------------------------------*/
BYTE HTTPCheckAuth(BYTE* cUser, BYTE* cPass) {
    if (strcmppgm2ram((char *) cUser, (ROM char *) "erm-3m") == 0
            && strcmppgm2ram((char *) cPass, (ROM char *) "elak2203") == 0)
        return 0x80; // We accept this combination

    return 0x00; // Provided user/pass is invalid
}
#endif

/*----------------------------------------------------------------------------*/
static uint8_t getValue(BYTE* ptr) {
    uint8_t val;
    val = (*ptr - '0') * 10;
    ptr++;
    val += (*ptr - '0');
    return val;
}

/*----------------------------------------------------------------------------*/
HTTP_IO_RESULT HTTPExecuteGet(void) {
    static BYTE *ptr;
    static BYTE *ptr1;
    static int16_t tzone;
    static BYTE filename[40];

    MPFSGetFilename(curHTTP.file, filename, 40);
    if (!memcmppgm2ram(filename, "admin/dat.cgi", 13)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "dat");
        if (ptr != NULL) {
            cgi_date(ptr);
        }
    
    } else if (!memcmppgm2ram(filename, "admin/clock.htm", 15)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "dt");
        if (ptr) AppConfig.TimeOfTime = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "dd");
        if (ptr) AppConfig.TimeOfDate = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "dc");
        if (ptr) AppConfig.TimeOfTemperature = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "dh");
        if (ptr) AppConfig.TimeOfHumidity = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "in");
        if (ptr) AppConfig.ClockIntensity = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "dL");
        if (ptr) AppConfig.ClockDayLightSaving = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "t2");
        if (ptr) {
            tzone = getValue(ptr);
            if (tzone > 20) {
                tzone = -1 * (tzone - 20);
            }
            AppConfig.ClockTimeZone = tzone;
        }
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "tF");
        if (ptr) AppConfig.ClockTimeFormat = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "BC");
        if (ptr) AppConfig.BeepEnabled = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "BT");
        if (ptr) AppConfig.BeepTimerEnabled = getValue(ptr);

        app_settings_save();
        sys_int4_force(); //Sig++;
    } else if (!memcmppgm2ram(filename, "admin/temp.htm", 14)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "TO");
        if (ptr) gTSStatic = *ptr - '0';
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "TV");
        if (ptr) {
            if (sscanf((const char*) ptr, "%d", &tzone) == 1) {
                gTSStaticVal = tzone;
            }
        }
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "HO");
        if (ptr) gHSStatic = *ptr - '0';
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "HV");
        if (ptr) {
            if (sscanf((const char*) ptr, "%d", &tzone) == 1) {
                gHSStaticVal = tzone;
            }
        }
    } else if (!memcmppgm2ram(filename, "admin/lopwr.htm", 15)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "en");
        if (ptr) AppConfig.lopwrEnabled = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "in");
        if (ptr) AppConfig.lopwrClockIntensity = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "be");
        if (ptr) AppConfig.lopwrBeepEnabled = getValue(ptr);
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "fr");
        if (ptr) {
            ptr1 = ptr + 3;
            AppConfig.lopwrFromSat = getValue(ptr);
            AppConfig.lopwrFromMin = getValue(ptr1);
        }
        ptr = HTTPGetROMArg(curHTTP.data, (ROM uint8_t *) "to");
        if (ptr) {
            ptr1 = ptr + 3;
            AppConfig.lopwrToSat = getValue(ptr);
            AppConfig.lopwrToMin = getValue(ptr1);
        }
        app_settings_save();
    
    
    }
    else if (!memcmppgm2ram(filename, "admin/flt.cgi", 13)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "flt");
        switch (*ptr) {
            case '1':
                //rst_pt_imp1();
                break;
            case '2':
                break;
            
            default:
                break;
        }

    }else if (!memcmppgm2ram(filename, "admin/li.cgi", 13)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "l");
        switch (*ptr) {
            case 'L':
                ptr++;
                cgi_prgm_line(ptr);
                break;
            case 'R':
                ptr++;
                cgi_prgm_r(ptr);
                break;
            case 'P':
                ptr++;
                cgi_prgm_p(ptr);
                break;
            case 'F':
                ptr++;
                if (*ptr == '1') {
                    PRGM_SaveSettings();
                }
                break;
            case 'E':
                ptr++;
                if (*ptr == '1') {
                    prgm_init_pt();
                    gPRGMStatus = true;
                } else {
                    gPRGMStatus = false;
                }
                break;
            default:
                break;
        }

    } else if (!memcmppgm2ram(filename, "admin/rly.cgi", 13)) {
        // Determine which relay to toggle
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "relay");
        // Toggle the specified LED
        switch (*ptr) {
            case '1':
                if (ZVN_get(ZVONO1) == 0x01) {
                    ZVN_clr(ZVONO1);
                } else {
                    ZVN_set(ZVONO1);
                }
                break;
            case '2':
                //Zvono1_run = true;
                if (ZVN_get(ZVONO2) == 0x01) {
                    ZVN_clr(ZVONO2);
                } else {
                    ZVN_set(ZVONO2);
                }
                break;
            case '3':
                if (ZVN_get(ZVONO3) == 0x01) {
                    ZVN_clr(ZVONO3);
                } else {
                    ZVN_set(ZVONO3);
                };
                break;
            case '4':
                if (ZVN_get(ZVONO4) == 0x01) {
                    ZVN_clr(ZVONO4);
                } else {
                    ZVN_set(ZVONO4);
                }
                break;
            case '5':
                if (ZVN_get(ZVONO5) == 0x01) {
                    ZVN_clr(ZVONO5);
                } else {
                    ZVN_set(ZVONO5);
                }
                break;
            case '6':
                if (ZVN_get(ZVONO6) == 0x01) {
                    ZVN_clr(ZVONO6);
                } else {
                    ZVN_set(ZVONO6);
                }
                break;
            default:
                break;
        }
    
    

    

    } else if (!memcmppgm2ram(filename, "admin/ien.cgi", 13)) {
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "ien");
        if (ptr != NULL) {
            cgi_ien(ptr);
        }
    } else if (!memcmppgm2ram(filename, "admin/upr.cgi", 13)) {
        // Determine which relay to toggle
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "upr");
        if (ptr != NULL) {
            cgi_upr(ptr);
        }
    }
    return HTTP_IO_DONE;
}

/*----------------------------------------------------------------------------*/
#if defined(HTTP_USE_POST)

/*----------------------------------------------------------------------------*/
HTTP_IO_RESULT HTTPExecutePost(void) {
    // Resolve which function to use and pass along
    BYTE filename[20];

    // Load the file name
    // Make sure BYTE filename[] above is large enough for your longest name
    MPFSGetFilename(curHTTP.file, filename, sizeof (filename));
    if (!memcmppgm2ram(filename, "admin/config.htm", 16)) {
        return HTTPPostConfig();
    }
    if (!memcmppgm2ram(filename, "admin/ntp.htm", 14)) {
        return HTTPPostNTPConfig();
    }

    return HTTP_IO_DONE;
}
/*----------------------------------------------------------------------------*/
#if defined(STACK_USE_HTTP_APP_RECONFIG)

/*----------------------------------------------------------------------------*/
static HTTP_IO_RESULT HTTPPostNTPConfig(void) {
    APP_CONFIG newAppConfig;

    // Check to see if the browser is attempting to submit more data than we
    // can parse at once.
    if (curHTTP.byteCount > TCPIsGetReady(sktHTTP) + TCPGetRxFIFOFree(sktHTTP))
        goto ConfigFailure;

    // Ensure that all data is waiting to be parsed.  If not, keep waiting for
    // all of it to arrive.
    if (TCPIsGetReady(sktHTTP) < curHTTP.byteCount) {
        return HTTP_IO_NEED_DATA;
    }


    // Start out assuming that NTP is disabled.  This is necessary since the
    // browser doesn't submit this field if it is unchecked (meaning zero).
    // However, if it is checked, this will be overridden since it will be
    // submitted.
    newAppConfig.ntpPOOLIsEnabled = 0;
    newAppConfig.ntpIsEnabled = 0;
    newAppConfig.gpsIsEnabled = 0;
    newAppConfig.ntpIPAddr=AppConfig.ntpIPAddr;
    newAppConfig.ntpPort=AppConfig.ntpPort;


    // Read all browser POST data
    while (curHTTP.byteCount) {
        // Read a form field name
        if (HTTPReadPostName(curHTTP.data, 6) != HTTP_READ_OK)
            goto ConfigFailure;

        // Read a form field value
        if (HTTPReadPostValue(curHTTP.data + 6, sizeof (curHTTP.data) - 6 - 2) != HTTP_READ_OK)
            goto ConfigFailure;

        // Parse the value that was read
        if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "ntpi")) {
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.ntpIPAddr))
                goto ConfigFailure;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "ntpp")) {
            newAppConfig.ntpPort = atol((const char*) (curHTTP.data + 6));
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "ntpe")) {
            if (curHTTP.data[6] == '1')
                newAppConfig.ntpPOOLIsEnabled = 1;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "ntps")) {
            if (curHTTP.data[6] == '1'){
                newAppConfig.ntpIsEnabled = 1;
            }
            if (curHTTP.data[6] == '2'){
                sat_datetime_init(&gprmcTime);
                sat_datetime_init(&gZadSinkroGPS);
                cmndW_data_int();
                newAppConfig.gpsIsEnabled = 1;
                
            }
        }
    }


    // All parsing complete!  Save new settings and force a reboot
    SaveAppConfig_ntp(&newAppConfig);
    // Set the board to reboot and display reconnecting information
    strcpypgm2ram((char*) curHTTP.data, "/admin/ntp.htm");
    curHTTP.httpStatus = HTTP_REDIRECT;
    NTPUDPClient_Restart();
    return HTTP_IO_DONE;


ConfigFailure:
    //lastFailure = TRUE;
    strcpypgm2ram((char*) curHTTP.data, "/admin/ntp.htm");
    curHTTP.httpStatus = HTTP_REDIRECT;
    return HTTP_IO_DONE;
}

/*----------------------------------------------------------------------------*/
static HTTP_IO_RESULT HTTPPostConfig(void) {
    APP_CONFIG newAppConfig;
    BYTE *ptr;
    BYTE i;

    // Check to see if the browser is attempting to submit more data than we
    // can parse at once.
    if (curHTTP.byteCount > TCPIsGetReady(sktHTTP) + TCPGetRxFIFOFree(sktHTTP))
        goto ConfigFailure;

    // Ensure that all data is waiting to be parsed.  If not, keep waiting for
    // all of it to arrive.
    if (TCPIsGetReady(sktHTTP) < curHTTP.byteCount)
        return HTTP_IO_NEED_DATA;

    newAppConfig.Flags.bIsDHCPEnabled = 0;

    // Read all browser POST data
    while (curHTTP.byteCount) {
        // Read a form field name
        if (HTTPReadPostName(curHTTP.data, 6) != HTTP_READ_OK)
            goto ConfigFailure;

        // Read a form field value
        if (HTTPReadPostValue(curHTTP.data + 6, sizeof (curHTTP.data) - 6 - 2) != HTTP_READ_OK)
            goto ConfigFailure;

        // Parse the value that was read
        if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "ip")) {// Read new static IP Address
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.MyIPAddr))
                goto ConfigFailure;

            newAppConfig.DefaultIPAddr.Val = newAppConfig.MyIPAddr.Val;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "gw")) {// Read new gateway address
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.MyGateway))
                goto ConfigFailure;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "sub")) {// Read new static subnet
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.MyMask))
                goto ConfigFailure;

            newAppConfig.DefaultMask.Val = newAppConfig.MyMask.Val;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "dns1")) {// Read new primary DNS server
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.PrimaryDNSServer))
                goto ConfigFailure;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "dns2")) {// Read new secondary DNS server
            if (!StringToIPAddress(curHTTP.data + 6, &newAppConfig.SecondaryDNSServer))
                goto ConfigFailure;
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "mac")) {
            // Read new MAC address
            WORD w;
            BYTE i;

            ptr = curHTTP.data + 6;

            for (i = 0; i < 12u; i++) {// Read the MAC address

                // Skip non-hex bytes
                while (*ptr != 0x00u && !(*ptr >= '0' && *ptr <= '9') && !(*ptr >= 'A' && *ptr <= 'F') && !(*ptr >= 'a' && *ptr <= 'f'))
                    ptr++;
                
                // MAC string is over, so zeroize the rest
                if (*ptr == 0x00u) {
                    for (; i < 12u; i++)
                        curHTTP.data[i] = '0';
                    break;
                }

                // Save the MAC byte
                curHTTP.data[i] = *ptr++;
            }

            // Read MAC Address, one byte at a time
            for (i = 0; i < 6u; i++) {
                ((BYTE*) & w)[1] = curHTTP.data[i * 2];
                ((BYTE*) & w)[0] = curHTTP.data[i * 2 + 1];
                newAppConfig.MyMACAddr.v[i] = hexatob(*((WORD_VAL*) & w));
            }
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "host")) {// Read new hostname
            FormatNetBIOSName(&curHTTP.data[6]);
            memcpy((void*) newAppConfig.NetBIOSName, (void*) curHTTP.data + 6, 16);
        } else if (!strcmppgm2ram((char*) curHTTP.data, (ROM char*) "dhcp")) {// Read new DHCP Enabled flag
            if (curHTTP.data[6] == '1')
                newAppConfig.Flags.bIsDHCPEnabled = 1;
        }
    }


    // All parsing complete!  Save new settings and force a reboot
    app_ipaddress_save(&newAppConfig);

    // Set the board to reboot and display reconnecting information
    strcpypgm2ram((char*) curHTTP.data, "/admin/reboot.htm?");
    memcpy((void*) (curHTTP.data + 18), (void*) newAppConfig.NetBIOSName, 16);
    curHTTP.data[18 + 16] = 0x00; // Force null termination
    for (i = 18; i < 18u + 16u; i++) {
        if (curHTTP.data[i] == ' ')
            curHTTP.data[i] = 0x00;
    }
    curHTTP.httpStatus = HTTP_REDIRECT;
    app_ethernet_init();
    return HTTP_IO_DONE;


ConfigFailure:
    lastFailure = TRUE;
    strcpypgm2ram((char*) curHTTP.data, "/admin/config.htm");
    curHTTP.httpStatus = HTTP_REDIRECT;

    return HTTP_IO_DONE;
}


/*----------------------------------------------------------------------------*/
#endif //(use_post)

#endif


