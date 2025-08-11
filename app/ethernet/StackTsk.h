/*********************************************************************
 *
 *                  Microchip TCP/IP Stack Definitions
 *
 *********************************************************************
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti     8/10/01 Original        (Rev 1.0)
 * Nilesh Rajbharti     2/9/02  Cleanup
 * Nilesh Rajbharti     5/22/02 Rev 2.0 (See version.log for detail)
 * Nilesh Rajbharti     8/7/03  Rev 2.21 - TFTP Client addition
 * Howard Schlunder	9/30/04	Added MCHP_MAC, MAC_POWER_ON_TEST, 
                                EEPROM_BUFFER_SIZE, USE_LCD
 * Howard Schlunder	8/09/06	Removed MCHP_MAC, added STACK_USE_NBNS, 
 *				STACK_USE_DNS, and STACK_USE_GENERIC_TCP_EXAMPLE
 ********************************************************************/
#ifndef __STACK_TSK_H
#define __STACK_TSK_H

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/


#ifdef APP_GLOBAL_SETTINGS
#define APP_EXT 
#else
#define APP_EXT extern
#endif


/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
// Check for potential configuration errors in "TCPIPConfig.h"
#if (MAX_UDP_SOCKETS <= 0 || MAX_UDP_SOCKETS > 255 )
#error Invalid MAX_UDP_SOCKETS value specified
#endif

// Check for potential configuration errors in "TCPIPConfig.h"
#if (MAX_HTTP_CONNECTIONS <= 0 || MAX_HTTP_CONNECTIONS > 255 )
#error Invalid MAX_HTTP_CONNECTIONS value specified.
#endif

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
typedef struct __attribute__((__packed__)) {
    BYTE v[6];
}
MAC_ADDR;

#define IP_ADDR		DWORD_VAL

typedef struct { //__attribute__((__packed__)) {
    IP_ADDR IPAddr;
    MAC_ADDR MACAddr;
} NODE_INFO;

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/

typedef struct {
    UINT isEnabled; //0 is not enabled  1 is enabled
    UINT implMode; // 0 if second movment 1 if miniutes movments.
    INT timeZone; // relative to GMT
    UINT dayLight; // 1 is active 0 is not active
    UINT implLength; // in milliseconds time on voltage in both directions
} IMPL_SET;

typedef struct {
    UINT IsFault;
    UINT time; // seconds in 12 hours 43200
    UINT ticks; // seconds ticks in 12 hours 43200
    UINT polarity; // 1 positivni 2 negativni
} IMPL_VAR;

#define IMPL_NUM 9  // 0 is not used 1 and 2 for I1 and I2  else for outside

typedef struct {
    UINT flashCounter;

    UINT8 ID;

    UINT8 BeepEnabled;
    UINT8 BeepTimerEnabled;

    UINT gpsIsEnabled;
    UINT ntpPOOLIsEnabled; /* NTP settings*/
    UINT ntpIsEnabled;
    IP_ADDR ntpIPAddr; // IP address
    WORD ntpPort;

    UINT TSSmplPrd; /* app_temp settings*/
    UINT TSSmplNum;
    
    IMPL_SET implSet[IMPL_NUM];

    UINT implMinPause;
    UINT implSecPause;

    UINT relay1IsEnabled;
    UINT relay2IsEnabled;
    UINT relay3IsEnabled;
    UINT relay4IsEnabled;
    UINT relay5IsEnabled;
    UINT relay6IsEnabled;
    INT relayTimezone;
    UINT relayDayLight;
    
    UINT TimeOfTime;
    UINT TimeOfDate;
    UINT TimeOfTemperature;
    UINT TimeOfHumidity;

    UINT ClockIntensity;
    UINT ClockDayLightSaving;
    INT ClockTimeZone;
    edesTimeFormat_t ClockTimeFormat;

    UINT GpsTimeOut;

    UINT8 lopwrEnabled;
    UINT lopwrClockIntensity;
    UINT8 lopwrBeepEnabled;
    
    UINT8 lopwrFromMin;
    UINT8 lopwrFromSat;
    UINT8 lopwrToMin;
    UINT8 lopwrToSat;

    IP_ADDR MyIPAddr; // IP address
    IP_ADDR MyMask; // Subnet mask
    IP_ADDR MyGateway; // Default Gateway
    IP_ADDR PrimaryDNSServer; // Primary DNS Server
    IP_ADDR SecondaryDNSServer; // Secondary DNS Server
    IP_ADDR DefaultIPAddr; // Default IP address
    IP_ADDR DefaultMask; // Default subnet mask
    BYTE NetBIOSName[16]; // NetBIOS name

    struct {
        BOOL bIsDHCPEnabled;
    } Flags; // Flag structure

    struct {
        unsigned char : 7;
        unsigned char bInConfigMode : 1;
    } Flag; // Flag structure
    MAC_ADDR MyMACAddr; // Application MAC address

#if defined(WF_CS_TRIS)
    BYTE MySSID[32]; // Wireless SSID (if using MRF24W)
    BYTE SsidLength; // number of bytes in SSID
    BYTE SecurityMode; // WF_SECURITY_OPEN or one of the other security modes
    BYTE SecurityKey[64]; // WiFi Security key, or passphrase.
    BYTE SecurityKeyLength; // number of bytes in security key (can be 0)
    BYTE WepKeyIndex; // WEP key index (only valid for WEP)
    BYTE dataValid;
    BYTE networkType;
#if defined(EZ_CONFIG_STORE)        // WLAN configuration data stored to NVM
    BYTE saveSecurityInfo; // Save 32-byte PSK
#endif
#endif

#if defined(STACK_USE_SNMP_SERVER) || defined(STACK_USE_SNMPV3_SERVER)
    // SNMPv2C Read community names
    // SNMP_COMMUNITY_MAX_LEN (8) + 1 null termination byte
    BYTE readCommunity[SNMP_MAX_COMMUNITY_SUPPORT][SNMP_COMMUNITY_MAX_LEN + 1];

    // SNMPv2C Write community names
    // SNMP_COMMUNITY_MAX_LEN (8) + 1 null termination byte
    BYTE writeCommunity[SNMP_MAX_COMMUNITY_SUPPORT][SNMP_COMMUNITY_MAX_LEN + 1];

    UINT32 SnmpEngineBootRcrd;
#endif

}
APP_CONFIG;

APP_EXT APP_CONFIG AppConfig;

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void StackInit();
void StackTask();
void StackApplications();

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
#endif
