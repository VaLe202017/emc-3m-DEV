/*  (C) Marwan Khoury
 *   eds130.c
 */

#include "app.h"

const uint8_t font130[FONT_CHAR_MAX] = {
    //efda0gcb , 
    0b11110011, //0
    0b00000011, //1
    0b10110101, //2
    0b00110111, //3
    0b01000111, //4
    0b01110110, //5
    0b11110110, //6
    0b00010011, //7
    0b11110111, //8
    0b01110111, //9
    0b00000000, //Blank
    0b11010111, //A
    0b11100110, //b
    0b11110000, //C
    0b10100111, //d
    0b11110100, //E
    0b11010100, //F
    0b11110010, //G
    0b11000110, //h
    0b10000110, //n
    0b10100110, //o
    0b11010101, //P
    0b00000100, //-
};

/*----------------------------------------------------------------------------*/
static void eds130_font_copy(uint8_t * buf, uint8_t index) {
    uint8_t font;
    uint8_t count;
    uint8_t data;

    font = font130[index];
    data = 0x80;
    for (count = 0; count < 8; count++) {
        if ((font & data) != 0) {
            buf[count] = 0xffu;
        } else {
            buf[count] = 0x00;
        }
        data >>= 0x01u;
    }
}

/*----------------------------------------------------------------------------*/
void eds130_NUM_SET(uint8_t * buf, cchar_t znak) {
    uint8_t data;
    if ((znak >= '0')&& (znak <= '9')) {
        data = znak - '0';
        eds130_font_copy(buf, data);
    } else {
        eds130_font_copy(buf, FONT_BLANK);
    }
}

/*----------------------------------------------------------------------------*/
void eds130_CHAR_SET(uint8_t * buf, cchar_t znak) {
    switch (znak) {

        case ' ':
            eds130_font_copy(buf, FONT_BLANK);
            break;
        case 'A':
            eds130_font_copy(buf, FONT_A);
            break;
        case 'b':
            eds130_font_copy(buf, FONT_B);
            break;
        case 'C':
            eds130_font_copy(buf, FONT_C);
            break;
        case 'd':
            eds130_font_copy(buf, FONT_D);
            break;
        case 'E':
            eds130_font_copy(buf, FONT_E);
            break;
        case 'F':
            eds130_font_copy(buf, FONT_F);
            break;
        case 'G':
            eds130_font_copy(buf, FONT_G);
            break;
        case 'h':
            eds130_font_copy(buf, FONT_H);
            break;
        case 'n':
            eds130_font_copy(buf, FONT_N);
            break;
        case 'o':
            eds130_font_copy(buf, FONT_O);
            break;
        case 'P':
            eds130_font_copy(buf, FONT_P);
            break;

        case '-':
            eds130_font_copy(buf, FONT_MINUS);
            break;
        default:
            break;
    }
}

/*----------------------------------------------------------------------------*/
void eds130_DOT_SET(uint8_t * buf) {
    buf[4] = 0x00;
}

/*----------------------------------------------------------------------------*/
void eds130_DOT_CLR(uint8_t * buf) {
    buf[4] = 0x0F;
}

/*----------------------------------------------------------------------------*/
