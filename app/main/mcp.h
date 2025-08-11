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
void mcp_set_polarity_neg2(void); //negative polarity impulse 2
void mcp_set_polarity_pos2(void); //positive polarity impulse 2
#endif	/* __MCP_H__ */
