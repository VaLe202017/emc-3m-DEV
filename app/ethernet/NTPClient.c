/*  ELAK d.o.o.
 *  By: Marwan
 *  NTPUDPCLIENT.c
 * 
 * Description:
 * 
 * Realno nije Marwan, nego spranca s GitHuba za NTPServer, samo je modificirana
 * za ELAK.
 * 
 * Koristi se za parsiranje vremena sa NTP Servera.
 * 
 * 24.9.2018. - Borna
 * Napravljena sinkronizacija preko NTP servera svaka 24 sata.
 * 
 * 28.5.2023. - Tin
 * Popravljena sinkronizacija s lokalnim serverom kada nema pristupa internetu, 
 * popravljen bug da se sat zabije kada je postavljen da sinkronizira s lokalnim serverom a server ne odgovara
 */
#define __SNTP_C

#include "app.h"
#include "TCPIPConfig.h"

#if defined(STACK_USE_BERKELEY_API)

#include "TCPIP_Stack/TCPIP.h"

#define NTP_QUERY_INTERVAL		(1200ull * TICK_SECOND)
#define NTP_FAST_QUERY_INTERVAL	(20ull * TICK_SECOND)
#define NTP_REPLY_TIMEOUT		(6ull * TICK_SECOND)

#ifdef WIFI_NET_TEST
#define NTP_SERVER	"ntp" WIFI_NET_TEST_DOMAIN
#else
//#define NTP_SERVER	"pool.ntp.org"
#define NTP_SERVER      "europe.pool.ntp.org"
//#define NTP_SERVER	"asia.pool.ntp.org"
//#define NTP_SERVER	"oceania.pool.ntp.org"
//#define NTP_SERVER	"north-america.pool.ntp.org"
//#define NTP_SERVER	"south-america.pool.ntp.org"
//#define NTP_SERVER	"africa.pool.ntp.org"
#endif

// Defines the structure of an NTP packet

typedef struct {

    struct {
        BYTE mode : 3; // NTP mode
        BYTE versionNumber : 3; // SNTP version number
        BYTE leapIndicator : 2; // Leap second indicator
    } flags; // Flags for the packet

    BYTE stratum; // Stratum level of local clock
    CHAR poll; // Poll interval
    CHAR precision; // Precision (seconds to nearest power of 2)
    DWORD root_delay; // Root delay between local machine and server
    DWORD root_dispersion; // Root dispersion (maximum error)
    DWORD ref_identifier; // Reference clock identifier
    DWORD ref_ts_secs; // Reference timestamp (in seconds)
    DWORD ref_ts_fraq; // Reference timestamp (fractions)
    DWORD orig_ts_secs; // Origination timestamp (in seconds)
    DWORD orig_ts_fraq; // Origination timestamp (fractions)
    DWORD recv_ts_secs; // Time at which request arrived at sender (seconds)
    DWORD recv_ts_fraq; // Time at which request arrived at sender (fractions)
    DWORD tx_ts_secs; // Time at which request left sender (seconds)
    DWORD tx_ts_fraq; // Time at which request left sender (fractions)
} NTP_PACKET;

static DWORD dwSNTPSeconds = 0; // Seconds value obtained by last update
static DWORD dwOURSeconds = 0;
static UINT32 MyNTPCheck;

static uint8_t provjeraSata;                                                    // Added by Borna, 24.9.2018.

static DWORD dwLastUpdateTick = 0; // Tick count of last update

static enum sntpState{              // bio static, promijenjen u typedef                By Borna, 19.9.2018.
    SM_NTP_HOME = 0,
    SM_NTP_NAME_RESOLVE,
    SM_NTP_CREATE_SOCKET,
    SM_ARP_START_RESOLVE, //dodana ARP provjera servera prije poku?aja upita prema serveru
    SM_ARP_RESOLVE,
    SM_ARP_START_RESOLVE2,
    SM_ARP_RESOLVE2,
    SM_ARP_START_RESOLVE3,
    SM_ARP_RESOLVE3,
    SM_ARP_RESOLVE_FAIL,
    //SM_BIND,	// Not required since we are sending the first packet
    SM_NTP_UDP_SEND,
    SM_NTP_UDP_RECV,
    SM_NTP_SHORT_WAIT,
    SM_NTP_WAIT
} SNTPState;            

