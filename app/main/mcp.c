/*  (By) Marwan Khoury
 *  mcp2008.c
 */

#include "app.h"

/**  RTC register index addresses */
#define MCP_IODIR       0x00U
#define MCP_IPOL        0x01U
#define MCP_GPINTEN     0x02U
#define MCP_DEFVAL      0x03U
#define MCP_INTCON      0x04U
#define MCP_IOCON       0x05U
#define MCP_GPPU        0x06U
#define MCP_INTF        0x07U
#define MCP_INTCAP      0x08U
#define MCP_GPIO        0x09U
#define MCP_OLAT        0x0AU


#define MCP_ADDRESS       0x40U //adress 000

#define MCP_BUFSIZE        11U

static UINT8 MCPReg[MCP_BUFSIZE];


/*----------------------------------------------------------------------------*/
void mcp_impl_init(void) {
    rly_mirror = 0x00U;
    MCPReg[MCP_IODIR] = B8(00000000); // 0 as output 1 as input
    MCPReg[MCP_IPOL] = B8(00000000); // reflect the same logic state
    MCPReg[MCP_GPINTEN ] = B8(00000000); // disable int on change
    MCPReg[MCP_DEFVAL] = B8(00000000); //
    MCPReg[MCP_INTCON] = B8(00000000); // comp agaist prev val.
    MCPReg[MCP_IOCON] = B8(00000000); //
    MCPReg[MCP_GPPU] =  B8(00000000);
    MCPReg[MCP_INTF] = B8(00000000);
    MCPReg[MCP_INTCAP] = B8(00000000);
    MCPReg[MCP_GPIO] = B8(00000000);
    MCPReg[MCP_OLAT] = B8(00000000);
    sys_iic3_write(MCP_ADDRESS, MCP_IODIR, MCPReg, 11);
}

/*----------------------------------------------------------------------------*/
void mcp_impl1_set(UINT status0, UINT status1) {
    if (status1) {
        //bit_0 je in1-1 bit_1 je in2-1
        rly_mirror |= (1U<<1);
    } else {
        rly_mirror &= ~(1U<<1);
        
    }
    if (status0) {
        //bit_0 je in1-1 bit_1 je in2-1
        rly_mirror |= (1U<<0);
    } else {
        rly_mirror &= ~(1U<<0);
        
    }
    MCPReg[MCP_GPIO] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, &MCPReg[MCP_GPIO], 1);
}
/*----------------------------------------------------------------------------*/
void mcp_impl2_set(UINT status4, UINT status5) {
    if (status4 == 1) {
        //bit_4 je in1-2 bit_5 je in2-2
        rly_mirror |= (1U<<4);
    } else {
        rly_mirror &= ~(1U<<4);
    }
    if (status5 == 1) {
        //bit_4 je in1-2 bit_5 je in2-2
        rly_mirror |= (1U<<5);
    } else {
        rly_mirror &= ~(1U<<5);
    }
    MCPReg[MCP_GPIO] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, &MCPReg[MCP_GPIO], 1);
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_neg1(void) {
    INT_LOCK;
    mcp_impl1_set(0,1);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_pos1(void) {
    INT_LOCK;
    mcp_impl1_set(1,0);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_brk1(void) {
    INT_LOCK;
    mcp_impl1_set(1,1);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_lop1(void) {
    INT_LOCK;
    mcp_impl1_set(0,0);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_neg2(void) {
    INT_LOCK;
    mcp_impl2_set(0,1);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_pos2(void) {
    INT_LOCK;
    mcp_impl2_set(1,0);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_brk2(void) {
    INT_LOCK;
    mcp_impl2_set(1,1);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/
void mcp_set_polarity_lop2(void) {
    INT_LOCK;
    mcp_impl2_set(0,0);
    INT_UNLOCK;
}
/*----------------------------------------------------------------------------*/