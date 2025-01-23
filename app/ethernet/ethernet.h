/*  By: Marwan Khoury
 *  ethernet.h
 */

#ifndef __ETHERNET_H
#define	__ETHERNET_H

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
void SaveAppConfig(const APP_CONFIG *AppConfig);
#else
//#define SaveAppConfig(a)
#endif

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
PT_THREAD(ethernet_task(pt_t *pt));

/*-----------------------------------------------------------------------------*/
void cgi_cmd(BYTE* prt);
void cgi_upr(BYTE *prt);
void cgi_ien(BYTE *prt);
void cgi_imp(BYTE *prt);
void cgi_date(BYTE *prt);
void cgi_prgm_p(BYTE *prt);
void cgi_prgm_r(BYTE *prt);

#endif	/* __ETHERNET_H */



