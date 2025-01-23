/*  (C) Marwan Khoury
 *   app_settings.h
 */

#include "app.h"

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
#define MY_DEFAULT_IP_ADDR_BYTE1        (169ul)//169
#define MY_DEFAULT_IP_ADDR_BYTE2        (254ul)//254
#define MY_DEFAULT_IP_ADDR_BYTE3        (1ul)  //1
#define MY_DEFAULT_IP_ADDR_BYTE4        (1ul)  //1

#define NTP_IP_ADDR_BYTE1               (161ul)
#define NTP_IP_ADDR_BYTE2               (53ul)
#define NTP_IP_ADDR_BYTE3               (128ul)
#define NTP_IP_ADDR_BYTE4               (17ul)

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
static unsigned short wOriginalAppConfigChecksum;
static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void SaveAppConfig_ntp(const APP_CONFIG *AppConfig1) {
    AppConfig.ntpIsEnabled = AppConfig1->ntpIsEnabled;
    AppConfig.gpsIsEnabled = AppConfig1->gpsIsEnabled;
    AppConfig.ntpPOOLIsEnabled = AppConfig1->ntpPOOLIsEnabled;
    AppConfig.ntpIPAddr = AppConfig1->ntpIPAddr;
    AppConfig.ntpPort = AppConfig1->ntpPort;
    //app_settings_save();
    APP_SaveSettings();
}

void SaveAppConfig_upr(const APP_CONFIG *AppConfig1) {
    AppConfig.relay1IsEnabled = AppConfig1->relay1IsEnabled;
    AppConfig.relay2IsEnabled = AppConfig1->relay2IsEnabled;
    AppConfig.relay3IsEnabled = AppConfig1->relay3IsEnabled;
    AppConfig.relay4IsEnabled = AppConfig1->relay4IsEnabled;
    AppConfig.relay5IsEnabled = AppConfig1->relay5IsEnabled;
    AppConfig.relay6IsEnabled = AppConfig1->relay6IsEnabled;
    APP_SaveSettings();
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void app_ipaddress_save(const APP_CONFIG *AppConfig1) {
    AppConfig.Flags.bIsDHCPEnabled = AppConfig1->Flags.bIsDHCPEnabled;
    if (AppConfig.Flags.bIsDHCPEnabled == TRUE) {
        AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul;
        AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
        AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul;
        AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
        AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul;
        AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul;
        AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul;
    } else {
        AppConfig.MyIPAddr.Val = AppConfig1->MyIPAddr.Val;
        AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
        AppConfig.MyGateway.Val = AppConfig1->MyGateway.Val;
        AppConfig.MyMask.Val = AppConfig1->MyMask.Val;
        AppConfig.PrimaryDNSServer.Val = AppConfig1->PrimaryDNSServer.Val;
        AppConfig.SecondaryDNSServer.Val = AppConfig1->SecondaryDNSServer.Val;
    }
    memcpy(AppConfig.NetBIOSName, (void*) AppConfig1->NetBIOSName, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);
    APP_SaveSettings();
}

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
void app_defaults_load(void) {

    //uint8_t id;
    //id = AppConfig.ID;
    
    memset((void*) &AppConfig, 0x00, sizeof (AppConfig));
    
    //AppConfig.ID = id;
    AppConfig.flashCounter = 1;
    

    AppConfig.BeepEnabled = 1;
    AppConfig.BeepTimerEnabled = 1;

    AppConfig.ntpPOOLIsEnabled = 1;
    AppConfig.ntpIsEnabled = 1;
    AppConfig.gpsIsEnabled = 0;
    AppConfig.ntpIPAddr.Val = NTP_IP_ADDR_BYTE1 | NTP_IP_ADDR_BYTE2 << 8ul | NTP_IP_ADDR_BYTE3 << 16ul | NTP_IP_ADDR_BYTE4 << 24ul;
    AppConfig.ntpPort = 123ul;

    AppConfig.TSSmplNum = 1ul;
    AppConfig.TSSmplPrd = 1000ul;
    AppConfig.GpsTimeOut = 1000U;

    AppConfig.TimeOfTime = 4;
    AppConfig.TimeOfDate = 4;
    AppConfig.TimeOfTemperature = 4;
    AppConfig.TimeOfHumidity = 0;

    AppConfig.ClockIntensity = 7U;
    AppConfig.ClockDayLightSaving = 1;
    AppConfig.ClockTimeZone = 1;
    AppConfig.ClockTimeFormat = TIMEFORMAT_24H;

    AppConfig.lopwrEnabled = 1;
    AppConfig.lopwrClockIntensity = 1;
    AppConfig.lopwrBeepEnabled = 0;

    AppConfig.lopwrFromSat = 21;
    AppConfig.lopwrFromMin = 00;

    AppConfig.lopwrToSat = 6;
    AppConfig.lopwrToMin = 00;
    
    AppConfig.implMinPause = 1000U;
    AppConfig.implSecPause = 100U;

   
    
    AppConfig.relayTimezone = 0;
    AppConfig.relayDayLight = 0;
    AppConfig.relay1IsEnabled = 1;
    AppConfig.relay2IsEnabled = 1;
    AppConfig.relay3IsEnabled = 1;
    AppConfig.relay4IsEnabled = 1;
    AppConfig.relay5IsEnabled = 1;
    AppConfig.relay6IsEnabled = 1;

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
    unsigned char vNeedToSaveDefaults = 0;
#endif
    AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flag.bInConfigMode = TRUE;
    memcpypgm2ram((void*) &AppConfig.MyMACAddr, (ROM void*) SerializedMACAddress, sizeof (AppConfig.MyMACAddr));

    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul;
    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul;
    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul;

    // SNMP Community String configuration
#if defined(STACK_USE_SNMP_SERVER)
    {
        BYTE i;
        static ROM char * ROM cReadCommunities[] = SNMP_READ_COMMUNITIES;
        static ROM char * ROM cWriteCommunities[] = SNMP_WRITE_COMMUNITIES;
        ROM char * strCommunity;

        for (i = 0; i < SNMP_MAX_COMMUNITY_SUPPORT; i++) {
            // Get a pointer to the next community string
            strCommunity = cReadCommunities[i];
            if (i >= sizeof (cReadCommunities) / sizeof (cReadCommunities[0]))
                strCommunity = "";

            // Ensure we don't buffer overflow.  If your code gets stuck here,
            // it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
            // is either too small or one of your community string lengths
            // (SNMP_READ_COMMUNITIES) are too large.  Fix either.
            if (strlenpgm(strCommunity) >= sizeof (AppConfig.readCommunity[0]))
                while (1);

            // Copy string into AppConfig
            strcpypgm2ram((char*) AppConfig.readCommunity[i], strCommunity);

            // Get a pointer to the next community string
            strCommunity = cWriteCommunities[i];
            if (i >= sizeof (cWriteCommunities) / sizeof (cWriteCommunities[0]))
                strCommunity = "";

            // Ensure we don't buffer overflow.  If your code gets stuck here,
            // it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
            // is either too small or one of your community string lengths
            // (SNMP_WRITE_COMMUNITIES) are too large.  Fix either.
            if (strlenpgm(strCommunity) >= sizeof (AppConfig.writeCommunity[0]))
                while (1);

            // Copy string into AppConfig
            strcpypgm2ram((char*) AppConfig.writeCommunity[i], strCommunity);
        }
    }
#endif

    // Load the default NetBIOS Host Name
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*) MY_DEFAULT_HOST_NAME, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);

