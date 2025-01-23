/*  (by) Marwan
 *  system_onewire.c
 */

#include "app.h"
/*----------------------------------------------------------------------------*/
static const uint8_t crcTable[256] = {
    0U, 94U, 188U, 226U, 97U, 63U, 221U, 131U, 194U, 156U, 126U, 32U, 163U, 253U,
    31U, 65U, 157U, 195U, 33U, 127U, 252U, 162U, 64U, 30U, 95U, 1U, 227U, 189U,
    62U, 96U, 130U, 220U, 35U, 125U, 159U, 193U, 66U, 28U, 254U, 160U, 225U,
    191U, 93U, 3U, 128U, 222U, 60U, 98U, 190U, 224U, 2U, 92U, 223U, 129U, 99U,
    61U, 124U, 34U, 192U, 158U, 29U, 67U, 161U, 255U, 70U, 24U, 250U, 164U, 39U,
    121U, 155U, 197U, 132U, 218U, 56U, 102U, 229U, 187U, 89U, 7U, 219U, 133U,
    103U, 57U, 186U, 228U, 6U, 88U, 25U, 71U, 165U, 251U, 120U, 38U, 196U, 154U,
    101U, 59U, 217U, 135U, 4U, 90U, 184U, 230U, 167U, 249U, 27U, 69U, 198U,
    152U, 122U, 36U, 248U, 166U, 68U, 26U, 153U, 199U, 37U, 123U, 58U, 100U,
    134U, 216U, 91U, 5U, 231U, 185U, 140U, 210U, 48U, 110U, 237U, 179U, 81U,
    15U, 78U, 16U, 242U, 172U, 47U, 113U, 147U, 205U, 17U, 79U, 173U, 243U,
    112U, 46U, 204U, 146U, 211U, 141U, 111U, 49U, 178U, 236U, 14U, 80U, 175U,
    241U, 19U, 77U, 206U, 144U, 114U, 44U, 109U, 51U, 209U, 143U, 12U, 82U,
    176U, 238U, 50U, 108U, 142U, 208U, 83U, 13U, 239U, 177U, 240U, 174U, 76U,
    18U, 145U, 207U, 45U, 115U, 202U, 148U, 118U, 40U, 171U, 245U, 23U, 73U,
    8U, 86U, 180U, 234U, 105U, 55U, 213U, 139U, 87U, 9U, 235U, 181U, 54U, 104U,
    138U, 212U, 149U, 203U, 41U, 119U, 244U, 170U, 72U, 22U, 233U, 183U, 85U,
    11U, 136U, 214U, 52U, 106U, 43U, 117U, 151U, 201U, 74U, 20U, 246U, 168U,
    116U, 42U, 200U, 150U, 21U, 75U, 169U, 247U, 182U, 232U, 10U, 84U, 215U,
    137U, 107U, 53U
};
/*----------------------------------------------------------------------------*/

#define OW_PIN_DIRECTION 	_LATA5
#define OW_WRITE_PIN  		_TRISA5
#define OW_READ_PIN			_RA5

#define	OUTPUT	0
#define	HIGH	1
#define	LOW		0
#define	OUTPUT	0
#define	INPUT 	1
#define	SET		1
#define	CLEAR	0

#define DELAY_6Us	6
#define DELAY_9Us	9
#define DELAY_10Us	10
#define DELAY_55Us	55
#define DELAY_60Us	60
#define DELAY_64Us	64
#define DELAY_70Us	70
#define DELAY_205Us	205			// DELAY_410Us = DELAY_205Us + DELAY_205Us
#define DELAY_240Us	240			// DELAY_480Us = DELAY_240Us + DELAY_240Us // since the variable is declared as unsigned char

uint8_t macro_delay;

#define wait(a)         sys_us_delay((a))
#define drive_OW_low()  do{OW_PIN_DIRECTION=OUTPUT; OW_WRITE_PIN=LOW;}while(0)
#define drive_OW_high() do{OW_PIN_DIRECTION=OUTPUT; OW_WRITE_PIN=HIGH;}while(0)

/*----------------------------------------------------------------------------*/
uint8_t read_OW() {
    uint8_t read_data = 0;
    OW_WRITE_PIN = INPUT;
    if (HIGH == OW_READ_PIN) {
        read_data = SET;
    } else {
        read_data = CLEAR;
    }
    return read_data;
}

