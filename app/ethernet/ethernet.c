/*********************************************************************
 * 
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *   -Reference: Microchip TCP/IP Stack Help (TCPIP_Stack Help.chm)
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.11b or higher
 *                  Microchip C30 v3.24 or higher
 *                  Microchip C18 v3.36 or higher
 * Company:         Microchip Technology, Inc.
 *
 * File Description:
 * Change History:
 * Rev   Description
 * ----  -----------------------------------------
 * 1.0   Initial release
 * V5.36 ---- STACK_USE_MPFS support has been removed
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#include "app.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "TCPIP_Stack/ZeroconfLinkLocal.h"
#endif

#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "TCPIP_Stack/ZeroconfMulticastDNS.h"
#endif

// Used for Wi-Fi assertions
#define WF_MODULE_NUMBER   WF_MODULE_MAIN_DEMO


#if defined(WF_CS_TRIS)
void WF_Connect(void);
#if !defined(MRF24WG)
extern BOOL gRFModuleVer1209orLater;
#endif

#if defined(DERIVE_KEY_FROM_PASSPHRASE_IN_HOST)
tPassphraseReady g_WpsPassphrase;
#endif    /* defined(DERIVE_KEY_FROM_PASSPHRASE_IN_HOST) */
#endif


#if defined(WF_CS_TRIS)
// Global variables
UINT8 ConnectionProfileID;
#endif

static DWORD dwLastIP = 0;

PT_THREAD(ethernet_task(pt_t *pt)) {
    PT_BEGIN(pt);

    // Initialize application specific hardware
    DHCP_Restart();
    DiscoveryTask_Restart();
    ETH_PWR_SET;

#if defined(STACK_USE_MPFS2)
    MPFSInit();
#endif

    StackInit();

    for (;;) {

        PT_YIELD(pt);

        StackTask();

        StackApplications();

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
        ZeroconfLLProcess();
#endif

#if defined(STACK_USE_ZEROCONF_MDNS_SD)
        mDNSProcess();
        // Use this function to exercise service update function
        // HTTPUpdateRecord();
#endif
        
#if defined(STACK_USE_TFTP_CLIENT) && defined(WF_CS_TRIS)
        TFTPGetUploadStatus();
#endif
#if defined(STACK_USE_BERKELEY_API)
            NTPUDPClient();
#endif
        if (dwLastIP != AppConfig.MyIPAddr.Val) {
            dwLastIP = AppConfig.MyIPAddr.Val;

#if defined(STACK_USE_ANNOUNCE)
            AnnounceIP();
#endif

        }

    }

    PT_END(pt);
}




