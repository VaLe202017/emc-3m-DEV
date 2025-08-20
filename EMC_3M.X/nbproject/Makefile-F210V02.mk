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
SOURCEFILES_QUOTED_IF_SPACED=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/impulse/impulse2.c ../framework/impulse/impulse1.c ../framework/impulse/impulse.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../framework/sat/ds3231_pos.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c ../app/main/app_fault.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/74150059/impulse2.o ${OBJECTDIR}/_ext/74150059/impulse1.o ${OBJECTDIR}/_ext/74150059/impulse.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o ${OBJECTDIR}/_ext/567204950/app_fault.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o.d ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d ${OBJECTDIR}/_ext/1472958452/ethernet.o.d ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d ${OBJECTDIR}/_ext/567204950/app.o.d ${OBJECTDIR}/_ext/567204950/app_settings.o.d ${OBJECTDIR}/_ext/567204950/app_sat.o.d ${OBJECTDIR}/_ext/1360919890/program.o.d ${OBJECTDIR}/_ext/1360919890/zvono.o.d ${OBJECTDIR}/_ext/1360919890/spi.o.d ${OBJECTDIR}/_ext/1360919890/cgi.o.d ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d ${OBJECTDIR}/_ext/1360919890/NVMem.o.d ${OBJECTDIR}/_ext/1360919890/settings.o.d ${OBJECTDIR}/_ext/1360919890/iic.o.d ${OBJECTDIR}/_ext/567204950/mcp.o.d ${OBJECTDIR}/_ext/182643316/system_catch.o.d ${OBJECTDIR}/_ext/182643316/system_configbits.o.d ${OBJECTDIR}/_ext/182643316/system_iic2.o.d ${OBJECTDIR}/_ext/182643316/system_int4.o.d ${OBJECTDIR}/_ext/182643316/system_io.o.d ${OBJECTDIR}/_ext/182643316/system_onewire.o.d ${OBJECTDIR}/_ext/182643316/system_settings.o.d ${OBJECTDIR}/_ext/182643316/system_t1.o.d ${OBJECTDIR}/_ext/182643316/system_oc5.o.d ${OBJECTDIR}/_ext/182643316/system_ser5.o.d ${OBJECTDIR}/_ext/182643316/system_ser2.o.d ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d ${OBJECTDIR}/_ext/1986356507/cgi.o.d ${OBJECTDIR}/_ext/74150059/impulse2.o.d ${OBJECTDIR}/_ext/74150059/impulse1.o.d ${OBJECTDIR}/_ext/74150059/impulse.o.d ${OBJECTDIR}/_ext/341170268/pt_delay.o.d ${OBJECTDIR}/_ext/1986341306/ds3231.o.d ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d ${OBJECTDIR}/_ext/1986341306/sat.o.d ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d ${OBJECTDIR}/_ext/1437884543/WFInit.o.d ${OBJECTDIR}/_ext/1437884543/WFMac.o.d ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d ${OBJECTDIR}/_ext/1437884543/WFScan.o.d ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d ${OBJECTDIR}/_ext/935941731/ARP.o.d ${OBJECTDIR}/_ext/935941731/Announce.o.d ${OBJECTDIR}/_ext/935941731/AutoIP.o.d ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/935941731/BigInt.o.d ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/935941731/DHCP.o.d ${OBJECTDIR}/_ext/935941731/DHCPs.o.d ${OBJECTDIR}/_ext/935941731/DNS.o.d ${OBJECTDIR}/_ext/935941731/DNSs.o.d ${OBJECTDIR}/_ext/935941731/Delay.o.d ${OBJECTDIR}/_ext/935941731/DynDNS.o.d ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/935941731/FTP.o.d ${OBJECTDIR}/_ext/935941731/FileSystem.o.d ${OBJECTDIR}/_ext/935941731/HTTP2.o.d ${OBJECTDIR}/_ext/935941731/Hashes.o.d ${OBJECTDIR}/_ext/935941731/Helpers.o.d ${OBJECTDIR}/_ext/935941731/ICMP.o.d ${OBJECTDIR}/_ext/935941731/IP.o.d ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d ${OBJECTDIR}/_ext/935941731/MPFS2.o.d ${OBJECTDIR}/_ext/935941731/NBNS.o.d ${OBJECTDIR}/_ext/935941731/RSA.o.d ${OBJECTDIR}/_ext/935941731/Random.o.d ${OBJECTDIR}/_ext/935941731/Reboot.o.d ${OBJECTDIR}/_ext/935941731/SMTP.o.d ${OBJECTDIR}/_ext/935941731/SNMP.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d ${OBJECTDIR}/_ext/935941731/SNTP.o.d ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d ${OBJECTDIR}/_ext/935941731/SSL.o.d ${OBJECTDIR}/_ext/935941731/StackTsk.o.d ${OBJECTDIR}/_ext/935941731/TCP.o.d ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/TFTPc.o.d ${OBJECTDIR}/_ext/935941731/Telnet.o.d ${OBJECTDIR}/_ext/935941731/UART.o.d ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/935941731/UDP.o.d ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/935941731/display_ip.o.d ${OBJECTDIR}/_ext/935941731/Tick.o.d ${OBJECTDIR}/_ext/567204950/app_fault.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566918717/cmdwatch.o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ${OBJECTDIR}/_ext/1472958452/ethernet.o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ${OBJECTDIR}/_ext/567204950/app.o ${OBJECTDIR}/_ext/567204950/app_settings.o ${OBJECTDIR}/_ext/567204950/app_sat.o ${OBJECTDIR}/_ext/1360919890/program.o ${OBJECTDIR}/_ext/1360919890/zvono.o ${OBJECTDIR}/_ext/1360919890/spi.o ${OBJECTDIR}/_ext/1360919890/cgi.o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ${OBJECTDIR}/_ext/1360919890/NVMem.o ${OBJECTDIR}/_ext/1360919890/settings.o ${OBJECTDIR}/_ext/1360919890/iic.o ${OBJECTDIR}/_ext/567204950/mcp.o ${OBJECTDIR}/_ext/182643316/system_catch.o ${OBJECTDIR}/_ext/182643316/system_configbits.o ${OBJECTDIR}/_ext/182643316/system_iic2.o ${OBJECTDIR}/_ext/182643316/system_int4.o ${OBJECTDIR}/_ext/182643316/system_io.o ${OBJECTDIR}/_ext/182643316/system_onewire.o ${OBJECTDIR}/_ext/182643316/system_settings.o ${OBJECTDIR}/_ext/182643316/system_t1.o ${OBJECTDIR}/_ext/182643316/system_oc5.o ${OBJECTDIR}/_ext/182643316/system_ser5.o ${OBJECTDIR}/_ext/182643316/system_ser2.o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ${OBJECTDIR}/_ext/1986356507/cgi.o ${OBJECTDIR}/_ext/74150059/impulse2.o ${OBJECTDIR}/_ext/74150059/impulse1.o ${OBJECTDIR}/_ext/74150059/impulse.o ${OBJECTDIR}/_ext/341170268/pt_delay.o ${OBJECTDIR}/_ext/1986341306/ds3231.o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ${OBJECTDIR}/_ext/1986341306/sat.o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ${OBJECTDIR}/_ext/1437884543/WFInit.o ${OBJECTDIR}/_ext/1437884543/WFMac.o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ${OBJECTDIR}/_ext/1437884543/WFScan.o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ${OBJECTDIR}/_ext/935941731/ARP.o ${OBJECTDIR}/_ext/935941731/Announce.o ${OBJECTDIR}/_ext/935941731/AutoIP.o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ${OBJECTDIR}/_ext/935941731/BigInt.o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/935941731/DHCP.o ${OBJECTDIR}/_ext/935941731/DHCPs.o ${OBJECTDIR}/_ext/935941731/DNS.o ${OBJECTDIR}/_ext/935941731/DNSs.o ${OBJECTDIR}/_ext/935941731/Delay.o ${OBJECTDIR}/_ext/935941731/DynDNS.o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/935941731/FTP.o ${OBJECTDIR}/_ext/935941731/FileSystem.o ${OBJECTDIR}/_ext/935941731/HTTP2.o ${OBJECTDIR}/_ext/935941731/Hashes.o ${OBJECTDIR}/_ext/935941731/Helpers.o ${OBJECTDIR}/_ext/935941731/ICMP.o ${OBJECTDIR}/_ext/935941731/IP.o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ${OBJECTDIR}/_ext/935941731/MPFS2.o ${OBJECTDIR}/_ext/935941731/NBNS.o ${OBJECTDIR}/_ext/935941731/RSA.o ${OBJECTDIR}/_ext/935941731/Random.o ${OBJECTDIR}/_ext/935941731/Reboot.o ${OBJECTDIR}/_ext/935941731/SMTP.o ${OBJECTDIR}/_ext/935941731/SNMP.o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ${OBJECTDIR}/_ext/935941731/SNTP.o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ${OBJECTDIR}/_ext/935941731/SSL.o ${OBJECTDIR}/_ext/935941731/StackTsk.o ${OBJECTDIR}/_ext/935941731/TCP.o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/TFTPc.o ${OBJECTDIR}/_ext/935941731/Telnet.o ${OBJECTDIR}/_ext/935941731/UART.o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ${OBJECTDIR}/_ext/935941731/UDP.o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/935941731/display_ip.o ${OBJECTDIR}/_ext/935941731/Tick.o ${OBJECTDIR}/_ext/567204950/app_fault.o

