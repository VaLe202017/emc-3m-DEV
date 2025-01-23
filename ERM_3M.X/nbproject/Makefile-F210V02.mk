#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-F210V02.mk)" "nbproject/Makefile-local-F210V02.mk"
include nbproject/Makefile-local-F210V02.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=F210V02
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o.d ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d ${OBJECTDIR}/_ext/1472958452/ethernet.o.d ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d ${OBJECTDIR}/_ext/567204950/app.o.d ${OBJECTDIR}/_ext/567204950/app_settings.o.d ${OBJECTDIR}/_ext/567204950/app_sat.o.d ${OBJECTDIR}/_ext/1360919890/program.o.d ${OBJECTDIR}/_ext/1360919890/zvono.o.d ${OBJECTDIR}/_ext/1360919890/spi.o.d ${OBJECTDIR}/_ext/1360919890/cgi.o.d ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d ${OBJECTDIR}/_ext/1360919890/NVMem.o.d ${OBJECTDIR}/_ext/1360919890/settings.o.d ${OBJECTDIR}/_ext/1360919890/iic.o.d ${OBJECTDIR}/_ext/567204950/mcp.o.d ${OBJECTDIR}/_ext/182643316/system_catch.o.d ${OBJECTDIR}/_ext/182643316/system_configbits.o.d ${OBJECTDIR}/_ext/182643316/system_iic2.o.d ${OBJECTDIR}/_ext/182643316/system_int4.o.d ${OBJECTDIR}/_ext/182643316/system_io.o.d ${OBJECTDIR}/_ext/182643316/system_onewire.o.d ${OBJECTDIR}/_ext/182643316/system_settings.o.d ${OBJECTDIR}/_ext/182643316/system_t1.o.d ${OBJECTDIR}/_ext/182643316/system_oc5.o.d ${OBJECTDIR}/_ext/182643316/system_ser5.o.d ${OBJECTDIR}/_ext/182643316/system_ser2.o.d ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d ${OBJECTDIR}/_ext/1986356507/cgi.o.d ${OBJECTDIR}/_ext/341170268/pt_delay.o.d ${OBJECTDIR}/_ext/1986341306/ds3231.o.d ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d ${OBJECTDIR}/_ext/1986341306/sat.o.d ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFInit.o.d ${OBJECTDIR}/_ext/1437884543/WFMac.o.d ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d ${OBJECTDIR}/_ext/1437884543/WFScan.o.d ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d ${OBJECTDIR}/_ext/935941731/ARP.o.d ${OBJECTDIR}/_ext/935941731/Announce.o.d ${OBJECTDIR}/_ext/935941731/AutoIP.o.d ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/935941731/BigInt.o.d ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/935941731/DHCP.o.d ${OBJECTDIR}/_ext/935941731/DHCPs.o.d ${OBJECTDIR}/_ext/935941731/DNS.o.d ${OBJECTDIR}/_ext/935941731/DNSs.o.d ${OBJECTDIR}/_ext/935941731/Delay.o.d ${OBJECTDIR}/_ext/935941731/DynDNS.o.d ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/935941731/FTP.o.d ${OBJECTDIR}/_ext/935941731/FileSystem.o.d ${OBJECTDIR}/_ext/935941731/HTTP2.o.d ${OBJECTDIR}/_ext/935941731/Hashes.o.d ${OBJECTDIR}/_ext/935941731/Helpers.o.d ${OBJECTDIR}/_ext/935941731/ICMP.o.d ${OBJECTDIR}/_ext/935941731/IP.o.d ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d ${OBJECTDIR}/_ext/935941731/MPFS2.o.d ${OBJECTDIR}/_ext/935941731/NBNS.o.d ${OBJECTDIR}/_ext/935941731/RSA.o.d ${OBJECTDIR}/_ext/935941731/Random.o.d ${OBJECTDIR}/_ext/935941731/Reboot.o.d ${OBJECTDIR}/_ext/935941731/SMTP.o.d ${OBJECTDIR}/_ext/935941731/SNMP.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d ${OBJECTDIR}/_ext/935941731/SNTP.o.d ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d ${OBJECTDIR}/_ext/935941731/SSL.o.d ${OBJECTDIR}/_ext/935941731/StackTsk.o.d ${OBJECTDIR}/_ext/935941731/TCP.o.d ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/TFTPc.o.d ${OBJECTDIR}/_ext/935941731/Telnet.o.d ${OBJECTDIR}/_ext/935941731/UART.o.d ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/935941731/UDP.o.d ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/935941731/display_ip.o.d ${OBJECTDIR}/_ext/935941731/Tick.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o

