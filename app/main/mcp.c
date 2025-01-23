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
void mcp_rly_init(void) {
    rly_mirror = 0x00U;
    MCPReg[MCP_IODIR] = B8(00000000); // 0 as output
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
void mcp_rly1_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_2;
    } else {
        rly_mirror &= ~BIT_2;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}
/*----------------------------------------------------------------------------*/
void mcp_rly2_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_3;
    } else {
        rly_mirror &= ~BIT_3;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}
/*----------------------------------------------------------------------------*/
void mcp_rly3_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_4;
    } else {
        rly_mirror &= ~BIT_4;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}
/*----------------------------------------------------------------------------*/
void mcp_rly4_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_5;
    } else {
        rly_mirror &= ~BIT_5;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}
/*----------------------------------------------------------------------------*/
void mcp_rly5_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_7;
    } else {
        rly_mirror &= ~BIT_7;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}
/*----------------------------------------------------------------------------*/
void mcp_rly6_set(UINT status) {
    if (status == 1) {
        rly_mirror |= BIT_6;
    } else {
        rly_mirror &= ~BIT_6;
    }
    MCPReg[0] = rly_mirror;
    sys_iic3_write(MCP_ADDRESS, MCP_GPIO, MCPReg, 1);
}


/*----------------------------------------------------------------------------*/
