/*  By: Marwan Khoury
 *  socket.h
 */

#ifndef __SOCKET_H
#define	__SOCKET_H

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
typedef int8_t(*do_func_t) (uint8_t * parm);

typedef struct {
    uint8_t cmd[4];
    do_func_t doFunc;
} socket_cmd_t;

#define CMND_ASSIGN (uint8_t)'='
#define CMND_SEPER  (uint8_t)'-'

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
/* socket_cmd.c */
int8_t socket_cmd_find(uint8_t * str);

/* socket_gc.c */
void gc_start();
BOOL gc_isTout();
void gc_state_recv_set();
BOOL gc_can_begin();
void gc_task();

/* socket_gs.c */
void socket_server_restart();
void socket_gs();

#endif	/* __SOCKET_H */
