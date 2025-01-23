/*  (By) Marwan Khoury
 *  key3.h
 */


#ifndef __KEY3_H_
#define __KEY3_H_

typedef enum {
    KI_NULL = 0,
    KI_PLUS = 0x01,
    KI_MINUS = 0x02,
    KI_ENTER = 0x04,
    KI_TOUT = 0x08,
} ki_type_t;

typedef struct _keys_t {
    ki_type_t typ;
} ki_t;


APP_EXT ki_type_t gkey3State;

void ki3_init();
void ki3_scan();

void ki3q_init();
int ki3q_put(ki_t *qnew);
int ki3q_get(ki_t *qold);

/*÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷*/
#ifndef IS_KEY_PLUS_PRESSED
#error "need to define IS_KEY_PLUS_PRESSED in system_io.h"
#endif
#ifndef IS_KEY_ENTR_PRESSED
#error "need to define IS_KEY_ENTR_PRESSEDin system_io.h"
#endif
#ifndef IS_KEY_MINUS_PRESSED
#error "need to define IS_KEY_MINUS_PRESSED in system_io.h"
#endif

#endif /* __KEY3_H_ */