# Source Files
SOURCEFILES=../app/cmnd/cmdwatch.c ../app/ethernet/CustomSSLCert.c ../app/ethernet/WF_Config.c ../app/ethernet/ethernet.c ../app/ethernet/NTPClient.c ../app/ethernet/custom_http_app.c ../app/ethernet/custom_http_cgi.c ../app/main/app.c ../app/main/app_settings.c ../app/main/app_sat.c ../app/program.c ../app/zvono.c ../app/spi.c ../app/cgi.c ../app/prgrm01.c ../app/set_prgm.c ../app/NVMem.c ../app/settings.c ../app/iic.c ../app/main/mcp.c ../app/system/system_catch.c ../app/system/system_configbits.c ../app/system/system_iic2.c ../app/system/system_int4.c ../app/system/system_io.c ../app/system/system_onewire.c ../app/system/system_settings.c ../app/system/system_t1.c ../app/system/system_oc5.c ../app/system/system_ser5.c ../app/system/system_ser2.c ../app/web_pages2/HTTPPrint.c ../app/web_pages2/MPFSImg2.c ../framework/cgi/cgi.c ../framework/impulse/impulse2.c ../framework/impulse/impulse1.c ../framework/impulse/impulse.c ../framework/pt/pt_delay.c ../framework/sat/ds3231.c ../framework/sat/gprmc_gps.c ../framework/sat/sat.c ../framework/sat/sat_conv.c ../framework/sat/ds3231_pos.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP_Stack/WiFi/WFConsole.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP_Stack/WiFi/WFInit.c ../Microchip/TCPIP_Stack/WiFi/WFMac.c ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP_Stack/WiFi/WFScan.c ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c ../Microchip/TCPIP_Stack/ARCFOUR.c ../Microchip/TCPIP_Stack/ARP.c ../Microchip/TCPIP_Stack/Announce.c ../Microchip/TCPIP_Stack/AutoIP.c ../Microchip/TCPIP_Stack/BerkeleyAPI.c ../Microchip/TCPIP_Stack/BigInt.c ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S ../Microchip/TCPIP_Stack/DHCP.c ../Microchip/TCPIP_Stack/DHCPs.c ../Microchip/TCPIP_Stack/DNS.c ../Microchip/TCPIP_Stack/DNSs.c ../Microchip/TCPIP_Stack/Delay.c ../Microchip/TCPIP_Stack/DynDNS.c ../Microchip/TCPIP_Stack/ENC28J60.c ../Microchip/TCPIP_Stack/ENCX24J600.c ../Microchip/TCPIP_Stack/ETH97J60.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c ../Microchip/TCPIP_Stack/FTP.c ../Microchip/TCPIP_Stack/FileSystem.c ../Microchip/TCPIP_Stack/HTTP2.c ../Microchip/TCPIP_Stack/Hashes.c ../Microchip/TCPIP_Stack/Helpers.c ../Microchip/TCPIP_Stack/ICMP.c ../Microchip/TCPIP_Stack/IP.c ../Microchip/TCPIP_Stack/LCDBlocking.c ../Microchip/TCPIP_Stack/MPFS2.c ../Microchip/TCPIP_Stack/NBNS.c ../Microchip/TCPIP_Stack/RSA.c ../Microchip/TCPIP_Stack/Random.c ../Microchip/TCPIP_Stack/Reboot.c ../Microchip/TCPIP_Stack/SMTP.c ../Microchip/TCPIP_Stack/SNMP.c ../Microchip/TCPIP_Stack/SNMPv3.c ../Microchip/TCPIP_Stack/SNMPv3USM.c ../Microchip/TCPIP_Stack/SNTP.c ../Microchip/TCPIP_Stack/SPIEEPROM.c ../Microchip/TCPIP_Stack/SPIFlash.c ../Microchip/TCPIP_Stack/SPIRAM.c ../Microchip/TCPIP_Stack/SSL.c ../Microchip/TCPIP_Stack/StackTsk.c ../Microchip/TCPIP_Stack/TCP.c ../Microchip/TCPIP_Stack/TCPPerformanceTest.c ../Microchip/TCPIP_Stack/TFTPc.c ../Microchip/TCPIP_Stack/Telnet.c ../Microchip/TCPIP_Stack/UART.c ../Microchip/TCPIP_Stack/UART2TCPBridge.c ../Microchip/TCPIP_Stack/UDP.c ../Microchip/TCPIP_Stack/UDPPerformanceTest.c ../Microchip/TCPIP_Stack/ZeroconfHelper.c ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP_Stack/display_ip.c ../Microchip/TCPIP_Stack/Tick.c ../app/main/app_fault.c



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
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/68f8ebcf056dc27b38b38046611ef298b2730149 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../app" -I"../app/Configs" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../app/ethernet" -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  -DXPRJ_F210V02=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/935941731/BigInt_helper_PIC32.o: ../Microchip/TCPIP_Stack/BigInt_helper_PIC32.S  .generated_files/flags/F210V02/7f36f084f4821abcceb286865a22a753f22dff33 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/bbf2d5a4874b0e78405c0a73911027406a8c9ff5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/e56c2ca0d3fe9c63f0a00fc47f25583fd0f90338 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/aa6766bb56636ac0e1dd5920425d28387816ec57 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/51514b8131a6926975ca1e21d26bd4d009acce0e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/b0f7a03550f1f7272f5f72854547f75e26ecd3e1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/655ed5cadfc4a85b19ae70f22e4203cd32fa8ca7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/12e3edfd6cb1b118de162eebee3e43434d990d1d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/a4678d4e84124427eee7bc760970278033fa0b9d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/c4f127b1159d3b8ac29f2cc62148547589da55f9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/a024d7f020cd1429e93c3befe49e881f19fb2736 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/1cdbb058e4c66f67eff1c024137e5ad03d3e3d33 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/af388fe5b996a687eb06cc08509fb90e9ce4b2c1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/50c773b53cad571d935c487e70033fa61f92328f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/fca30bd44bb5b90d5cb903d3bc4dee5411980004 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/9372522dab615b11a0533b86285fb511381ee0e2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/d295647dc60cb5e2750dbba281616dfd82009a87 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/b7fd56c5dcadaff0dcd0235bb89e848254db2779 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/246f8b3d29a19a57f7763046e670afaa75e162e2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/890267896ffb492e7251803c7da55fd34bb5fad8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/a803d220e840a26de017e38ca256cf3e7fa1b8aa .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/a63b2d7c014dad99b893425ef41c25535a8c9e3b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/55bb3ea5dd93746eea09f3d96559de35538a0c7d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/126106b474665606c45d2815bbf5f8cba619c48f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/94f679406b470ab2c446026d5452ad0f25667bcc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/fc894c90a0e42b207f5c1baf5d1546332a50f1ee .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/20bb11e3e8bc5177c94226acc5b9856afba4391b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/3e53ea6f1673867cbb56ceb51aa503609248386a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/7708b452fb0e74cb1d631a73486dd2bb3ab097fb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/5adde7f386afd3cce0f559643c8b8b1a784acc1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/e84e82385f57ac87b9f235d8d1db7531014f9a11 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/5e4e985b67e99d1f63d57f1aa09aa5ce6377f3c8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/6633219965e3b6db47ecfe6019e0cab01c7ff4d9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/524aa6cff901bbbffa00c890b1be6eb1c9dd619e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/704484f371ae7b285a673cd9a65ca40edd54fc86 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse2.o: ../framework/impulse/impulse2.c  .generated_files/flags/F210V02/39d167728a704da1d7c630815aeaf79d360caa27 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse2.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse2.o ../framework/impulse/impulse2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse1.o: ../framework/impulse/impulse1.c  .generated_files/flags/F210V02/eb094a85e43b425d97160016b4fd97638e9762a6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse1.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse1.o ../framework/impulse/impulse1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse.o: ../framework/impulse/impulse.c  .generated_files/flags/F210V02/cf9125e90430d621508615cf560a09699fe4b808 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse.o ../framework/impulse/impulse.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/a843c51c0b7000469a73ff83eed25a53346858d8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/dd8532a2dc42cc8ddfedab4d29ce521027e31198 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/1c8542be7b861a05349aef9b546c118a5cb0100f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/54db701ee7a17227b34694e17ee104a2491ba5b9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/671cf065241d95e5a030bca0f3c424ed607107f9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231_pos.o: ../framework/sat/ds3231_pos.c  .generated_files/flags/F210V02/ab17f12ad7499e2e9d10e423c56422461aa73bca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ../framework/sat/ds3231_pos.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/9d6d268b915f6914ef4e561178a7471a5c284d1d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/6763c26b36bc5c1521a5780bd70d46e62260bec1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/694fe92f0c459bfaf4eb796f1a10688050ff7f38 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/bdeb1bd23261a5728ce5d52330733698347ebf92 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/dba31b226c8cd0849e716d53eff36b8f34d20b45 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/bae47e9f58a9379aca1ff382a119823776a972ae .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/959738183f724ea94b1a109c6750f793dc062647 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/d4b0f346a7b5b72825be8c9477f940536297b446 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/809bb5555ce23d9d967a9dbd947df9003f9705e5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/36c5855a2826e26ca4c672e97b2775093da35ba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/d6e970e3f4b2f09c26ed2dc976693d5fe6264a11 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/79d460957962f1d5baf017d5834a66ce484888f6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/77c24459150358a2526546992bd5ebc2c960817a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/12417c9d5007ab3b5f6445c26332a6790d7f3fc9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/128bf3ec3df2fb51d2fdad0e2f317907bab902fe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/59aaa4284a778040cd69c43a35411f34f3c197ba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/e20f4514f8b10811620fb4484fadbd5f9e908cb5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/fd8e123df247341bc3b507aba02bd38db2a27099 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/c7cb684a9b78ecadc76639e114f50bd5b5430193 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/83a51acacc7b6cbf94c4d38f8c5d9dc5eb32ea9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/aa375fa8f95217414c4a6f72687143eca6b4896d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/a6550604d1001042ac23a5940e816e3a5295cb3b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/96261cfbe6973f5242ffcd1c6e42a3ec57edef64 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/edfe5cab62ae2bc58cbc866ba2a3263b7e9262c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/8090575a3aab35083793cb244efbc1d452657307 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/6dacb59036fab3b3cb81552a105ea045b64d7fc4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/dca97fabe6da153c4e26e72ab0eac3fc20b79f6f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/78cd632451365dcf2e994af0e3ba09000018ed32 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/9d9dbb359a512c1bb487980f32d3b3540d23279c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/38d450e4a193f0e186779adf0a54342713ac0eed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/9b41227a3bb7087a1b21de56dcd2a4244752c497 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/6c0b09165666c58fe35fc9d743de6d67c2246d75 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/9dd9cd526d2bdf8708ec9a7749189a7f651a611d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/5d64c49fdf1cf86e26afe4d798c11a80409b2db8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/7ac0ce1ad30f1d03dc67755738b762cd319b937d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/fd551645b7fff3de75066cb8159bdd31bd7b0df7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/4bc93748f2380027b7ce2ed83054fc21670005c1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/8f112ef1d54a9f2bdccdc578ede0ed21d569abba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/421d131875d302a0e9f72e649416ad857df1dec8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/c1a8d8bbbf4275a9762cba21e4223d70ae9e91af .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/7fa213129db19895dd14743db3fa934ad554d20 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/e5e7f494e2b13900cdee1a27ccde93924759ea22 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/d17b619b5b6c1c744b8873e8ad2f4e9a686ddcba .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/8cd11e5cad339fce1281880dbc11e1025011e20c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/f7ad6c8b3b7dc8230d445b1ef7bef31eebb26296 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/bad425cbd3f6f1ea8fe2aa393fb2ccbef9086a43 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/d143f6f31addb6c8dcf34e6e3b32180d7c295c4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/73a96c2ac8a1f09dc282dc20245809c5a124e54 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/6ff23d903261e28fe883f8248c20490d29e4d49e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/eb526bd6f69a0edc39c615e60401f0db3c301d0d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/9c96a4b724e2f0e989a9a17892bdb6dd92aa0c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/29233ceccb9439e3d4b7eecd7fbbc8c9be3e8a2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/ff92f60b44fd5e312113b021ee97fe6e71376ec5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/29f6e42f6c9dc78084e4596f2e6b451d3cc280f2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/ecbb16075a989813ea785333e3a6865602834f57 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/af360a8f043be2bb19d3dbc8f479c05373654b73 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/21943a8759e706b96cdeb59856333d35c52bba19 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/bcba750b2708c6341daff4867af84d9b383f6665 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/c639a62ba13071d08c312ea82cc5f1fb3d377a33 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/39e2b17e34a393ded6302fb1603e630dd21a2872 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/f56f9490f41e20674b81c50e08909ac47f226784 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/a0744b9921ed04430f43b05a6d6c4356a876150d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/aa17f554c8e4e895da8ee5e0dc696665e9a36ef5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/e5747416b77fe147bde3b3a4899611012dd0a458 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/a82c6741a8d98b6b070948ef8a7f0a62c3efd916 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/ba3c21cdc7ee50c5da88261ca7c30cd623cf7a76 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/a3d6233e6f3437bf6799f482e55c85f3f71a8157 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/fa82b402e6570b49abae986ef32e4fffe1c47354 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/e0c24f67762fafdedacff7679bd309674bc8fc68 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/a44b9c835387b176c9e960924817cd4ad363f420 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/b045bcfb8a0bb7cb05f2fece34f43fe5fa253a04 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/674e63c7dfbd78bb9612ea3cc6323aa99c2ac4fe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/57a571280fb7caf4af5ab74047fa4006cca8c8bf .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/fc88af9da73ef193ff3e8bf9f2552e811da55d7a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/83bd84592a14a6f5f724a34e1e40ae6f7d359252 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/498d9138c59a4086ff3e1818b8691a6c1aa76e6e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/820360513c001ccd1920e9f083f34222b08a6ff1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/b17f22a7567c57344160c7a4786c5b7a5cf7c0c6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/840406864894dd7fc45010aae5f7c1d5df113bbc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/95d42527d3c9bc4791522d60c98ef6b6f548e6ed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/504d364bfbfe51f8293dcdfb50a02f32896f12a7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/c3489896b61b3051600d044ba5072884fdd38c75 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_fault.o: ../app/main/app_fault.c  .generated_files/flags/F210V02/5d6dfb9083eb85c910477026dd819b9e70d145a3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_fault.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_fault.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_fault.o.d" -o ${OBJECTDIR}/_ext/567204950/app_fault.o ../app/main/app_fault.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/566918717/cmdwatch.o: ../app/cmnd/cmdwatch.c  .generated_files/flags/F210V02/5146ab379e61e14815a7a4cf6e1bc146a966b8e3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/566918717" 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/566918717/cmdwatch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/566918717/cmdwatch.o.d" -o ${OBJECTDIR}/_ext/566918717/cmdwatch.o ../app/cmnd/cmdwatch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o: ../app/ethernet/CustomSSLCert.c  .generated_files/flags/F210V02/b8e237b47ed061d7e320a66183c36f45a032722b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472958452/CustomSSLCert.o ../app/ethernet/CustomSSLCert.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/WF_Config.o: ../app/ethernet/WF_Config.c  .generated_files/flags/F210V02/da56d9fc3e7e808adc8c28403d52d5a618d764d4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472958452/WF_Config.o ../app/ethernet/WF_Config.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/ethernet.o: ../app/ethernet/ethernet.c  .generated_files/flags/F210V02/5c13ffa49d4323ddb05e3a4becb050c5c54b96cd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/ethernet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/ethernet.o.d" -o ${OBJECTDIR}/_ext/1472958452/ethernet.o ../app/ethernet/ethernet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/NTPClient.o: ../app/ethernet/NTPClient.c  .generated_files/flags/F210V02/fea79a9390d681e20c40d6b45688a0028d18d829 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/NTPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/NTPClient.o.d" -o ${OBJECTDIR}/_ext/1472958452/NTPClient.o ../app/ethernet/NTPClient.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_app.o: ../app/ethernet/custom_http_app.c  .generated_files/flags/F210V02/38af5492f014bbdcfee5f3c42727b1427ff22563 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_app.o ../app/ethernet/custom_http_app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o: ../app/ethernet/custom_http_cgi.c  .generated_files/flags/F210V02/5d479f67c2dec0dcf578074fc74ae1b3c19fdb9a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472958452" 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o.d" -o ${OBJECTDIR}/_ext/1472958452/custom_http_cgi.o ../app/ethernet/custom_http_cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app.o: ../app/main/app.c  .generated_files/flags/F210V02/aa5cad8ce4507bca56a84420f1623f17babff61a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app.o.d" -o ${OBJECTDIR}/_ext/567204950/app.o ../app/main/app.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_settings.o: ../app/main/app_settings.c  .generated_files/flags/F210V02/1dc02ce063bfe7f6183f62596e6137b35d87970f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_settings.o.d" -o ${OBJECTDIR}/_ext/567204950/app_settings.o ../app/main/app_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_sat.o: ../app/main/app_sat.c  .generated_files/flags/F210V02/726e5ea499da7d994207eced315f30f2c48e92a2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_sat.o.d" -o ${OBJECTDIR}/_ext/567204950/app_sat.o ../app/main/app_sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/program.o: ../app/program.c  .generated_files/flags/F210V02/2c58aa4599033e93ad93ac633211c8614f7fb7ff .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/program.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/program.o.d" -o ${OBJECTDIR}/_ext/1360919890/program.o ../app/program.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/zvono.o: ../app/zvono.c  .generated_files/flags/F210V02/e9de3675d960ccb30b0a04759fb4e0435f4bb9e0 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/zvono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/zvono.o.d" -o ${OBJECTDIR}/_ext/1360919890/zvono.o ../app/zvono.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/spi.o: ../app/spi.c  .generated_files/flags/F210V02/98b1a79aa0c9910b1a1d90268e6faac78a8bcbda .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/spi.o.d" -o ${OBJECTDIR}/_ext/1360919890/spi.o ../app/spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/cgi.o: ../app/cgi.c  .generated_files/flags/F210V02/7154281e2b532c123b9d9b3ab54c8f46b8cf775c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/cgi.o.d" -o ${OBJECTDIR}/_ext/1360919890/cgi.o ../app/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/prgrm01.o: ../app/prgrm01.c  .generated_files/flags/F210V02/214dc7c6f99afb93c812726a7a47829a989e197d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/prgrm01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/prgrm01.o.d" -o ${OBJECTDIR}/_ext/1360919890/prgrm01.o ../app/prgrm01.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/set_prgm.o: ../app/set_prgm.c  .generated_files/flags/F210V02/7c3487ac54bc570bc06707cbdb7cbb4b7f8f71fc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/set_prgm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/set_prgm.o.d" -o ${OBJECTDIR}/_ext/1360919890/set_prgm.o ../app/set_prgm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/NVMem.o: ../app/NVMem.c  .generated_files/flags/F210V02/c4f34d838ca3a0b6abca6db9244af02c216b0d24 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/NVMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/NVMem.o.d" -o ${OBJECTDIR}/_ext/1360919890/NVMem.o ../app/NVMem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/settings.o: ../app/settings.c  .generated_files/flags/F210V02/2602a94df6f803bb909945f31d23dd2e6cca74c8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/settings.o.d" -o ${OBJECTDIR}/_ext/1360919890/settings.o ../app/settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360919890/iic.o: ../app/iic.c  .generated_files/flags/F210V02/cff56f778dbc15cd200565aa44d1afbf6049c949 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/iic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/iic.o.d" -o ${OBJECTDIR}/_ext/1360919890/iic.o ../app/iic.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/mcp.o: ../app/main/mcp.c  .generated_files/flags/F210V02/eea4332142e76b5afdff4fe4285583c06e495bca .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/mcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/mcp.o.d" -o ${OBJECTDIR}/_ext/567204950/mcp.o ../app/main/mcp.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_catch.o: ../app/system/system_catch.c  .generated_files/flags/F210V02/cadb0795e2326238cde55a762c4e192f041ac0c3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_catch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_catch.o.d" -o ${OBJECTDIR}/_ext/182643316/system_catch.o ../app/system/system_catch.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_configbits.o: ../app/system/system_configbits.c  .generated_files/flags/F210V02/61f2812040b92d3cca2d42d46dc2a2c27b8ec5ff .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_configbits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_configbits.o.d" -o ${OBJECTDIR}/_ext/182643316/system_configbits.o ../app/system/system_configbits.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_iic2.o: ../app/system/system_iic2.c  .generated_files/flags/F210V02/6ff16ba548205f5e578905fe22ee200851810c11 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_iic2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_iic2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_iic2.o ../app/system/system_iic2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_int4.o: ../app/system/system_int4.c  .generated_files/flags/F210V02/2a2fd4a301de807f65dd6ff0055422ef50c2eebe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_int4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_int4.o.d" -o ${OBJECTDIR}/_ext/182643316/system_int4.o ../app/system/system_int4.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_io.o: ../app/system/system_io.c  .generated_files/flags/F210V02/cf172f192fe6a560d350d6fce5bd350d54f9c18c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_io.o.d" -o ${OBJECTDIR}/_ext/182643316/system_io.o ../app/system/system_io.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_onewire.o: ../app/system/system_onewire.c  .generated_files/flags/F210V02/cd3ad478f42f5750d8070bb9d600675c49e73c46 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_onewire.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_onewire.o.d" -o ${OBJECTDIR}/_ext/182643316/system_onewire.o ../app/system/system_onewire.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_settings.o: ../app/system/system_settings.c  .generated_files/flags/F210V02/324261acdb527d4b2397eee2ef12420ce4aaa676 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_settings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_settings.o.d" -o ${OBJECTDIR}/_ext/182643316/system_settings.o ../app/system/system_settings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_t1.o: ../app/system/system_t1.c  .generated_files/flags/F210V02/591ade973dd590beeb1149584d8091318e67ba2a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_t1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_t1.o.d" -o ${OBJECTDIR}/_ext/182643316/system_t1.o ../app/system/system_t1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_oc5.o: ../app/system/system_oc5.c  .generated_files/flags/F210V02/a058c1b39a7c7700144503cd75aa017863ec22e9 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_oc5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_oc5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_oc5.o ../app/system/system_oc5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser5.o: ../app/system/system_ser5.c  .generated_files/flags/F210V02/fb2658894bf34c9d22c43530d158052f56f36870 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser5.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser5.o ../app/system/system_ser5.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/182643316/system_ser2.o: ../app/system/system_ser2.c  .generated_files/flags/F210V02/76086565f51ffc8776af786b41e1dad25514ffbd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182643316" 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o.d 
	@${RM} ${OBJECTDIR}/_ext/182643316/system_ser2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/182643316/system_ser2.o.d" -o ${OBJECTDIR}/_ext/182643316/system_ser2.o ../app/system/system_ser2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/HTTPPrint.o: ../app/web_pages2/HTTPPrint.c  .generated_files/flags/F210V02/12c0332f530255f9a0787a204d1f3d2deaa91a44 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/HTTPPrint.o.d" -o ${OBJECTDIR}/_ext/1602371862/HTTPPrint.o ../app/web_pages2/HTTPPrint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1602371862/MPFSImg2.o: ../app/web_pages2/MPFSImg2.c  .generated_files/flags/F210V02/30fde0163cce49336de9f9c92a1d7b187e3b28a8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1602371862" 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1602371862/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1602371862/MPFSImg2.o ../app/web_pages2/MPFSImg2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986356507/cgi.o: ../framework/cgi/cgi.c  .generated_files/flags/F210V02/69ae272ac023809c2bea0dfb65e5e277cae188e6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986356507" 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986356507/cgi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986356507/cgi.o.d" -o ${OBJECTDIR}/_ext/1986356507/cgi.o ../framework/cgi/cgi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse2.o: ../framework/impulse/impulse2.c  .generated_files/flags/F210V02/12e210699ebe99dbd04185a7fe9038b2843ee873 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse2.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse2.o ../framework/impulse/impulse2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse1.o: ../framework/impulse/impulse1.c  .generated_files/flags/F210V02/9ed35513015276d3505aceb6b1d61cc3a02f03dc .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse1.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse1.o ../framework/impulse/impulse1.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/74150059/impulse.o: ../framework/impulse/impulse.c  .generated_files/flags/F210V02/10db02fe8e31b27f014b42fc25674bdbad97f775 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/74150059" 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o.d 
	@${RM} ${OBJECTDIR}/_ext/74150059/impulse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/74150059/impulse.o.d" -o ${OBJECTDIR}/_ext/74150059/impulse.o ../framework/impulse/impulse.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/341170268/pt_delay.o: ../framework/pt/pt_delay.c  .generated_files/flags/F210V02/75f80c5a07645ec51a593d4a1485ca891b635dd2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341170268" 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/341170268/pt_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/341170268/pt_delay.o.d" -o ${OBJECTDIR}/_ext/341170268/pt_delay.o ../framework/pt/pt_delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231.o: ../framework/sat/ds3231.c  .generated_files/flags/F210V02/8f52e5cceb15f60d2a5f79bc4135551b57d277a1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231.o ../framework/sat/ds3231.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/gprmc_gps.o: ../framework/sat/gprmc_gps.c  .generated_files/flags/F210V02/823bac0cd0495f9838b911708e25e026a2ec4fe7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/gprmc_gps.o.d" -o ${OBJECTDIR}/_ext/1986341306/gprmc_gps.o ../framework/sat/gprmc_gps.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat.o: ../framework/sat/sat.c  .generated_files/flags/F210V02/e6e71e23a9cf8e94a00969c4db492e61dad047d3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat.o ../framework/sat/sat.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/sat_conv.o: ../framework/sat/sat_conv.c  .generated_files/flags/F210V02/7b227ab022a582c3d069d3df1136b82e57d96a42 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/sat_conv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/sat_conv.o.d" -o ${OBJECTDIR}/_ext/1986341306/sat_conv.o ../framework/sat/sat_conv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986341306/ds3231_pos.o: ../framework/sat/ds3231_pos.c  .generated_files/flags/F210V02/28a219daa2a5ecfe0eebb26fa82a5488e0f6ec46 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986341306" 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1986341306/ds3231_pos.o.d" -o ${OBJECTDIR}/_ext/1986341306/ds3231_pos.o ../framework/sat/ds3231_pos.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/F210V02/e2519260260991a4703cff147ee9b2e1c196829a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionAlgorithm.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionAlgorithm.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c  .generated_files/flags/F210V02/6482ec554256e86e4b9a79e2c518a9c4a1c38cac .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionManager.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionManager.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o: ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/F210V02/8197b1844eba235b6e93fe7f4c776693060b6b5f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConnectionProfile.o ../Microchip/TCPIP_Stack/WiFi/WFConnectionProfile.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsole.o: ../Microchip/TCPIP_Stack/WiFi/WFConsole.c  .generated_files/flags/F210V02/d4df6e727cc03f77d4a600193a80dd50dfce20f1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsole.o ../Microchip/TCPIP_Stack/WiFi/WFConsole.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/F210V02/c53c3efe8a6035dd57818f11635c142e2d3fb83a .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIfconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIfconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/F210V02/504bc0c794fff91d66019b507011f6c9a6677eb3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwconfig.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwconfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/F210V02/e82c750937f9b58bccbbaa27889278971d5a11f5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleIwpriv.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleIwpriv.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/F210V02/bbcc559dd5a1890449f053b537101bec35315422 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgHandler.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o: ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/F210V02/305f165bc166463f03a722200c03c9db9c7c2d0f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFConsoleMsgs.o ../Microchip/TCPIP_Stack/WiFi/WFConsoleMsgs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o: ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c  .generated_files/flags/F210V02/e5820b13a8d5ca3dc22ba3af54a002f97259d70 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDataTxRx.o ../Microchip/TCPIP_Stack/WiFi/WFDataTxRx.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o: ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c  .generated_files/flags/F210V02/99d2898aa756cc1973ec2b28a9aa49dfaf275570 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDebugStrings.o ../Microchip/TCPIP_Stack/WiFi/WFDebugStrings.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverCom.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c  .generated_files/flags/F210V02/c5e6e0e74ee23af2b8ab839e7cf318292a048cf7 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverCom.o ../Microchip/TCPIP_Stack/WiFi/WFDriverCom.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o: ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c  .generated_files/flags/F210V02/44628bbed4b0df81858669268491221d08a9ba0d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFDriverRaw.o ../Microchip/TCPIP_Stack/WiFi/WFDriverRaw.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o: ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c  .generated_files/flags/F210V02/10b40609be7580e10a850b63d3dd789b44b55e85 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEasyConfig.o ../Microchip/TCPIP_Stack/WiFi/WFEasyConfig.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFEventHandler.o: ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c  .generated_files/flags/F210V02/b4943ec7889dd9454de4647c5512766a23d0b5cd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFEventHandler.o ../Microchip/TCPIP_Stack/WiFi/WFEventHandler.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFInit.o: ../Microchip/TCPIP_Stack/WiFi/WFInit.c  .generated_files/flags/F210V02/cb6eff03d8577293ad37f331f9e51ef7ece9f2ed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFInit.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFInit.o ../Microchip/TCPIP_Stack/WiFi/WFInit.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac.o: ../Microchip/TCPIP_Stack/WiFi/WFMac.c  .generated_files/flags/F210V02/571d9a57b2282a737f49358d6ce7c7892211c718 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac.o ../Microchip/TCPIP_Stack/WiFi/WFMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMac_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c  .generated_files/flags/F210V02/a59015f9a349bc3e4e2601203d43a1c7827e4767 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMac_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMac_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c  .generated_files/flags/F210V02/e3bfea4089e05c4e55ceeb3b2f3a1f09785522ea .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/F210V02/1e161cebb423f6cb7218724b9c855e659ce879c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFMgmtMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFMgmtMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c  .generated_files/flags/F210V02/6f7caaee2f7007656b223ec59ce14772d2607fb8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o: ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/F210V02/4a685fc56e15ac81b363b22140b7ac07890e6fed .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFParamMsg_24G.o ../Microchip/TCPIP_Stack/WiFi/WFParamMsg_24G.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFPowerSave.o: ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c  .generated_files/flags/F210V02/3141f98a28541944caa957ba7224557ee59e39a5 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFPowerSave.o ../Microchip/TCPIP_Stack/WiFi/WFPowerSave.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFScan.o: ../Microchip/TCPIP_Stack/WiFi/WFScan.c  .generated_files/flags/F210V02/2ab8eab7adfdfe68c302d89b501b10f632a83405 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFScan.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFScan.o ../Microchip/TCPIP_Stack/WiFi/WFScan.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WFTxPower.o: ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c  .generated_files/flags/F210V02/80cdec3948db4e613bc543957b6adc1d870ec148 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1437884543/WFTxPower.o ../Microchip/TCPIP_Stack/WiFi/WFTxPower.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Eint.o: ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c  .generated_files/flags/F210V02/8c878b12d79dd17cce90cf8bf0f1c5790be2a348 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Eint.o ../Microchip/TCPIP_Stack/WiFi/WF_Eint.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_Spi.o: ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c  .generated_files/flags/F210V02/f100ac518057974e7ff79241072825818adb815 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_Spi.o ../Microchip/TCPIP_Stack/WiFi/WF_Spi.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o: ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/F210V02/e615c906f279c5a37f93ec4a87cfe4ce47e33640 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1437884543" 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1437884543/WF_pbkdf2.o ../Microchip/TCPIP_Stack/WiFi/WF_pbkdf2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARCFOUR.o: ../Microchip/TCPIP_Stack/ARCFOUR.c  .generated_files/flags/F210V02/dec7b5fbc09957c04dc438c28046026996014760 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/935941731/ARCFOUR.o ../Microchip/TCPIP_Stack/ARCFOUR.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ARP.o: ../Microchip/TCPIP_Stack/ARP.c  .generated_files/flags/F210V02/85d9d0f9ce635b2e9b61a96b557196948978a424 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ARP.o.d" -o ${OBJECTDIR}/_ext/935941731/ARP.o ../Microchip/TCPIP_Stack/ARP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Announce.o: ../Microchip/TCPIP_Stack/Announce.c  .generated_files/flags/F210V02/33174df553e1d27501b6a1a7bdb7702c0df1c8fb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Announce.o.d" -o ${OBJECTDIR}/_ext/935941731/Announce.o ../Microchip/TCPIP_Stack/Announce.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/AutoIP.o: ../Microchip/TCPIP_Stack/AutoIP.c  .generated_files/flags/F210V02/c31f0e2d7035182e8ed7f97040cedb6615a52b48 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/AutoIP.o.d" -o ${OBJECTDIR}/_ext/935941731/AutoIP.o ../Microchip/TCPIP_Stack/AutoIP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o: ../Microchip/TCPIP_Stack/BerkeleyAPI.c  .generated_files/flags/F210V02/e1192fee026c019b77b517cde57db61700ede234 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/935941731/BerkeleyAPI.o ../Microchip/TCPIP_Stack/BerkeleyAPI.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/BigInt.o: ../Microchip/TCPIP_Stack/BigInt.c  .generated_files/flags/F210V02/606015944cb4859adc1fe536501cd306e19f8055 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/BigInt.o.d" -o ${OBJECTDIR}/_ext/935941731/BigInt.o ../Microchip/TCPIP_Stack/BigInt.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCP.o: ../Microchip/TCPIP_Stack/DHCP.c  .generated_files/flags/F210V02/691853ae29f6ca2354bd7d59bc2e44abc8ffc231 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCP.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCP.o ../Microchip/TCPIP_Stack/DHCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DHCPs.o: ../Microchip/TCPIP_Stack/DHCPs.c  .generated_files/flags/F210V02/b73a0cad9ccb61b591e82919f4f7792b1a68c168 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DHCPs.o.d" -o ${OBJECTDIR}/_ext/935941731/DHCPs.o ../Microchip/TCPIP_Stack/DHCPs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNS.o: ../Microchip/TCPIP_Stack/DNS.c  .generated_files/flags/F210V02/e39f5bbac608c65b73f722c46454e7779515c146 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DNS.o ../Microchip/TCPIP_Stack/DNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DNSs.o: ../Microchip/TCPIP_Stack/DNSs.c  .generated_files/flags/F210V02/ee516fa6de931179b1b8e70c3fd6146b8c778061 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DNSs.o.d" -o ${OBJECTDIR}/_ext/935941731/DNSs.o ../Microchip/TCPIP_Stack/DNSs.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Delay.o: ../Microchip/TCPIP_Stack/Delay.c  .generated_files/flags/F210V02/139fcf045d92667f982bf7720b9633f09935377 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Delay.o.d" -o ${OBJECTDIR}/_ext/935941731/Delay.o ../Microchip/TCPIP_Stack/Delay.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/DynDNS.o: ../Microchip/TCPIP_Stack/DynDNS.c  .generated_files/flags/F210V02/efdb36416f9e2fd2cabc13e29862b25387ca1c18 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/DynDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/DynDNS.o ../Microchip/TCPIP_Stack/DynDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENC28J60.o: ../Microchip/TCPIP_Stack/ENC28J60.c  .generated_files/flags/F210V02/13b598b9425283747f4f05dddf86390143274276 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ENC28J60.o ../Microchip/TCPIP_Stack/ENC28J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ENCX24J600.o: ../Microchip/TCPIP_Stack/ENCX24J600.c  .generated_files/flags/F210V02/1b3f60b40966b030f2635e0712f48ec4db080902 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/935941731/ENCX24J600.o ../Microchip/TCPIP_Stack/ENCX24J600.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETH97J60.o: ../Microchip/TCPIP_Stack/ETH97J60.c  .generated_files/flags/F210V02/c310f3050bc775fcfaff41c5fff69a483e0818f8 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETH97J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/935941731/ETH97J60.o ../Microchip/TCPIP_Stack/ETH97J60.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c  .generated_files/flags/F210V02/9f6aea77f75543e53245ff0fc2f14054d0579793 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhy.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhy.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c  .generated_files/flags/F210V02/54ab90c90b7082da090b48c920da075fd44c05ab .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32ExtPhyDP83848.o ../Microchip/TCPIP_Stack/ETHPIC32ExtPhyDP83848.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o: ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c  .generated_files/flags/F210V02/ba0652d33c09c6f6e203eb1ed783b03ab3ad2060 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/935941731/ETHPIC32IntMac.o ../Microchip/TCPIP_Stack/ETHPIC32IntMac.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FTP.o: ../Microchip/TCPIP_Stack/FTP.c  .generated_files/flags/F210V02/2b62fcc2e95a9dc296f7467b68a316e7cacd798b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FTP.o.d" -o ${OBJECTDIR}/_ext/935941731/FTP.o ../Microchip/TCPIP_Stack/FTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/FileSystem.o: ../Microchip/TCPIP_Stack/FileSystem.c  .generated_files/flags/F210V02/937dc7cb38e6e8f48ca8e51035d7aecf220fe6b1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/FileSystem.o.d" -o ${OBJECTDIR}/_ext/935941731/FileSystem.o ../Microchip/TCPIP_Stack/FileSystem.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/HTTP2.o: ../Microchip/TCPIP_Stack/HTTP2.c  .generated_files/flags/F210V02/855eea891f4b902195a93dd708ccd46e838e5a1e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/HTTP2.o.d" -o ${OBJECTDIR}/_ext/935941731/HTTP2.o ../Microchip/TCPIP_Stack/HTTP2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Hashes.o: ../Microchip/TCPIP_Stack/Hashes.c  .generated_files/flags/F210V02/97fab6b71d0f85edc6b121389d3644ee2ee0020e .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Hashes.o.d" -o ${OBJECTDIR}/_ext/935941731/Hashes.o ../Microchip/TCPIP_Stack/Hashes.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Helpers.o: ../Microchip/TCPIP_Stack/Helpers.c  .generated_files/flags/F210V02/c3d594a46ae9eb3980107b7813cd05a177661a57 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Helpers.o.d" -o ${OBJECTDIR}/_ext/935941731/Helpers.o ../Microchip/TCPIP_Stack/Helpers.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ICMP.o: ../Microchip/TCPIP_Stack/ICMP.c  .generated_files/flags/F210V02/7021321e79e49c340f9524d4c832afe3e8073f63 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ICMP.o.d" -o ${OBJECTDIR}/_ext/935941731/ICMP.o ../Microchip/TCPIP_Stack/ICMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/IP.o: ../Microchip/TCPIP_Stack/IP.c  .generated_files/flags/F210V02/d5b4ca1002dfcc589972b379f32099f60f78dafe .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/IP.o.d" -o ${OBJECTDIR}/_ext/935941731/IP.o ../Microchip/TCPIP_Stack/IP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/LCDBlocking.o: ../Microchip/TCPIP_Stack/LCDBlocking.c  .generated_files/flags/F210V02/c1a2946bad6107837b57b9444781b29af490ee1c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/935941731/LCDBlocking.o ../Microchip/TCPIP_Stack/LCDBlocking.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/MPFS2.o: ../Microchip/TCPIP_Stack/MPFS2.c  .generated_files/flags/F210V02/fd890a854102ea430ed6cae386ae401dcad38442 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/MPFS2.o.d" -o ${OBJECTDIR}/_ext/935941731/MPFS2.o ../Microchip/TCPIP_Stack/MPFS2.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/NBNS.o: ../Microchip/TCPIP_Stack/NBNS.c  .generated_files/flags/F210V02/a3f4efe19753fe9ee2b8984058eb192e52e29c0c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/NBNS.o.d" -o ${OBJECTDIR}/_ext/935941731/NBNS.o ../Microchip/TCPIP_Stack/NBNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/RSA.o: ../Microchip/TCPIP_Stack/RSA.c  .generated_files/flags/F210V02/151792772e813464a88c782e39729ace944d8a1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/RSA.o.d" -o ${OBJECTDIR}/_ext/935941731/RSA.o ../Microchip/TCPIP_Stack/RSA.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Random.o: ../Microchip/TCPIP_Stack/Random.c  .generated_files/flags/F210V02/31e1733b76c57ae3b30afa5d5b6e1cb53ddd5ec3 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Random.o.d" -o ${OBJECTDIR}/_ext/935941731/Random.o ../Microchip/TCPIP_Stack/Random.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Reboot.o: ../Microchip/TCPIP_Stack/Reboot.c  .generated_files/flags/F210V02/444bf6fed808e2a94119334da7a4af12fc3af421 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Reboot.o.d" -o ${OBJECTDIR}/_ext/935941731/Reboot.o ../Microchip/TCPIP_Stack/Reboot.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SMTP.o: ../Microchip/TCPIP_Stack/SMTP.c  .generated_files/flags/F210V02/fbcc005cfdf2dca6744371c7ba7bdf3a3c51125c .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SMTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SMTP.o ../Microchip/TCPIP_Stack/SMTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMP.o: ../Microchip/TCPIP_Stack/SNMP.c  .generated_files/flags/F210V02/e92f209c7d11c8cef37f53868b0501e2e253ec04 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMP.o ../Microchip/TCPIP_Stack/SNMP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3.o: ../Microchip/TCPIP_Stack/SNMPv3.c  .generated_files/flags/F210V02/460bf87fd28787544a8800f776449f359bc5105f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3.o ../Microchip/TCPIP_Stack/SNMPv3.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNMPv3USM.o: ../Microchip/TCPIP_Stack/SNMPv3USM.c  .generated_files/flags/F210V02/2becc3e42d8462afee4b0f58083251889ea8598f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/935941731/SNMPv3USM.o ../Microchip/TCPIP_Stack/SNMPv3USM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SNTP.o: ../Microchip/TCPIP_Stack/SNTP.c  .generated_files/flags/F210V02/8c7c71ba56452fd1b150cac0c69e227d3ffe5e31 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SNTP.o.d" -o ${OBJECTDIR}/_ext/935941731/SNTP.o ../Microchip/TCPIP_Stack/SNTP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIEEPROM.o: ../Microchip/TCPIP_Stack/SPIEEPROM.c  .generated_files/flags/F210V02/9b64ab78a444f007c3e01525e138135fbc405b67 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIEEPROM.o ../Microchip/TCPIP_Stack/SPIEEPROM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIFlash.o: ../Microchip/TCPIP_Stack/SPIFlash.c  .generated_files/flags/F210V02/6cfa52fb58546182a6987af968068c53e2e75d3d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIFlash.o ../Microchip/TCPIP_Stack/SPIFlash.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SPIRAM.o: ../Microchip/TCPIP_Stack/SPIRAM.c  .generated_files/flags/F210V02/ee79f36d2066c3699b26692e477d93c94e68ab78 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/935941731/SPIRAM.o ../Microchip/TCPIP_Stack/SPIRAM.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/SSL.o: ../Microchip/TCPIP_Stack/SSL.c  .generated_files/flags/F210V02/850a6edf670e3010df08e9d126eaadd68c9e8308 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/SSL.o.d" -o ${OBJECTDIR}/_ext/935941731/SSL.o ../Microchip/TCPIP_Stack/SSL.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/StackTsk.o: ../Microchip/TCPIP_Stack/StackTsk.c  .generated_files/flags/F210V02/f828a5aeee4a26db317fe5a18a1c27ea69160fe4 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/StackTsk.o.d" -o ${OBJECTDIR}/_ext/935941731/StackTsk.o ../Microchip/TCPIP_Stack/StackTsk.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCP.o: ../Microchip/TCPIP_Stack/TCP.c  .generated_files/flags/F210V02/854801d9094e345deef2016da90dc4a2ce14c840 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCP.o.d" -o ${OBJECTDIR}/_ext/935941731/TCP.o ../Microchip/TCPIP_Stack/TCP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o: ../Microchip/TCPIP_Stack/TCPPerformanceTest.c  .generated_files/flags/F210V02/b6f81178909ba5036ca9740583192cc38bcf222b .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/TCPPerformanceTest.o ../Microchip/TCPIP_Stack/TCPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/TFTPc.o: ../Microchip/TCPIP_Stack/TFTPc.c  .generated_files/flags/F210V02/cf614746accddd339cfd255ea0089e848e0aadf6 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/TFTPc.o.d" -o ${OBJECTDIR}/_ext/935941731/TFTPc.o ../Microchip/TCPIP_Stack/TFTPc.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Telnet.o: ../Microchip/TCPIP_Stack/Telnet.c  .generated_files/flags/F210V02/e3958ef0c8de2e88c423f78f4d7502dee28e3e36 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Telnet.o.d" -o ${OBJECTDIR}/_ext/935941731/Telnet.o ../Microchip/TCPIP_Stack/Telnet.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART.o: ../Microchip/TCPIP_Stack/UART.c  .generated_files/flags/F210V02/336f48e8efd3e170edcb4d223de7d4abe7e5a920 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART.o.d" -o ${OBJECTDIR}/_ext/935941731/UART.o ../Microchip/TCPIP_Stack/UART.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o: ../Microchip/TCPIP_Stack/UART2TCPBridge.c  .generated_files/flags/F210V02/d1eed437c849e558820810b02e756924beb668a1 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/935941731/UART2TCPBridge.o ../Microchip/TCPIP_Stack/UART2TCPBridge.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDP.o: ../Microchip/TCPIP_Stack/UDP.c  .generated_files/flags/F210V02/6bb4fbdf5112516fa70e0aa5ab62db536f67a7c2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDP.o.d" -o ${OBJECTDIR}/_ext/935941731/UDP.o ../Microchip/TCPIP_Stack/UDP.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o: ../Microchip/TCPIP_Stack/UDPPerformanceTest.c  .generated_files/flags/F210V02/72e288d5fa9dc176c797b87f6f99dec49f1dc6cd .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/935941731/UDPPerformanceTest.o ../Microchip/TCPIP_Stack/UDPPerformanceTest.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o: ../Microchip/TCPIP_Stack/ZeroconfHelper.c  .generated_files/flags/F210V02/832aa5179ccb28dbdccfe42f08b359997b79110f .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfHelper.o ../Microchip/TCPIP_Stack/ZeroconfHelper.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o: ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c  .generated_files/flags/F210V02/9ba52e527f2af5bdfbf0ae87c5970a817070b002 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfLinkLocal.o ../Microchip/TCPIP_Stack/ZeroconfLinkLocal.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o: ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c  .generated_files/flags/F210V02/131845fed804d1d7795d33544198be8d5ae445eb .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/935941731/ZeroconfMulticastDNS.o ../Microchip/TCPIP_Stack/ZeroconfMulticastDNS.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/display_ip.o: ../Microchip/TCPIP_Stack/display_ip.c  .generated_files/flags/F210V02/c3b6784d8b9c456f8176a1fc3522143ac99d33d2 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/display_ip.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/display_ip.o.d" -o ${OBJECTDIR}/_ext/935941731/display_ip.o ../Microchip/TCPIP_Stack/display_ip.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/935941731/Tick.o: ../Microchip/TCPIP_Stack/Tick.c  .generated_files/flags/F210V02/751625091b1cb5c3d3a40541a3618be68bad369d .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935941731" 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/935941731/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/935941731/Tick.o.d" -o ${OBJECTDIR}/_ext/935941731/Tick.o ../Microchip/TCPIP_Stack/Tick.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/567204950/app_fault.o: ../app/main/app_fault.c  .generated_files/flags/F210V02/f194baebaa0f8dbc900e1a85ac48440501b41334 .generated_files/flags/F210V02/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/567204950" 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_fault.o.d 
	@${RM} ${OBJECTDIR}/_ext/567204950/app_fault.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../Microchip" -I"../Microchip/TCPIP_Stack" -I"../Microchip/Include" -I"../Microchip/Include/TCPIP_Stack" -I"../framework" -I"../app/main" -I"../app/ethernet" -I"../app/system" -I"../app/web_pages2" -I"../app/cmnd" -I"../app/ect" -MP -MMD -MF "${OBJECTDIR}/_ext/567204950/app_fault.o.d" -o ${OBJECTDIR}/_ext/567204950/app_fault.o ../app/main/app_fault.c    -DXPRJ_F210V02=$(CND_CONF)    $(COMPARISON_BUILD)    
	
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
