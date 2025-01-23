/*  (C) Marwan Khoury
 *   drv_eds.c
 */


#ifndef __EDS_FONT_H
#define	__EDS_FONT_H

#define FONT_CHAR_MAX  EDS_FONT_MINUS + 1U

typedef enum _eds_font {
    EDS_FONT_0 = 0,
    EDS_FONT_1 = 1,
    EDS_FONT_2 = 2,
    EDS_FONT_3 = 3,
    EDS_FONT_4 = 4,
    EDS_FONT_5 = 5,
    EDS_FONT_6 = 6,
    EDS_FONT_7 = 7,
    EDS_FONT_8 = 8,
    EDS_FONT_9 = 9,
    EDS_FONT_BLANK = 10,
    EDS_FONT_A = 11,
    EDS_FONT_B = 12,
    EDS_FONT_C = 13,
    EDS_FONT_D = 14,
    EDS_FONT_E = 15,
    EDS_FONT_F = 16,
    EDS_FONT_G = 17,
    EDS_FONT_H = 18,
    EDS_FONT_N = 19,
    EDS_FONT_O = 20,
    EDS_FONT_P = 21,
    EDS_FONT_R = 22,
    EDS_FONT_I = 23,
    EDS_FONT_T = 24,
    EDS_FONT_L = 25,
    EDS_FONT_MINUS = 26,
} eds_font_t;

/*----------------------------------------------------------------------------*/
/* eds110.c*/
void eds110_NUM_SET(uint8_t * buf, uint8_t znak);
void eds110_CHAR_SET(uint8_t * buf, eds_font_t znak);
void eds110_DOT_SET(uint8_t * buf);
void eds110_DOT_CLR(uint8_t * buf);
void eds110_char(uint8_t* buf, char ch);

/* eds115.c*/
void eds130_NUM_SET(uint8_t * buf, uint8_t znak);
void eds130_CHAR_SET(uint8_t * buf, eds_font_t znak);
void eds115dot_SECONDDOT_SET(uint8_t * buf);
void eds115dot_DATEDOT_SET(uint8_t * buf);
void eds115_char(uint8_t* buf, char ch);


/* eds130.c */
void eds130_NUM_SET(uint8_t * buf, uint8_t znak);
void eds130_CHAR_SET(uint8_t * buf, eds_font_t znak);
void eds130_DOT_SET(uint8_t * buf);
void eds130_DOT_CLR(uint8_t * buf);
void eds130_char(uint8_t* buf, char ch);

/* eds120dots.c */
void eds120dot_ALLDOT_SET(uint8_t * buf);
void eds120dot_SECONDDOT_SET(uint8_t * buf);
void eds120dot_DATEDOT_SET(uint8_t * buf);
void eds130_CHAR_SET(uint8_t * buf, eds_font_t znak);
void eds130_NUM_SET(uint8_t * buf, uint8_t znak);


/*----------------------------------------------------------------------------*/
#endif	/* __EDS_FONT_H */

