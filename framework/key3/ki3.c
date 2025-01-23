/*  (By) Marwan Khoury
 *  key3.c
 */
//#include "app.h"
//
//
//
///*--------------------------------------------------------------------------*/
//#define IX_KI_ENTER     0
//#define IX_KI_PLUS      1
//#define IX_KI_MINUS     2
//
//#define KEY_TIME_OUT    6000UL
//#define KEY_TIME_MAX   1U
//#define KEY_LAST       3U
//
///*--------------------------------------------------------------------------*/
//static bool key_state[KEY_LAST];
//static uint8_t key_count[KEY_LAST];
//static bool keyIsPressed;
//static uint32_t keyCounts;
//
//static ki_t key;
//static uint16_t pin;
//
///*--------------------------------------------------------------------------*/
//void ki3_init(void) {
//    static uint8_t i;
//    for (i = 0; i < (KEY_LAST + 1); i++) {
//        key_state[i] = true;
//        key_count[i] = 0U;
//    }
//    keyCounts = 0;
//}
//
///*----------------------------------------------------------------------------*/
//static void _key_check(uint8_t indx, uint16_t status) {
//
//    if (status != 0x00) {
//        key_count[indx] = 0U;
//        key_state[indx] = true;
//    } else {
//        if (key_state[indx] == true) {
//            key_count[indx]++;
//            if (key_count[indx] >= KEY_TIME_MAX) {
//                key_count[indx] = KEY_TIME_MAX;
//                keyIsPressed = true;
//                key_state[indx] = false;
//            }
//        }
//    }
//}
//
///*----------------------------------------------------------------------------*/
//void ki3_scan() { // scaned every 10ms 
//    keyCounts++;
//    if (keyCounts >= KEY_TIME_OUT) {
//        key.typ = KI_TOUT;
//        ki3q_put(&key);
//        keyCounts = 0UL;
//    }
//
//    keyIsPressed = false;
//    pin = IS_KEY_PLUS_PRESSED ? 1 : 0;
//    _key_check(IX_KI_PLUS, pin);
//    if (keyIsPressed == true) {
//        key.typ = KI_PLUS;
//        ki3q_put(&key);
//        keyCounts = 0UL;
//    }
//
//    keyIsPressed = false;
//    pin = IS_KEY_ENTR_PRESSED ? 1 : 0;
//    _key_check(IX_KI_ENTER, pin);
//    if (keyIsPressed == true) {
//        key.typ = KI_ENTER;
//        ki3q_put(&key);
//        keyCounts = 0UL;
//    }
//
//    keyIsPressed = false;
//    pin = (uint16_t) IS_KEY_MINUS_PRESSED ? 1 : 0;
//    _key_check(IX_KI_MINUS, pin);
//    if (keyIsPressed == true) {
//        key.typ = KI_MINUS;
//        ki3q_put(&key);
//        keyCounts = 0UL;
//    }
//}

/*----------------------------------------------------------------------------*/