#if defined(WF_CS_TRIS)
    // Load the default SSID Name
    WF_ASSERT(sizeof (MY_DEFAULT_SSID_NAME) <= sizeof (AppConfig.MySSID));
    memcpypgm2ram(AppConfig.MySSID, (ROM void*) MY_DEFAULT_SSID_NAME, sizeof (MY_DEFAULT_SSID_NAME));
    AppConfig.SsidLength = sizeof (MY_DEFAULT_SSID_NAME) - 1;

    AppConfig.SecurityMode = MY_DEFAULT_WIFI_SECURITY_MODE;

#if (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
    memset(AppConfig.SecurityKey, 0x00, sizeof (AppConfig.SecurityKey));
    AppConfig.SecurityKeyLength = 0;

#elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40
    AppConfig.WepKeyIndex = MY_DEFAULT_WEP_KEY_INDEX;
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_WEP_KEYS_40, sizeof (MY_DEFAULT_WEP_KEYS_40) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_40) - 1;

#elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104
    AppConfig.WepKeyIndex = MY_DEFAULT_WEP_KEY_INDEX;
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_WEP_KEYS_104, sizeof (MY_DEFAULT_WEP_KEYS_104) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_104) - 1;

#elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY)       || \
                  (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY)      || \
                  (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY)
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_PSK, sizeof (MY_DEFAULT_PSK) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_PSK) - 1;

#elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE)     || \
                  (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE)    || \
                  (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE)
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_PSK_PHRASE, sizeof (MY_DEFAULT_PSK_PHRASE) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_PSK_PHRASE) - 1;
#elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPS_PUSH_BUTTON)
    memset(AppConfig.SecurityKey, 0x00, sizeof (AppConfig.SecurityKey));
    AppConfig.SecurityKeyLength = 0;
#elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPS_PIN)
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_WPS_PIN, sizeof (MY_DEFAULT_WPS_PIN) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_WPS_PIN) - 1;
#else
#error "No security defined"
#endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

#endif

    // Compute the checksum of the AppConfig defaults as loaded from ROM
    wOriginalAppConfigChecksum = CalcIPChecksum((BYTE*) & AppConfig, sizeof (AppConfig));

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
    {
        NVM_VALIDATION_STRUCT NVMValidationStruct;

        // Check to see if we have a flag set indicating that we need to
        // save the ROM default AppConfig values.
        if (vNeedToSaveDefaults)
            SaveAppConfig(&AppConfig);

        // Read the NVMValidation record and AppConfig struct out of EEPROM/Flash
#if defined(EEPROM_CS_TRIS)
        {
            XEEReadArray(0x0000, (BYTE*) & NVMValidationStruct, sizeof (NVMValidationStruct));
            XEEReadArray(sizeof (NVMValidationStruct), (BYTE*) & AppConfig, sizeof (AppConfig));
        }
#elif defined(SPIFLASH_CS_TRIS)
        {
            SPIFlashReadArray(0x0000, (BYTE*) & NVMValidationStruct, sizeof (NVMValidationStruct));
            SPIFlashReadArray(sizeof (NVMValidationStruct), (BYTE*) & AppConfig, sizeof (AppConfig));
        }
#endif

        // Check EEPROM/Flash validitity.  If it isn't valid, set a flag so
        // that we will save the ROM default values on the next loop
        // iteration.
        if ((NVMValidationStruct.wConfigurationLength != sizeof (AppConfig)) ||
                (NVMValidationStruct.wOriginalChecksum != wOriginalAppConfigChecksum) ||
                (NVMValidationStruct.wCurrentChecksum != CalcIPChecksum((BYTE*) & AppConfig, sizeof (AppConfig)))) {
            // Check to ensure that the vNeedToSaveDefaults flag is zero,
            // indicating that this is the first iteration through the do
            // loop.  If we have already saved the defaults once and the
            // EEPROM/Flash still doesn't pass the validity check, then it
            // means we aren't successfully reading or writing to the
            // EEPROM/Flash.  This means you have a hardware error and/or
            // SPI configuration error.
            if (vNeedToSaveDefaults) {
                while (1);
            }

            // Set flag and restart loop to load ROM defaults and save them
            vNeedToSaveDefaults = 1;
            continue;
        }

        // If we get down here, it means the EEPROM/Flash has valid contents
        // and either matches the ROM defaults or previously matched and
        // was run-time reconfigured by the user.  In this case, we shall
        // use the contents loaded from EEPROM/Flash.
        break;
    }
#endif
}


#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)

void SaveAppConfig(const APP_CONFIG *ptrAppConfig) {
    NVM_VALIDATION_STRUCT NVMValidationStruct;

    // Ensure adequate space has been reserved in non-volatile storage to
    // store the entire AppConfig structure.  If you get stuck in this while(1)
    // trap, it means you have a design time misconfiguration in TCPIPConfig.h.
    // You must increase MPFS_RESERVE_BLOCK to allocate more space.
#if defined(STACK_USE_MPFS2)
    if (sizeof (NVMValidationStruct) + sizeof (AppConfig) > MPFS_RESERVE_BLOCK)
        while (1);
#endif

    // Get proper values for the validation structure indicating that we can use
    // these EEPROM/Flash contents on future boot ups
    NVMValidationStruct.wOriginalChecksum = wOriginalAppConfigChecksum;
    NVMValidationStruct.wCurrentChecksum = CalcIPChecksum((BYTE*) ptrAppConfig, sizeof (APP_CONFIG));
    NVMValidationStruct.wConfigurationLength = sizeof (APP_CONFIG);

    // Write the validation struct and current AppConfig contents to EEPROM/Flash
#if defined(EEPROM_CS_TRIS)
    XEEBeginWrite(0x0000);
    XEEWriteArray((BYTE*) & NVMValidationStruct, sizeof (NVMValidationStruct));
    XEEWriteArray((BYTE*) ptrAppConfig, sizeof (APP_CONFIG));
#else
    SPIFlashBeginWrite(0x0000);
    SPIFlashWriteArray((BYTE*) & NVMValidationStruct, sizeof (NVMValidationStruct));
    SPIFlashWriteArray((BYTE*) ptrAppConfig, sizeof (APP_CONFIG));
#endif
}
#endif

/*----------------------------------------------------------------------------*/