/*  (by) Marwan Khoury
 *   edes10.c
 */

#include "app.h"

#define FONT15_SIZE  2
/*----------------------------------------------------------------------------*/
const uint8_t font115[FONT_CHAR_MAX][FONT15_SIZE] = {
    //    G           G             R          R       
    //{0bffDDeegg ,0bddccbbaa } ,   //Abcdefg
    {0b11001100, 0b11111111}, //0
    {0b00000000, 0b00111100}, //1
    {0b00001111, 0b11001111}, //2
    {0b00000011, 0b11111111}, //3
    {0b11000011, 0b00111100}, //4
    {0b11000011, 0b11110011}, //5
    {0b11001111, 0b11110011}, //6
    {0b00000000, 0b00111111}, //7
    {0b11001111, 0b11111111}, //8
    {0b11000011, 0b11111111}, //9
    {0b00000000, 0b00000000}, //Blank
    {0b11001111, 0b00111111}, //A
    {0b11001111, 0b11110000}, //b
    {0b11001100, 0b11000011}, //C
    {0b00001111, 0b11111100}, //d
    {0b11001111, 0b11000011}, //E
    {0b11001111, 0b00000011}, //F
    {0b11001100, 0b11110011}, //G
    {0b11001111, 0b00110000}, //h
    {0b00001111, 0b00110000}, //n
    {0b11000011, 0b00001111}, //o
    {0b11001111, 0b00001111}, //p
    {0b00000000, 0b00110000}, //i
    {0b11001111, 0b11000000}, //t
    {0b11001100, 0b11000000}, //L
    {0b00001111, 0b00000000}, //r
    {0b00000011, 0b00000000}, //-
};

/*----------------------------------------------------------------------------*/
static void eds115_font_copy(uint8_t * buf, uint8_t data) {
    *buf = (uint8_t) font115[data][0];
    buf++;
    *buf = (uint8_t) font115[data][1];
}

/*----------------------------------------------------------------------------*/
void eds115_NUM_SET(uint8_t * buf, uint8_t znak) {
    uint8_t data;
    if ((znak >= '0')&& (znak <= '9')) {
        data = znak - '0';
        eds115_font_copy(buf, data);
    } else {
        eds115_font_copy(buf, EDS_FONT_BLANK);
    }
}

/*----------------------------------------------------------------------------*/
void eds115_CHAR_SET(uint8_t * buf, eds_font_t znak) {
    eds115_font_copy(buf, znak);
}

/*----------------------------------------------------------------------------*/
void eds115dot_SECONDDOT_SET(uint8_t * buf) {
    buf[0] |= 0x20;
    buf[2] |= 0x20;
}

/*----------------------------------------------------------------------------*/
void eds115dot_DATEDOT_SET(uint8_t * buf) {
    buf[0] |= 0x10;
    buf[2] |= 0x10;
}

/*----------------------------------------------------------------------------*/
void eds115_char(uint8_t* buf, char ch) {
    switch (ch) {
        case '0':eds115_font_copy(buf, EDS_FONT_0);
            break;
        case '1':eds115_font_copy(buf, EDS_FONT_1);
            break;
        case '2':eds115_font_copy(buf, EDS_FONT_2);
            break;
        case '3':eds115_font_copy(buf, EDS_FONT_3);
            break;
        case '4':eds115_font_copy(buf, EDS_FONT_4);
            break;
        case '5':eds115_font_copy(buf, EDS_FONT_5);
            break;
        case '6':eds115_font_copy(buf, EDS_FONT_6);
            break;
        case '7':eds115_font_copy(buf, EDS_FONT_7);
            break;
        case '8':eds115_font_copy(buf, EDS_FONT_8);
            break;
        case '9':eds115_font_copy(buf, EDS_FONT_9);
            break;
        case ' ':eds115_font_copy(buf, EDS_FONT_BLANK);
            break;
        case 'A':eds115_font_copy(buf, EDS_FONT_A);
            break;
        case 'B':eds115_font_copy(buf, EDS_FONT_B);
            break;
        case 'C':eds115_font_copy(buf, EDS_FONT_C);
            break;
        case 'D':eds115_font_copy(buf, EDS_FONT_D);
            break;
        case 'E':eds115_font_copy(buf, EDS_FONT_E);
            break;
        case 'F':eds115_font_copy(buf, EDS_FONT_F);
            break;
        case 'G':eds115_font_copy(buf, EDS_FONT_G);
            break;
        case 'H':eds115_font_copy(buf, EDS_FONT_H);
            break;
        case 'N':eds115_font_copy(buf, EDS_FONT_N);
            break;
        case 'O':eds115_font_copy(buf, EDS_FONT_O);
            break;
        case 'P':eds115_font_copy(buf, EDS_FONT_P);
            break;
        case 'I':eds115_font_copy(buf, EDS_FONT_I);
            break;
        case 'T':eds115_font_copy(buf, EDS_FONT_T);
            break;
        case 'L':eds115_font_copy(buf, EDS_FONT_L);
            break;
        case 'R':eds115_font_copy(buf, EDS_FONT_R);
            break;
        case '-':eds115_font_copy(buf, EDS_FONT_MINUS);
            break;
        default: break;
    }
}