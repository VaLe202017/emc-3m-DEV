/*  (C) Marwan Khoury
 *   std.h
 */

#if !defined(__GEN_H__)
#define __GEN_H__

/* Exported types ----------------------------------------------------------- */
typedef unsigned char char_t; /*  8-bit character              */
typedef unsigned char boolean_t; /*  8-bit boolean or logical     */

/*-----------------------------------------------------------------------------*/
#if !defined(NULL)
#define NULL  ((void *) 0)
#endif

#if !defined(true)
#define true  1U
#endif

#if !defined(false)
#define false 0U
#endif

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#define _BV(bit) (1ul <<(bit))
#define _BS(bits,val) do{(val) |= (1 << (bits));}while(0)
#define _BC(bits,val) do{(val) &= ~(1 << (bits));}while(0)

/*-----------------------------------------------------------------------------*/
// Swaps the upper byte with the lower byte in a 16 bit variable
#define SWAP(x) ((((x)&0xFF)<<8)|(((x)>>8)&0xFF))

/*-----------------------------------------------------------------------------*/
#ifndef MSB3
#define MSB3(a) ((a & 0xFF000000ul) >> 24ul) 
#endif

#ifndef MSB2
#define MSB2(a) ((a & 0x00FF0000ul) >> 16ul) 
#endif


#ifndef MSB
#define MSB(a) ((a & 0x0000FF00ul) >> 8)     /* The upper 8 bits of a 16 bit value */
#endif

#ifndef LSB
#define LSB(a) ((a & 0x000000FFul))            /* The lower 8 bits(of a 16 bit value)*/
#endif

/*-----------------------------------------------------------------------------*/
// Leaves the minimum of the two arguments
#define MIN(a, b) (((a) <= (b)) ? (a) : (b))

/*-----------------------------------------------------------------------------*/
// Leaves the maximum of the two arguments
#define MAX(a, b) (((a) <= (b)) ? (b) : (a))

/*-----------------------------------------------------------------------------*/
// check if a number in the asccii code string
#define ISNUM(x) ((x) >= '0' && (x) <= '9')

/*-----------------------------------------------------------------------------*/
// Internal Macros should not be used
#define HEX__(n) 0x##n##LU
#define B8__(x)  ((x&0x0000000FLU)?1:0) \
                +((x&0x000000F0LU)?2:0) \
                +((x&0x00000F00LU)?4:0) \
                +((x&0x0000F000LU)?8:0) \
                +((x&0x000F0000LU)?16:0) \
                +((x&0x00F00000LU)?32:0) \
                +((x&0x0F000000LU)?64:0) \
                +((x&0xF0000000LU)?128:0)

// User-visible Macros
#define B8(d)           ((uint8_t)B8__(HEX__(d)))
#define B16(dmsb,dlsb) (((uint16_t)B8(dmsb)<<8) + B8(dlsb))
#define B32(dmsb,db2,db3,dlsb)                   \
                       (((uint32_t)B8(dmsb)<<24) \
                      + ((uint32_t)B8(db2)<<16)  \
                      + ((uint32_t)B8(db3)<<8)   \
                      + B8(dlsb))

/*******************************************************************************
 * Here are some examples of the usage of these macros:
 * B8(01010101) // 85
 * B16(10101010,01010101) // 43,605
 * B32(10000000,11111111,10101010,01010101) // 2,164,238,933
 * So if you had a memory-mapped 8-bit control register of the format XXXYYZZZ 
 * (where XXX, YY, and ZZZ are subfields), you could initialize it like so:
 * p_reg = ( (B8(010) << 5) | (B8(11) << 3) | (B8(101) << 0) )
 * which sets the XXX bits to 010, YY to 11, and ZZZ to 101. 
 * If I ever needed to change XXX to 011, just change a single 0 to a 1 
 * in the source code, and everything magically changes. Best of all,
 * it's all done at compile-time. No error-prone conversion to 
 * hexadecimal necessary, no figuring out which bits belong to which nibbles, etc.
 *******************************************************************************/
/*-----------------------------------------------------------------------------*/
// Refer to Kernighan Ritchie for more details on the following macro

#define     CAT(x,y)                x ## y
#define     XCAT(x,y)               CAT(x,y)

/*-----------------------------------------------------------------------------*/
// Macros to convert interrupt priorities from numbers to priority levels & ipl

#define     _PRI_LEVEL(lvl)        INT_PRIORITY_LEVEL_ ## lvl
#define     PRI_LEVEL(lvl)         _PRI_LEVEL(lvl)

#define     _SUBPRI_LEVEL(slvl)    INT_SUB_PRIORITY_LEVEL_ ## slvl
#define     SUBPRI_LEVEL(slvl)     _SUBPRI_LEVEL(slvl)

#define     _IPL(lvl)              ipl ## lvl ## AUTO
#define     IPL(lvl)               _IPL(lvl)

#define     _INLINE                __attribute__ ((always_inline))

#endif /*!defined(__GEN_H__) */
