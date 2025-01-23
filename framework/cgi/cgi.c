/*  (By) Marwan Khoury
 *  key3.c
 */
#include "app.h"

/*----------------------------------------------------------------------------*/
#define isNotEnd( ch ) (((ch) != ' ' && (ch) != ',' && (ch) != ';' && \
                         (ch) != '\r' && (ch) != '\n' && (ch) != 0) ? 1 : 0 )

/*----------------------------------------------------------------------------*/
int8_t CgiGetVarValuePair(
        char_t *rx_buf, /* buffer where to find value     */
        char_t *var, /* identifier name                */
        char_t *value, /* where to store string value    */
        uint8_t value_len /* size of string value           */
        ) {
    char *tmp;
    uint8_t cnt;

    tmp = strstr((const char*) rx_buf, (const char*) var); /* pointer where identifer found  */
    if (tmp != NULL) { /* identifier  founded            */
        tmp += strlen((char*) var); /* move pointer after          */
        cnt = 20;
        while (((*tmp == ' ') || (*tmp == '='))&&(cnt > 0)) {
            tmp++;
            cnt--;
        }
        if (isdigit(*tmp) || (*tmp == '-') || (*tmp == '+')) {
            for (; isNotEnd(*tmp) && (value_len > 0); tmp++, value++, value_len--) {
                *value = *tmp; /* Copy value string to value buf */
            }
            *value = 0; /* close the end of the string \0 */
        } else if (*tmp == '?') {
            return (-4); // add to print help
        } else if (!(isNotEnd(*tmp))) {
            return (-1);
        } else {
            return (-2); /* if no equal sign  wrong in cmnd*/
        }
    }/* END if identifier founded      */
    else { /* NO identifier founded          */
        return (-3);
    }
    return (0);
}

/*----------------------------------------------------------------------------*/
int8_t CgiIsNotEmpty(char_t *rx_buf, uint16_t len) {
    uint16_t i;
    i = 0;
    while ((*rx_buf == ' ') && (i < len)) {
        rx_buf++;
        i++;
    }
    if (i == len) {
        return (-1);
    } else {
        return (1);
    }
}