/*----------------------------------------------------------------------------*/
void NTPUDPClient_Restart(void) {
    SNTPState = SM_NTP_SHORT_WAIT;             // i ovdje Nburek.state umjesto SNTP state
}                                                   // nakon preinake iz 'static enum' u 'typedef enum'

/*----------------------------------------------------------------------------*/
static UINT32 ntp_read_u32(UINT32 val) {
    UINT8 tmp;
    UINT8 *d;

    d = (UINT8*) & val;
    tmp = d[0];
    d[0] = d[3];
    d[3] = tmp;
    tmp = d[1];
    d[1] = d[2];
    d[2] = tmp;
    return val;
}

static tm_t ntptime;
static datumvrijeme_t ntpdvtime;

/*----------------------------------------------------------------------------*/
void NTPUDPClient(void) {
#if defined(STACK_USE_DNS)

    static NTP_PACKET pkt;
    static int i;
    static DWORD dwServerIP;
    static NODE_INFO	Server; //za spremanje IP adrese servera kao u microchipovom original SNTP klijentu
    static DWORD dwTimer;
    static SOCKET bsdUdpClient;
    static int addrlen = sizeof (struct sockaddr_in);
    static struct sockaddr_in udpaddr;


    switch (SNTPState) {                                             // SVI SNTPState enum casevi upisani kao NTPStateSwitch.state
        case SM_NTP_HOME:
//            if (!DNSBeginUsage())
//                break;
            if (AppConfig.ntpPOOLIsEnabled == 1){  //provjera da li sinkroniziramo preko poola ili preko lokalnog servera
                if (!DNSBeginUsage())
                break;
                DNSResolveROM((ROM BYTE*) NTP_SERVER, DNS_TYPE_A);
                dwTimer = TickGet();
                SNTPState = SM_NTP_NAME_RESOLVE;
            }
            else{
                Server.IPAddr = AppConfig.ntpIPAddr;
                dwTimer = TickGet();
                SNTPState = SM_ARP_START_RESOLVE;
            }
            break;

        case SM_NTP_NAME_RESOLVE:
            if (!DNSIsResolved(&Server.IPAddr)) {  
                if ((TickGet() - dwTimer) > (5 * TICK_SECOND)) {
                    DNSEndUsage();
                    dwTimer = TickGetDiv64K();
                    SNTPState = SM_NTP_SHORT_WAIT;
                }
                break;
            }
            if (!DNSEndUsage()) {
                dwTimer = TickGetDiv64K();
                SNTPState = SM_NTP_SHORT_WAIT;
                break;
            }

            SNTPState = SM_ARP_START_RESOLVE; // provjera da li je server "ziv"
            
        case SM_ARP_START_RESOLVE:
		case SM_ARP_START_RESOLVE2:
		case SM_ARP_START_RESOLVE3:
			// Obtain the MAC address associated with the server's IP address 
            
			ARPResolve(&Server.IPAddr);
			dwTimer = TickGet();
			SNTPState++;
			break;

		case SM_ARP_RESOLVE:
		case SM_ARP_RESOLVE2:
		case SM_ARP_RESOLVE3:
			// Wait for the MAC address to finish being obtained
			if(!ARPIsResolved(&Server.IPAddr, &Server.MACAddr))
			{
				// Time out if too much time is spent in this state
				if(TickGet() - dwTimer > 1*TICK_SECOND)
				{
					// Retransmit ARP request by going to next SM_ARP_START_RESOLVE state or fail by going to SM_ARP_RESOLVE_FAIL state.
					SNTPState++;
				}
				break;
			}
			SNTPState = SM_NTP_CREATE_SOCKET;
			break;

		case SM_ARP_RESOLVE_FAIL:
			// ARP failed after 3 tries, abort and wait for next time query
			dwTimer = TickGetDiv64K();
			SNTPState = SM_NTP_SHORT_WAIT;
			break;

        case SM_NTP_CREATE_SOCKET:
            bsdUdpClient = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
            if (bsdUdpClient == INVALID_SOCKET)
                return;
            SNTPState = SM_NTP_UDP_SEND;

        case SM_NTP_UDP_SEND:
            // Transmit a time request packet
            memset(&pkt, 0, sizeof (pkt));
            pkt.flags.versionNumber = 3; // NTP Version 3
            pkt.poll = 4;
            pkt.precision = -6;
            pkt.flags.mode = 3; // NTP Client

            memset(&ntptime, 0, sizeof (ntptime));
            memset(&ntpdvtime, 0, sizeof (ntpdvtime));
            ds3231_time_get(&ntpdvtime);
            sat_conv_to_TmTime(&ntpdvtime, &ntptime);
            dwOURSeconds = sat_conv_MkTime(&ntptime);

            MyNTPCheck = pkt.orig_ts_secs = ntp_read_u32(dwOURSeconds); //swapl(dwOURSeconds);
            pkt.tx_ts_secs = ntp_read_u32(dwOURSeconds); //swapl(dwOURSeconds);
            udpaddr.sin_port = AppConfig.ntpPort;
//            if (AppConfig.ntpPOOLIsEnabled == 1) {
//                udpaddr.sin_addr.S_un.S_addr = dwServerIP;
//            } else {
//                udpaddr.sin_addr.S_un.S_addr = AppConfig.ntpIPAddr.Val;
//            }
            udpaddr.sin_addr.S_un.S_addr = Server.IPAddr.Val;

            if (sendto(bsdUdpClient, (const char*) &pkt, sizeof (pkt), 0, (struct sockaddr*) &udpaddr, addrlen) > 0) {
                dwTimer = TickGet();
                SNTPState = SM_NTP_UDP_RECV;
            }
            break;

        case SM_NTP_UDP_RECV:
            i = recvfrom(bsdUdpClient, (char*) &pkt, sizeof (pkt), 0, (struct sockaddr*) &udpaddr, &addrlen);
            if (i < (int) sizeof (pkt)) {
                if ((TickGet()) - dwTimer > NTP_REPLY_TIMEOUT) {
                    closesocket(bsdUdpClient);
                    dwTimer = TickGetDiv64K();
                    SNTPState = SM_NTP_SHORT_WAIT;
                    break;
                }
                break;
            }
            closesocket(bsdUdpClient);
            dwTimer = TickGetDiv64K();
            provjeraSata = vrijeme.dan;                                         // Added by Borna, 24.9.2018.
            SNTPState = SM_NTP_WAIT;
            dwLastUpdateTick = TickGet();
            dwSNTPSeconds = swapl(pkt.tx_ts_secs);
            if (((BYTE*) & pkt.tx_ts_fraq)[0] & 0x80) {
                dwSNTPSeconds++;
            }

            INT_LOCK;
            if (MyNTPCheck == pkt.orig_ts_secs) {
                sat_conv_TmTime(dwSNTPSeconds, 0, &ntptime);
                ds3231_time_setNTP(&ntptime);
                sys_int4_force(); //Sig++;// To update time on clock.
            }
            INT_UNLOCK;
#ifdef WIFI_NET_TEST
            wifi_net_test_print("SNTP: current time", dwSNTPSeconds);
#endif
            break;

        case SM_NTP_SHORT_WAIT:
            if (AppConfig.ntpIsEnabled == 1) {
                if (TickGetDiv64K() - dwTimer > (NTP_FAST_QUERY_INTERVAL / 65536ull))
                    SNTPState = SM_NTP_HOME;
            }
            break;

        case SM_NTP_WAIT:
            if (AppConfig.ntpIsEnabled == 1) {
                if (TickGetDiv64K() - dwTimer > (NTP_QUERY_INTERVAL / 125ull)) {
                    SNTPState = SM_NTP_HOME;
                    break;
                } 
                if (provjeraSata != vrijeme.dan) {                              // Added by Borna, 24.9.2018.
                    SNTPState = SM_NTP_HOME;
                    provjeraSata = vrijeme.dan;
                }
            }
            break;
    }

    //#if defined(STACK_USE_DNS)
#else
#warning You must define STACK_USE_DNS for BerkeleyUDPClientDemo to work
#endif
}
/*----------------------------------------------------------------------------*/
DWORD BerkeleySNTPGetUTCSeconds(void) {
    DWORD dwTickDelta;
    DWORD dwTick;
    dwTick = TickGet();
    dwTickDelta = dwTick - dwLastUpdateTick;
    while (dwTickDelta > TICK_SECOND) {
        dwSNTPSeconds++;
        dwTickDelta -= TICK_SECOND;
    }
    dwLastUpdateTick = dwTick - dwTickDelta;
    return dwSNTPSeconds;
}

#endif  //if defined(STACK_USE_BERKELEY_API)