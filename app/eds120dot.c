/*  (C) Marwan Khoury
 *   edsdot.c
 */

#include "app.h"

/*----------------------------------------------------------------------------*/
void eds120dot_ALLDOT_SET(uint8_t * buf) {
    buf[0] = 0xFFu;
    buf[1] = 0xFFu;
}


/*----------------------------------------------------------------------------*/
void eds120dot_SECONDDOT_SET(uint8_t * buf) {
    buf[0] = 0xF0u;
    buf[1] = 0xFFu;
}

/*----------------------------------------------------------------------------*/
void eds120dot_DATEDOT_SET(uint8_t * buf) {
    buf[0] = 0xF0u;//0x0Fu;
    buf[1] = 0xFFu;//0x00u;
}
