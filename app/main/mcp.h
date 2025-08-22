/*  ELAK d.o.o.
 *  By: Marwan
 *  mcp.h
 */

#ifndef __MCP_H__
#define	__MCP_H__

/*-----------------------------------------------------------------------------*/
void mcp_impl_init(void); //impulse init

void mcp_impl1_set(UINT status); //impulse 1
void mcp_impl2_set(UINT status); //impulse 2

void mcp_set_polarity_neg1(void); //negative polarity impulse 1
void mcp_set_polarity_pos1(void); //positive polarity impulse 1
void mcp_set_polarity_brk1(void); //brake impulse 1
void mcp_set_polarity_lop1(void); //low power coast impulse 1
void mcp_set_polarity_neg2(void); //negative polarity impulse 2
void mcp_set_polarity_pos2(void); //positive polarity impulse 2
void mcp_set_polarity_brk2(void); //brake impulse 2
void mcp_set_polarity_lop2(void); //low power coast impulse 2

void mcp_flt_init(void);
UINT mcp_flt_read(void);


#endif	/* __MCP_H__ */
