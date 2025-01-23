/*  (By) Marwan Khoury
 *  key3.h
 */


#ifndef __CGI_H_
#define __CGI_H_

int8_t CgiGetVarValuePair(char_t *rx_buf, char_t *var, char_t *value, uint8_t value_len);
int8_t CgiIsNotEmpty(char_t *rx_buf, uint16_t len);

#endif /* __CGI_H_ */
