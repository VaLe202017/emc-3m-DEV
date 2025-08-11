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
FINAL_IMAGE=${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c ../framework/impulse/impulse2.c ../framework/impulse/impulse1.c ../framework/impulse/impulse.c ../framework/sat/ds3231_pos.c ../app/system/system_iic5.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o ${OBJECTDIR}/_ext/74150059/impulse2.o ${OBJECTDIR}/_ext/74150059/impulse1.o ${OBJECTDIR}/_ext/74150059/impulse.o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ${OBJECTDIR}/_ext/182643316/system_iic5.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o.d ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d ${OBJECTDIR}/_ext/1472958452/ethernet.o.d ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d ${OBJECTDIR}/_ext/567204950/app.o.d ${OBJECTDIR}/_ext/567204950/app_settings.o.d ${OBJECTDIR}/_ext/567204950/app_sat.o.d ${OBJECTDIR}/_ext/1360919890/program.o.d ${OBJECTDIR}/_ext/1360919890/zvono.o.d ${OBJECTDIR}/_ext/1360919890/spi.o.d ${OBJECTDIR}/_ext/1360919890/cgi.o.d ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d ${OBJECTDIR}/_ext/1360919890/NVMem.o.d ${OBJECTDIR}/_ext/1360919890/settings.o.d ${OBJECTDIR}/_ext/1360919890/iic.o.d ${OBJECTDIR}/_ext/567204950/mcp.o.d ${OBJECTDIR}/_ext/182643316/system_catch.o.d ${OBJECTDIR}/_ext/182643316/system_configbits.o.d ${OBJECTDIR}/_ext/182643316/system_iic2.o.d ${OBJECTDIR}/_ext/182643316/system_int4.o.d ${OBJECTDIR}/_ext/182643316/system_io.o.d ${OBJECTDIR}/_ext/182643316/system_onewire.o.d ${OBJECTDIR}/_ext/182643316/system_settings.o.d ${OBJECTDIR}/_ext/182643316/system_t1.o.d ${OBJECTDIR}/_ext/182643316/system_oc5.o.d ${OBJECTDIR}/_ext/182643316/system_ser5.o.d ${OBJECTDIR}/_ext/182643316/system_ser2.o.d ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d ${OBJECTDIR}/_ext/1986356507/cgi.o.d ${OBJECTDIR}/_ext/341170268/pt_delay.o.d ${OBJECTDIR}/_ext/1986341306/ds3231.o.d ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d ${OBJECTDIR}/_ext/1986341306/sat.o.d ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFInit.o.d ${OBJECTDIR}/_ext/1437884543/WFMac.o.d ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d ${OBJECTDIR}/_ext/1437884543/WFScan.o.d ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d ${OBJECTDIR}/_ext/935941731/ARP.o.d ${OBJECTDIR}/_ext/935941731/Announce.o.d ${OBJECTDIR}/_ext/935941731/AutoIP.o.d ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/935941731/BigInt.o.d ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/935941731/DHCP.o.d ${OBJECTDIR}/_ext/935941731/DHCPs.o.d ${OBJECTDIR}/_ext/935941731/DNS.o.d ${OBJECTDIR}/_ext/935941731/DNSs.o.d ${OBJECTDIR}/_ext/935941731/Delay.o.d ${OBJECTDIR}/_ext/935941731/DynDNS.o.d ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/935941731/FTP.o.d ${OBJECTDIR}/_ext/935941731/FileSystem.o.d ${OBJECTDIR}/_ext/935941731/HTTP2.o.d ${OBJECTDIR}/_ext/935941731/Hashes.o.d ${OBJECTDIR}/_ext/935941731/Helpers.o.d ${OBJECTDIR}/_ext/935941731/ICMP.o.d ${OBJECTDIR}/_ext/935941731/IP.o.d ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d ${OBJECTDIR}/_ext/935941731/MPFS2.o.d ${OBJECTDIR}/_ext/935941731/NBNS.o.d ${OBJECTDIR}/_ext/935941731/RSA.o.d ${OBJECTDIR}/_ext/935941731/Random.o.d ${OBJECTDIR}/_ext/935941731/Reboot.o.d ${OBJECTDIR}/_ext/935941731/SMTP.o.d ${OBJECTDIR}/_ext/935941731/SNMP.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d ${OBJECTDIR}/_ext/935941731/SNTP.o.d ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d ${OBJECTDIR}/_ext/935941731/SSL.o.d ${OBJECTDIR}/_ext/935941731/StackTsk.o.d ${OBJECTDIR}/_ext/935941731/TCP.o.d ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/TFTPc.o.d ${OBJECTDIR}/_ext/935941731/Telnet.o.d ${OBJECTDIR}/_ext/935941731/UART.o.d ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/935941731/UDP.o.d ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/935941731/display_ip.o.d ${OBJECTDIR}/_ext/935941731/Tick.o.d ${OBJECTDIR}/_ext/74150059/impulse2.o.d ${OBJECTDIR}/_ext/74150059/impulse1.o.d ${OBJECTDIR}/_ext/74150059/impulse.o.d ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d ${OBJECTDIR}/_ext/182643316/system_iic5.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o ${OBJECTDIR}/_ext/74150059/impulse2.o ${OBJECTDIR}/_ext/74150059/impulse1.o ${OBJECTDIR}/_ext/74150059/impulse.o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ${OBJECTDIR}/_ext/182643316/system_iic5.o

# Source Files
SOURCEFILES=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c ../framework/impulse/impulse2.c ../framework/impulse/impulse1.c ../framework/impulse/impulse.c ../framework/sat/ds3231_pos.c ../app/system/system_iic5.c



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
	${MAKE}  -f nbproject/Makefile-F210V02.mk ${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/26ad110cca2812178b6af18d507c9884c3db06a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../app" -I"../app/Configs" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../app/ethernet" -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  -DXPRJ_F210V02=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/4002008518c75dadd5b1aff078b666f4570a9f75 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/d9a7004f9f6e09f5089dabb5778bd6edcf0f6708 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/a50c02dc6669ebd4a25ad6f03d1f80cd4028e0d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/9f9c90fd30dc60470bfb8652e74a47e7d4c733e8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/cf79a6d21f590237ca28cfe41f215ad3c03fe7c4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/70076582d5e5479fc41c7940ceb15aa146c10ce6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/4f41ce62bcb2c3a75cc2f12c0c6f99340b7f5701 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/7a386a54aa9767fc6238f7b8da9ca395ab32abcb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/3b86c468891e283a9de42d3a5f75fafb1e1526de .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/43987be9df7e107358223165317631419207ae5a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/79e37ddf15e4a99d3a6eb4dbd609948b52e81ec5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/40cf6ce792f96111e3ac66579a487cd0ba0bac9d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/1afb0bcf75c13ebf11b156b9984e94f5f7f1744d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/fbea35e9eb29026746e0f1d9c138e21f123aaa81 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/e633bd82e3d264133029d41db983eaf56cbf2233 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/299f91d03bf2657c0a101a44c7039a89a997f570 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/c5cb72951b819263c6dcc953a7898b660ba25330 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/2e293deee693b2ad95dda27bbc8087995d0161e4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/b5ea0223bdb5e2f3faae631082b5a86b03e22f19 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/bd9ac84e8dddfd18d5b6fafb55ea763506eb2986 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/a9a27e5eb36e35c2b18d233460eb03369d520dd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/4e59db0bc4b2d45e734296f82e07b564c03d16af .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/91ea64c571943f6692ca8d48cd8fe1f3b011ca12 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/dcdc5e65373feb2fdde5d974073f7e80506c656b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/a4d214edcf6e2972d1d9169843befb31fdd09f1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/2fbfdc228fa1c1e7ffaf7992962c7681fef21492 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/35f1b1192754209cff1744af33ae1bde3d006298 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/eda64be6f913895a0e8089d0dbc074a9e9641e96 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/5f534642344300cc6262e4c31d1884c17b470ac4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/bf3b7eb09bf8dd898b7e9e894b6bf98724efece0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/6e1379adee9f87b8aeba20520706b5b1802f2fe7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/fe2ff2d4fce333b2ab5cf9ad1a7906919606a446 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/bdeecfa7a0e851a1e0174ff732eed2ff3ef5f85e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/b34f69787c2ab6d3a029648e226167df3f7b88c4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/923c8df24ae17deef854b38e244cf0ce43162f73 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/9483134812936f1a7741f60766aa4465f46dff02 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/311daa0a2e492a6cda06a822588eebbb184b3c3a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/31a3342adef6202231f801753d7696e4f654337a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/5977239b9a285a67c6b48654ac516614113cd463 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/2f46f257675eb36ed3c0eae774dfe4e8b5cb18f0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/489163915f671eab9eccdb64aaa9040d97cb2930 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/e36f1bc9e03a1c417922284f35670ad9f20850ad .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/fbe1c3fb703eefb6211f5356ef57d12459b364aa .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/13a9faab9dd33f0eabdcfd3c54d00516c0735b90 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/e2999d18edba0eba8fda383bbaedf713c4e0fe8a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/86731e62b3d8406e6758771313d3f9b0ffb3b581 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/617c279d0e1a59e2fe60f5571be0375d39390516 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/bd8c06ff6e6c8cd62b353de3bc654f2c42495601 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/46a41910e23dcc885f9b2a192134a6b6ba2fa9fd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/ce173c03d93198590b1e4bd682fa19c5151881ed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/ff8603becf3475b9808df106f80b21922d5df52a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/13dc2e5575b003f45c2af8cab92b0e4acb5bdaca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/ac7afb9a9fd2dc8fc63879e013bca11813b20506 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/62ecd19813002c2754cdce4128f4760e7302f1ff .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/b565a8eedb19dfb9078911ecd29031b60e86b11c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/5351cd1f23f4eb1da897e51630b78154f0797e93 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/c20daa62365d950b699eec939e400e116e7e2263 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/9351f09590a4477a4fc151d4b0637c7697de910f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/474bd1ff2493b1fc92da7b9fa339fb06791de4cb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/c2c751a6f960ef9af3117ab7935b3ef0dea563b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/6ec724a84b0ba933d8bf8ea8cae7d23dbf1c7901 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/9d17496917944f64fc1ee1107abaebd462590bb6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/c5569ea4bc7c699c6d51634c8d5f2aa0866738c2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/f385617cef3d183151d594873881d09d24d1bc3a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/52569933a6fdb68c8fc14f6e35c60f11c09272d9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/cf93f6dbb91430706a6906eaf46bbf02fd4ada86 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/7453aa5e79a9167c56e41491a43ac44a791740c6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/cc1a8f61ef5f390bb915ce67af89ada846f7f460 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/c3ee19de86261479d2a9bc9e53692b318f832dc0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/7be23af8c8063e392fac7d04dda20cf108041136 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/199d44af7cdbe44f16906f77bcf35548bce34b5a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/99c9df15d713ed09b2e9ce817a818fdc9c023d04 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/393d28e9f3a461409f2628aed29d83558a514f16 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/f716f083377a68ceec3f405b8330b612f1d1135f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/22a1d9f0fec5db3bdf774540a580dd5fcb1e67e7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/87e96c978562561d83199e1aa501185effe6307e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/2dcb760ef5934f5f639a48e7285e4fbbf95cfb08 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/2136dbe6ee0cb61355bd772cf7e1d24d9937b5a9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/67db2236bf06f77bc80d5a677213f5f0b29d9a5d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/62eabb02214843992cc5af264a62eff5c957d32b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/bd242392728e2d9982656cad693045c0bc9a23f8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/240b6225fade0bb2d517bfda3b88c0a9551ce1e7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/9ff26f4e592268ea5428bfae4bece5039158f32b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/1343a1c8f2f7312bd14b8388b0e41bcf98ba9ad3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/fff3f4e3c5a111ab3f5e7a089926323197813598 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/43230af86604778fd8456715c51d84de2cbce8ca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/c4f5a3e234eb49a95a9d421810c7c35f810ef601 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/3c15519acd20af8d7f3125d0cda3389320bfa5c8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/f182875de1a9671821f7764db3a2022639a1a7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/2a6f81fd4a082d54390130c9a7c477ae30345ed7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/60652af8f3eb1612dda12793fa339b05ade3fcf1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/26ab4cddac20e9d5b4cf590a089afb27bc6e3fa5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/8df7d6133ef86433d5dbdd8aa9164f9410b8b73c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/dce76c099a0ee62b4b325d7599f6af4afe311ce5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/553c2bf5c697fce72f69553c56e9a1a539880ade .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/3e236ac733c96953d6d9ea751b64f9f7e5efe62d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/4b1fc890f8d99905adc6df2693fce12ba7745c35 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/92f80e1fc78c00e7735add48c449126c56d743e3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/780845fd4e0d503a440f856ab414a027258dde56 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/f9b3977b24424d92c8330e3abc4d2adda7d890fa .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/ea8b511bf974580431fd06ec09778d36437c44e7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/3b1fda00ffaa06aa60251d54c9be8f5d68256a8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/2df901ee93ee36c1f879d57728d595fc6d15bb9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/ac43f6b39ab1015a6593e7bc2443385c1a71320e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/b2f2084d6f745046ea57f192e5bcc17bb16cde0a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/1daffa039c6a0a5ec35947a3491b01ed6e4fc299 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/842d50070e9b8cac98346748e960816fe43df398 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/ad243d37805d38edc73b5ce52423b9ed2f0a8084 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/d8263643e4a7aee5d7f42f9a1c1c0804f1e749c9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/fd08a17b74a8f1cab9ed151ad7f6583ffac08af1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/c2ae651f11cecfab21420e233a3f951cb6eb0e51 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/4ad0f4da58f398c0c9bfdf5be28fb131ccd92d9f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/202f86389f43ed386d66b06b514ec508a8b18534 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/b2969ff341f46ef6443f554fbea625f6777570f4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/2aca4342264e6241081a280f9b5a15840438cef .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/27a6712c1a56466637faa8c107559ac14fb24332 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/5c0175c2bd5de86814397b13d36e5dd1fdf1c72f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/dbb17cec8e35c02596034b2f5c5cba153ddba713 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/77dab76e84db4a83ba672eaa38ad88d9dc6e6849 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/c6ff19868def5396f6bdd65de0b25a3422c11252 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/ee578cedcda852d25db73d2afd992f7d02788975 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/a161542961125939f9619e1a17fb64de4a421b23 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse2.o: ../framework/impulse/impulse2.c  .generated_files/flags/F210V02/85e3bb5c54e58796ec0539e0071bfe0fa1fd2c8e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse2.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse2.o ../framework/impulse/impulse2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse1.o: ../framework/impulse/impulse1.c  .generated_files/flags/F210V02/1324f103ddc34fe48ac79c40d2edcd69cf0f0d49 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse1.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse1.o ../framework/impulse/impulse1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse.o: ../framework/impulse/impulse.c  .generated_files/flags/F210V02/7067d0244816afdd78d45d9b3cd786fa6a1a58c2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse.o ../framework/impulse/impulse.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231_pos.o: ../framework/sat/ds3231_pos.c  .generated_files/flags/F210V02/9555251d7d6423855e4684b7fc2bc261d0a79211 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ../framework/sat/ds3231_pos.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic5.o: ../app/system/system_iic5.c  .generated_files/flags/F210V02/8412bf89540ecc6fec0774ac4961dc4650ba20d0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic5.o ../app/system/system_iic5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/a312725cc1a69b5bc3c2ba4c9a76be7088173061 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/f641027f71f060f94e032f94ef12d118262be0db .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/e44df3793c0fa193a2b3edec76f06d1818fb5195 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/8a756214caf108c7c799b60c81977de33bf60479 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/17d5155ebaae83194d4657a82ee872cba363c628 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/3a556ffb517d010587dfe1f107355d8797a8093e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/66147899624b9ebadbca475f7370a3567889a9d9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/b296e60ab38f7a7d84f2849a7a7af2c45c3df9a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/8911e496ef9f182420d2c0476638318f1671560f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/e9e3af3e789c81413f989e15efde06ea177943dd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/744c9847018be4c839bd553783bdf7fd8809efdc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/c502a7268e2f4449409d069b0053bc3c2212be79 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/bf4c88b7c708177b71dcbc502267b937c608a92e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/35028e5223122bccc25d586938db3b1461cd231b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/7bc10fdc91834ce07442fd4b52b31997ca081c46 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/d9f28505260f4b3f701e6fb340da5ef96708f84c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/dae52422c673eb70322e321c0a20266c2f1689e5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/b93d91b650dac3530c1a631313264968fd3f10d9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/1da09847e5497d52c70e4e5e2e65caab37f1f68d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/92dd0633d717cf7cd388dd924d70467990a55eba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/d498127200f5cb77fae33b2a48ed7f6a5057ba02 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/a37ea570936db947848d8a150419ff6fe8b211c4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/8c095eaac4043b5aaccb434376eed09f762d9b0a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/b600f3509b4cf076d13fc742c82128c2abb58fdc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/be9349b8975e749cdab5095078aba58e863b6590 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/d70d97653351b41bcd328202ebfdf20fe2ea4ce8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/1ae5b9a718abec56d573226f018777a492b795b7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/f5bddbfe86b05b9c617998875d56bd9bbcb8faca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/df35be7b024fdf6225799178933a996b51977605 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/b2a13ead49e34c288870808c5a10ba04e33b30e2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/d9fedd8792d6b75e85c68d6590a42c4237c6da59 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/9a6c7108800c4bc7a6366cce562acebac80198b0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/170a4c5970c1d8cdfa4598ebdc28d3d223851b7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/3ecf5ab059c8b9e8d74095d3aa7ee69f052df4f2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/b38f1ce1064bef122ac338adeb809419cda1f696 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/c94aa42bce0c9deab14ae02672ba358639d61fd9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/6197d9841877faea477cb9ffd5626dba09a33794 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/1f571af7832d05c46d9742980943f070be37cdb6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/8809d5a80a7fe86aed662ce724ded59d437addf .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/8a110637b988f1fc1c3fc2dbd715e19ce255fc3e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/f18aedb9c77ace88f13dc4d17d751b15f27e9131 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/aa6f4fc3c764b77d4d876a81f3521edd9e5960b1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/1ae9b8c480e30e99c2e91ad35c064495f3642ccd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/54274e209435c3adaccf437e60b1fa625f5802f1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/d7bcb09abe02b20078f8b41967989bc046976440 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/f35f663319a000804c99a3cb993e8d9c43b04eb4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/b4368b5434ca985978b1901455ef9efdc0876e15 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/c2847361a69afe89551d4f2bf53e7e757329df5f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/6accffefc340d7afddb7e47d1b23f5444c259552 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/a0bc9c9a84d8c501390793a3248cf0047c70f49c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/eb6f934b864a9e8701f7ec3273c7e707b96c076c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/cd5dcfcb4f3f0d5c450f6eb324c2859b9b98e2e5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/58334b3af9a93476732b0064ed656e56474a12f6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/b8dfc0b09222f7ce38a49c7514d4592782e059e5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/7354b2a1fcda48ec228d31ab7af2717ecdae712d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/9854208dfd2b1ae5baef169c71cd5ea53fd00904 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/d0946a78ff94d9b16c13576b86b86aba5df59565 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/bdc8d239968e8e236d28d039fc157e489828d662 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/7e17beaea0f1d587fd0ca0b03d15a745f936e28e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/5cc2ddfade6c8d1eec139a7f840c25fd8a8c9e75 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/ec33cc4e286be4f64c87610df997bdc0f0f10418 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/cf3ae052986c493a7b554bcaa8202d983c7099bf .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/3c1a9c70172f714be8ce7bed216a28647183abac .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/51e711343952a0df01c919a8c1f0f40352164e71 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/64b87f481fb0467bf0c0b9bb3b6fc01048e2f089 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/49316acf1e8e88fed695e3165015d7983905df8a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/1e6260073b562526302e0676b210655b70221911 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/de00b70509649c3587e111a7c5205966b847f49b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/9571370fa04601536f91b82da97d510ebb9bca0a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/772db34232720bef9d416001d177ffc7a92dfce0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/813ece5992a5a9653eae81bc2de8eb0faa0e63fd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/304194af03b3d541c05350973d7fd540298dc178 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/923ccc8447d493654f579de5147ce4bd04a87f42 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/ded5eac76efd3a86b7bb5676e11a3758778a9531 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/b217a9cc21c697fce7b379794b6c21db3b09860a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/8671f2febd5f0a274ed84b7eb0d46965a9e762d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/cc9688f10cc6e2db57b820cf641b1ca17963d604 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/a7d4326bb93df1b31514cf21d57958862968baed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/3738bd6a6efdf7b798f66621c2bc5e0797dc0bc5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/2949f565b3df234672c9c6a16adb2138c32f901a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/184a4f995d6a71dafc84e07ab4f887bbefeabcde .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/2e0cf74890a5b5f64ad857630625cb71de515766 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/a355e8f9b62d20b2898eef5af148d091779009f9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/e9913a1f1f70cf815b2ed14966ba9221bcc0e193 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/e6faf8501f222535eb30b59e39fad2dde1a03ac .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/943cdc23c45f448f2f0e531a909f9fb329d84d84 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/15760da0134368fbf85dbac1369708cabfd75055 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/5e13277e38d8ebf76051f13d77baa5db0ebda298 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/4e61cd0a823d21dc47376ff1f150639199ef03f4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/c41cd6596e9fd394df9402dc6971e4c8d1ff17dc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/e6055bd006465cca7cf7e2f5f82ac5d359277fa2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/576a9afec8e3b406537b8bf1ee49f053b75dda48 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/1ac0376068d3f2b03446cd4217176ea28e8fa8d9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/1685db2c2a7c5878c213074c5af45b5b74890284 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/8c417d27732669817da9d5b1dca83ce2beef5a62 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/85bdd074013079c7f7ddf3c505c588035162c25a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/1560f680e29ac7d5c460ae8bf4c652ca427e3a66 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/fb4301a8e28cef973a952872e0da6918663629fd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/524aa247a3ad859c01e688aded507aad3fa0b03c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/96a358b70f43b5b3839ce60697d3070c26dfd82d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/959b9307e391f1e198821346698571aa8ccfd3b6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/348f8304468147cc904dd572ac5543f796b5d714 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/8c3f8d70aa6c4661dad43a5a048525f02c8f3fdc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/9dad2cb2295d5e20812022394fbd8c7d66bb003 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/36b18500cfa373b5942a3a1940a6d3d30c707e58 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/cbe561ae88cad305195e0738a5cddb567654b08b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/e6d0a1bb430b0114d96fe60913e324ea3e147bf4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/65d0342fedfaea442b669e2dea67d2f5d68569d6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/d034258ea88fcb17c35d40fe4d756071a41fd0f1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/9b3289655364650db201936d4dcc6ff22cdaabdb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/18b9782fbc09113dbdbe4b5384f992c974e83b21 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/1ca145910ee02d9ba992f8867bd597064a70b7a2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/a98296b619763905a882713e13a37a96cb77e2ac .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/e99d021cedf5f657d4f629c9587c847ee835c158 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/4b7483a0917fde630a5a552fe9496300794b0996 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/c5eae4caaf147ef743945eea8edfb61209be124a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/418bd42ded7832be92c8725fb656638854794294 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/d6253e2ac980aba0357e753788f763706f1953ed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/33eb922ae4f8790b4055c606c353ccc749095f1d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/c527c8ada6fef12be066773e4b991a4ff2e66043 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/b079f88abc7b30a0ff645c0ba4bae52eea021c3a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse2.o: ../framework/impulse/impulse2.c  .generated_files/flags/F210V02/f507b0bc8b0c747bb397baa05de48e74c25a01a0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse2.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse2.o ../framework/impulse/impulse2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse1.o: ../framework/impulse/impulse1.c  .generated_files/flags/F210V02/81d9da3908fbf3476d2d3be1b6fa8b73c937e5ba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse1.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse1.o ../framework/impulse/impulse1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse.o: ../framework/impulse/impulse.c  .generated_files/flags/F210V02/3092d122eb623f0fb53db3af6c41941e4595f7d8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse.o ../framework/impulse/impulse.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231_pos.o: ../framework/sat/ds3231_pos.c  .generated_files/flags/F210V02/2410ca02df7d81946a72df5a791db5d040bfa0f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ../framework/sat/ds3231_pos.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic5.o: ../app/system/system_iic5.c  .generated_files/flags/F210V02/1b08417425cc58cd3b5bdda2265ad503fe60de6b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic5.o ../app/system/system_iic5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../Microchip/TCPIP_Stack/BigInt_helper_elf.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\Microchip\TCPIP_Stack\BigInt_helper_elf.a      -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=10240,--defsym=_min_stack_size=512,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem 
	
else
${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../Microchip/TCPIP_Stack/BigInt_helper_elf.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\Microchip\TCPIP_Stack\BigInt_helper_elf.a      -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10240,--defsym=_min_stack_size=512,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/EMC_3M.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