/*----------------------------------------------------------------------------*/
uint8_t OW_reset_pulse() {
    uint8_t presence_detect;
    drive_OW_low(); // Drive the bus low
    wait(DELAY_240Us); // delay 480 microsecond (us)
    wait(DELAY_240Us);
    drive_OW_high(); // Release the bus
    wait(DELAY_70Us); // delay 70 microsecond (us)
    presence_detect = read_OW(); //Sample for presence pulse from slave
    wait(DELAY_205Us); // delay 410 microsecond (us)
    wait(DELAY_205Us);
    drive_OW_high(); // Release the bus
    return presence_detect;
}

/*----------------------------------------------------------------------------*/
void OW_write_bit(uint8_t write_bit) {
    if (write_bit) {
        //writing a bit '1'
        drive_OW_low(); // Drive the bus low
        wait(DELAY_6Us); // delay 6 microsecond (us)
        drive_OW_high(); // Release the bus
        wait(DELAY_64Us); // delay 64 microsecond (us)
    } else {
        //writing a bit '0'
        drive_OW_low(); // Drive the bus low
        wait(DELAY_60Us); // delay 60 microsecond (us)
        drive_OW_high(); // Release the bus
        wait(DELAY_10Us); // delay 10 microsecond for recovery (us)
    }
}

/*----------------------------------------------------------------------------*/
uint8_t OW_read_bit() {
    uint8_t read_data;
    //reading a bit 
    drive_OW_low(); // Drive the bus low
    wait(DELAY_6Us); // delay 6 microsecond (us)
    drive_OW_high(); // Release the bus
    wait(DELAY_9Us); // delay 9 microsecond (us)

    read_data = read_OW(); //Read the status of OW_PIN

    wait(DELAY_55Us); // delay 55 microsecond (us)	
    return read_data;
}

/*----------------------------------------------------------------------------*/
void OW_write_byte(uint8_t write_data) {
    uint8_t loop;
    for (loop = 0; loop < 8; loop++) {
        OW_write_bit(write_data & 0x01); //Sending LS-bit first
        write_data >>= 1; // shift the data byte for the next bit to send
    }
}

/*----------------------------------------------------------------------------*/
uint8_t OW_read_byte() {
    uint8_t loop, result = 0;
    for (loop = 0; loop < 8; loop++) {
        result >>= 1; // shift the result to get it ready for the next bit to receive
        if (OW_read_bit())
            result |= 0x80; // if result is one, then set MS-bit
    }
    return result;
}

/*----------------------------------------------------------------------------*/
static uint8_t OW_CRC(const uint8_t *buff, uint16_t num_vals) {
    static uint8_t crc;
    static uint8_t i;

    crc = 0U;
    for (i = 0U; num_vals > 0U; i++) {
        crc = crcTable[crc ^ buff[i]];
        num_vals--;
    }
    return crc;
}

/*----------------------------------------------------------------------------*/
int16_t sys_1wire_start_9bits() {
    /* Presence status 1=None 0=OK         */
    if ((OW_reset_pulse()) == CLEAR) {
        OW_write_byte(0xCCU); /* skip reading ROM*/
        OW_write_byte(0x44U); /* start temp conversion*/
        return (0);
    }
    return (-1);
}

/*----------------------------------------------------------------------------*/
int16_t sys_1wire_read_temperature(int16_t* tsValue) {
    static uint8_t buff[9];
    static uint8_t crc;
    static uint8_t n;

    if ((OW_reset_pulse()) == CLEAR) {
        OW_write_byte(0xCCU); /* skip reading ROM*/
        OW_write_byte(0xBEU); /* Read Scratchpad on sensor */
        for (n = 0U; n < 9U; n++) {
            buff[n] = (uint8_t) OW_read_byte();
        }
        crc = OW_CRC(buff, 8U);
        if (crc == buff[8U]) {
            *tsValue = (buff[1] << 8) | buff[0];
            /* *tsValue =(int16_t)((buff[1] << 8U) | (buff[0]));*/
            return (0);
        }
    }
    return (-1);
}