# Source Files
SOURCEFILES=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-F210V02.mk ${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX695F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/c8494ec8312527419655c2238049e374a6023af .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../app" -I"../app/Configs" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../app/ethernet" -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  -DXPRJ_F210V02=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/f5d1c8484d98b5de75db49ebd3ab68bc90e22a22 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../app" -I"../app/Configs" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../app/ethernet" -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  -DXPRJ_F210V02=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d",--gdwarf-2,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/b1217c4f1a146623a0e2b3a3bea72b8419fc1f95 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/3da6b485529d7677a9ff2484a14058f665e9a06e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/5a02b9b956436cc7fc5eb9c82a686b2b6c13771c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/28e180a1ef6e939c48d81800bc7ea88be3b04690 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/cd1363d68459e2af9b18f5cecc59a3c9fdf7cad2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/fb52dcef2f834ec058c597edc0baffd64102149d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/97d4f5b185c7793c7e5814a4ec59c57262b44b53 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/192752a0b0c083f6202a389d6b4df46b2c50ead4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/b98d2f5d08b35b5b8724f06c3a2a4a222ecad982 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/71b5e4a234be5675632eac8ec04a0cfdce23c559 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/30d2071dd60af834644790ef7fd9684354b74628 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/5038306b67074cb0d34f8404f26e6fef22e8b3c7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/f5649e31c7cdf78bfb2a02d975c0d46b78540285 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/a96f91a012f30a83078ed1664a687226db416edf .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/29d457ebe7360ddceafcf06a8a3877e050dfc636 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/103a25f8d7a342463513be895e4df8448746d291 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/9654242cd4352f074deccb6f3c710cc1895f842c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/cfafb5e2aa28b6831fba18633d1bc8f61a9d56f1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/ab63b0379765a2174e39a6d201bccc0ce79c2329 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/44f956a7d8ada04237715ba110c620c463528529 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/cfb0b3f24e4f017a9d0fcc5c2912f831aaac4b68 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/beb372d47d01690bfc0ba0ebafd7309d9014747c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/fb564cc7154ee31049fe3c0f3f4528034ef16f0e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/6b7a2fc023ead3582aab41d3ec02a7771a05062e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/1ea68a8bf81d44ef756d890882727ae108b64dc7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/702c77470c07ab2bbf37eaf06696dad1cb2a5d5d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/b2db409018beb871607edcd526a31b896f4de23e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/b6c18272d6be10097537a19470ff9520de14ec82 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/d6a2d179d84414e36fbb956e0737b5955b7ae8de .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/93cd3a25310e68698ac67ff6b8b3a1892ef9c754 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/43f20c6fea191b134f51c30e3149f6a300469276 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/557b7f6be45be4225052772d348640b0e9638b9e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/97a159f7360bfb57f1efa594c7d4aa84d3de843b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/89bf409c5b5f437c7420e809a7df4469295c3f98 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/ba83dda82ca18e4806d78421c047e27a1a2b68b5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/8773b7dec4fd0950f3eee39af2361cc98164d6c0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/52dc78d17ff1d3e3ef0b3508c109a00225ec46d6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/8716fa71e55598c3beed0bd9912318c3bb93e706 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/1c65cdfa86fe40c7c675e039512a6af5f2706069 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/5de8d15eedc83af2316cf909b91f8ce8ac7bd23b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/6ee841c428be1c3f2959b987a56c8848880d42e8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/a18fb880762f2afc25c6a104dd1dbdddd6e632ee .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/aa0d6cb3a9ac180f0b8989ba8afcd44184416b87 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/e3f95f1d9aecc63a980ac4e108bc4d23fad7aac7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/f6bd0f1bccc1a875bc88343aca21cded76f0b103 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/1eca827df3f1aca6817ea93305dc8fc3608b8b12 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/f89c0901e8e20122bbb475c22ecfb46f9355e6a8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/c72db72a3cc43b24f9c3e26f9a2ecc3d75559465 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/19d80d32f0cdabf18b6d1bce8b56567afc960193 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/ecac353baef68cc097d91361c306ec049b248447 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/970576823cb3020ac7fb576c0deff54521cde551 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/32c5af62e370ae837e711ea19a4f90ad875bcf0e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/cfd67e08db9280a137c5c76db5dc8287088f8273 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/de4cbbbf322ea316b7edbfec8db120a43751bf2c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/ac8d285e3ad81b714dcd5824c195e5fc8e2a13c6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/9cef861eb749db0ed9ff69634a4f19baf5a8cf9a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/a681bd6c87717c41020d0e0f74acbc876211b80e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/9e50770bca6ab7686c1c33add907f54eb6b3d465 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/13a95d02779029304178e63d1d57349dd7e79cee .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/a6deca3424c07ad4aac461cff826c10c0415bcfc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/9493d81876a58444901c82f70d40315040696cd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/fbccba2cbac4da9566e91fbc770b984fa78279a6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/1f76b188bc36b66d53168ebebefecfe6a01e200e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/4e14bbc9bc29f6065885356e9c919bed120d8df7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/b7bd18357831fab2b26bc6c0460ad03e8ff394cb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/49100bfe2872ce588b5d02e77f74f1a90cae816e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/c04294b425a9bee9dcda7f2461eff59ad21a30d4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/ca0e35c88836c558ec27483e8bae7e49007dc2f3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/f21c237686cea177071235391e58aefb1d32cd57 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/c6e902c4f83d4d8be754a12d3ed49497a4bade50 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/ff542b4b101246b3a3cc63f00ccd785058763f87 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/4cf54cc01e59351bf708efbe87ac9dfacc852281 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/cf824d94f38bfebfd19987dea0d2a8afe62da12e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/1f1d6bbdc4c482de3d621ec2b5cb6e7fb651bad .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/591ba2cc28eabe2ab66a54d8143889f9e5eacf05 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/bbdbf7f4019b11a40a00d6793a60a713fc093578 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/7f85bf9aa04df4444d842b7b0fb5e3481739232 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/86d130207799c59eb3f07bf7380284355ba066f7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/4a782afc3bd26efbc3f2ace07cf571955e4183cd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/e81b2532df6b6359e398b0b0a891b3facfff359f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/5e95263c851bd0dca02b99dc50dc0c094a325a97 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/255b6ff5927cd043bc5f41ed4a5c70120b0ce591 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/f4f0456ff88d2d8cdd32c2e51b5df2256b5a8b1b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/f4ccc77b16b9af05b3ef66c927d308bde50aa6d1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/6f011727ff2eec4ec45eec02e2150f7e9a17d87f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/8960c62c7a6f4c2f82643dc9cb61f22ee249dc9e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/1167584263d810cc580becebfae698b2ff152d51 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/3b4a90b6817b9643ad77040c0999168be2f02b01 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/f97ea5bc37ccb0fc37f1992d2e5238cbe3d364cc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/5a93e9e1770dfb759a6eb5119edc3852f0510640 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/c139b4f37725dc2d4df85b5e9d3b6a3f2ca3dec9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/bb7c23234b3077325120faa454541194a28b8d05 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/bb5cfce7d6dae7dfa4c5c7197652d520f5b1b659 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/d6ff26620ffa37523d19e984c37e03a55c03fb2d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/281083a0fc07aacf46a865581927d6b21b3b727d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/f94b1ccf6bcebaee129ea02b3c1fc934aaddd3f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/84ef716fde70ba404850c91a2f8d88445197dd3c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/26d23563e5ff86bd54d57149646f85a3145f2db5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/40f6b737846cd1a32943d698edc8d80179fc7f3f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/a4455fb7893a1afcb6a8f98222b3a96b533f081c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/6ea18b68beb7ef38de173ad4c494e1f2c5a099fe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/e4d426ed7bbfbf9f7097f866f7c4080b9121e2a8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/88f531327908f574919e2246a287c56ec33c236b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/ae74fbd45d518793aaa6c9e7925d73fa80a79d22 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/a0dab0d52b1259125a621630bcc98cfabfa9faea .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/31be6b98a1ffe4df535b3f841b7a91bac7e3c2be .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/b11d95a816b8e5856a133b006236cb06f67d380b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/efa034a156c0d26797f578cbf88ee2cbc3f0d84f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/1681ae0dc07259e2f9ccfc085c8dda3a46f31867 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/67c1e7f2e37f9d989e028cd06611b6fba3dd7a7f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/ce597108f2fea89a1fa9966abb43895a3786464a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/65f726abdcc85fbbd4f3d6fbef255f613feb870b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/1006bb4e352358fa5401ada3aa500893e5fac151 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/2c77fc30770a42a99f0e0845472fa8993448808a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/cf0be3123ac7a6b7b7e3395d25e943ca127e3d46 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/65c07c573fb2b74c1f59a44f34a14640a36d70e9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/e30142f5ea1ae812c516cb50ac5b1089863f9715 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/73162a4ed81a47f3684ee1393c19416ed2fd3976 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/8743ce2eb9bc9de33ef010892cb39bab807e5190 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/80a89b1fd3c54d13aa09ef03fbcc538f0798e0cf .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/b0357468c039ad3932e8b0be0f364c142bec0907 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/cf3080c41f41bbe7c922573f35695727665bf94b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/6c4b51a9759e7099bffa0b55f0887e2a9cefbee7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/4edeea04cc365cf0bde82d03065874b7067c0c88 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/740f96dd362ea1c7c7c377f09122127aa625c1c4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/2a317e601531f5a7f09437fd2d4a3683a5febe42 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/a002d088d98937a77303f3e0eb38cdd4a489d7fe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/402fc2a4aaccbf451efe16c6f216413bc96c7a16 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/83579fce25495200ed1d7c73e6f4c2c1e4c164ec .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/80c23460386218c01bbce3f5e1b5bfa932addfea .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/85bebe29cd9b323ef9d1317baf4f0a4b8f89ccee .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/1e21e476c69061f20a97b99e9d9522d440df5ca9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/91a8edd4e761a59819288657766b5c556dcbf52b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/7e24576d5e68dc80c057dc96bfd041916b095145 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/4db158215a9587c942a397c35715126b9c3950a4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/532a3e13865b44bd98ec335f691161948a277b48 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/b7a05e1aed0d1210dce263b4851e66cfbec41826 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/e55635e90b3a3679930ef945c20044f04b9e997e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/85473ec9d15077dce62b1290c79759501122a96a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/b18301dc22d1d0bf58a38c98dff90602b00292a8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/ccff5e7c272b11c81b20d1f060ce6263793a4680 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/6326625c460437542f76c7c760dba70aeea40e93 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/469dfc0c76e12f150e304e39da51fee10d1d4943 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/2291557a37873936293f8f104c654f21af62ad7b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/a4c68e687892d162485654012ba968353a670e6a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/843fbe7ddb74e2463b2f40e37ec8d2e0812560cc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/7bf959eca8ae1e08cb81776f9f61a12898b88e1a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/dc96965323e844cca51f09bf3f507afe5efd061c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/c10d52e4710ce7bceb57ee3e217980ff655c6951 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/36d78400c97bc72924f94fb864d4ec4501394ed4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/bbcda9b8c38f61e4f9c9f108e7dcfd8d6dbd16d0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/d54af4b81d57d49c1166791c6eb6967d17709965 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/a73eb25a55a432415032a53a383a2c2488bf042d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/41d604e7512b3108eeaa531b0b2d9f9da3f5051c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/dde8b21c5f51c91a0507906001e12fc23625466a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/40181071ec6f2f45f1d67897d81fdfd89fb753c0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/612ce9b73c5dc0205e1014e6d98b49de9a2b434e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/73a5e2359663377efc43246dd37a10f719bf69b4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/f71665a31c95507f2aaa929dd2f0df475b2f11e9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/a51c8314acdf69c4545ce3171eabc57798761068 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/d084005874d69a4ae32ea01fc1eee073d3bfa060 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/b118303245bb52cd976e7bc83ab26217463965c3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/c8894a34d53c6f6baf319ede20cee65e290a5f2b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/25f59a857e63a63a10624b9ea314cea277b9999 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/87cc53700b4d7e10586280c0c0b2041c503d82db .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/460a3c2ba239954e03d27a1446c430ba9d4d6df9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/a49dfe2d9d15168e659fd0b4b885c64f87ce865f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/1bbf2e2599a1cf07caf73b80076dcd425ce35c0e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/89288068962c45c8350620f498bc159e4f171c2d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/38569667726b59d6fb4fbd11ff40bfcbbc22177e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/176d503f74d9fbf10ce889fc042940bd2e8565df .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/55276cbcf83bf91000213c87b770e37950182882 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/88283af5cd234a988184b292737b978539715f9a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/99fba5ea9d3b2b03f585039a151884331d5fb8ad .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/1d4e32a2c69b16ca187e94478b7d82ca16ff52ec .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/8dd89181c968417b5b931d8ebd4ee052e9f2503d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/76737371ceb3609bc069aa6b9373595edcf133b2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/b6d682b9156b8ae00c339a56f20f6f45749087b3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/bd49181fc73794595d76003722215955fc93da0f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/4f063f503da4dcb5b5560a2fc16ba7ce7e49e80b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/fa065e059dd7a5cf9ee320b8727203700bea1c06 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/c85966d074e9c53ebdf0206e182ac3ce84853fdd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/19cb0999968538ad07994ed7bf1b07965a4bdf75 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/ff37a4e22162632310b440218361b9da7ee18481 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/9e584e6675db5ff48c633a2570982428b5acde00 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/5c313040cc7da787b87ce860377bd838e0d0deaa .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/fd240fa0f693cf79798f970c145bf7598aa19e2f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/e171dd963d8d31557ba6fbcd7dc59ee749b57855 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/d14af93d3b872d70fb49fb175cff9ad08b62ff22 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/cbaa8153accc620d1faf3980db593c824ad179d5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/7a42f90e119e2770c5f5818a5a8538ef7f7a9eb8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/761387551fed8ecaa24b61d067f64d2f314e0178 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/a0c73b0a73b32eae34d66f71a9c06eb86f28176 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/3944bb65091601ea840ce4c06c0b2798adaf2113 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/1800ccff86fc4f0a32bec27c145d0b9f0afd7f88 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/6cd00b5d8bde926077cc273bbc5ecc73e0b401d5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/5c147da833408f06d2762cc15aa688772291bc4f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/3d5b120dec1fca53e821a62799bc9c15af76ba97 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/d0fdc9b375151e01af41c7f4e063e5ed3ec0a2d4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/cf1c59bf0092c6185ca69fb4256519b2beb7391b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/dfb9f1519e0d670e81ae70d84b49dc8d259331ea .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/5ca661068c67cbb5eadaa842d7f8a1e874cdb10b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/c0f93dcc81393a0af0f8c5beef43130189823f27 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/8f92df25339832c3bc903197d854d32deab2bab4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/ab6094093fa4e1d3fe9db7728d658aa6ff4de163 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/f7eeb7ce53868239996955eb9a89f7e41cdc36ca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/5536cb1437a575e0c7ecca5e9fcfa0f535037193 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/50ae5fb8dcf19c657f73cf8b0bafc0b4e3356ab9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/2d410504cbcc8f828db360c18dbc54d923b7faf0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/a381322773d150337b29020257ea749f9ed4e92c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/8983752d3b690edabdcb09d139a85d349f1718d2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/a51b75f3ffcfae15b4ee1bbb7220f269d23e8c8d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/a19dcdb28fcfcb1e457b03b745dcc53fa428a683 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/e94af80f5d657c5b6537b04b5501ee6cdcacef99 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/48c9706ddf22d28fb065b6d294c1e86156f6c037 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/ed2442004dbf66ad6578bd4b971b61c2b69f23aa .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/b8915b7b5bd3c0adba1a0f2149125f8e4f8b9667 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/33fe6621f279f72da4c08907f0f8cfc26461a5d4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/5599e124d5e072ce9db3ae79150ea310bd2ad040 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/6763b4789650207f446e599d3da9df4736fa8476 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/a9487dfdb25f814361917e1d4531cf8d4914756b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/88ca4c99bbccb398732d52f7a89c23664b97a25c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/95d19df37d8026b68d5347a7ffc3697de9dc1201 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/e2a7f578e353ab46d475906751ccf6577fe91790 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/ca4c4d197434cb43f425b04645d809878fc64d55 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/3e935d718323b60125b78235942cb507ae1c56a7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/cacd3893ea72477a3a5f36e5b0c91e8a5114c7bc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/65084a3a37215cecb0885ec9cac034ca8354b3c8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/8950b163024bab52f61cce35a26fd06f2188feb5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/450390238ec54473ffd176a88aeba37aa5fddd6b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/a4fcc688fda090676e0956714033cc6d63c97673 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/36115e966cc0ed4f8862623f522b2ab633c97723 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/6e61e2dc1adcd225f005753643ae474a4c2effbd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/4df998dc7219a994172b301c7729b052a9d6d06a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/b7d86f762f256dadf9b55bbd779c01f0e1248df5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/38fd90637c214edd9e2b0083593cd2759e51f4da .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/7a10897b333ed7232a576482269d6c6b7b943fea .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/b5e3fb6c159da9b1e3cd4e1f81118b6648377d60 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/11dcd52ac1dfbc4024fe5b9c945e2dfd68667172 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/92855e488395b97fed619b48d3a4f75482229cc7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/63dc91adad01adff38fb1c0611a31f29f9abf1f5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/a43584013c1ed90ca56768e883405acee56f932a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../Microchip/TCPIP_Stack/BigInt_helper_elf.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\Microchip\TCPIP_Stack\BigInt_helper_elf.a      -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=10240,--defsym=_min_stack_size=512,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem 
	
else
${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../Microchip/TCPIP_Stack/BigInt_helper_elf.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\Microchip\TCPIP_Stack\BigInt_helper_elf.a      -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10240,--defsym=_min_stack_size=512,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/ERM_3M.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
