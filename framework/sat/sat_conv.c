/*  (By) Marwan Khoury
 *  sat_conv.c
 */
#include "app.h"

/*-----------------------------------------------------------------------------*/
#define FIRSTYEAR             1900    /* start year                           */
#define FIRSTDAY              1	      /* 1.1.1900 was a Monday (0 = Sunday)   */

/*-----------------------------------------------------------------------------*/
static const char DayOfMonth[] = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
static const char monthDays[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

/*-----------------------------------------------------------------------------*/
void sat_conv_to_TmTime(datumvrijeme_t *src, tm_t* dest) {
    dest->tm_mday = src->dan;
    dest->tm_mon = src->mjesec;
    dest->tm_wday = src->dan_u_tjednu;
    dest->tm_year = src->godina;
    dest->tm_hour = src->sat;
    dest->tm_min = src->minuta;
    dest->tm_sec = src->sekunda;
}

/*-----------------------------------------------------------------------------*/
void sat_conv_TmTime(uint32_t sec, uint32_t frac, tm_t *tm) {
    uint16_t day;
    UINT8 year;
    uint16_t dayofyear;
    UINT8 leap400;
    UINT8 month;

    tm->tm_msec = (1000 * (frac >> 16)) / 65536;
    tm->tm_sec = sec % 60;
    sec /= 60;
    tm->tm_min = sec % 60;
    sec /= 60;
    tm->tm_hour = sec % 24;
    day = sec / 24;
    tm->tm_wday = (day + FIRSTDAY) % 7; /* weekday */
    if (tm->tm_wday == 0) {
        tm->tm_wday = 7;
    }
    year = FIRSTYEAR % 100; /* 0..99   */
    leap400 = 4 - ((FIRSTYEAR - 1) / 100 & 3); /* 4, 3, 2, 1   */

    for (;;) {
        dayofyear = 365;
        if ((year & 3) == 0) {
            dayofyear = 366; /* leap year   */
            if (year == 0 || year == 100 || year == 200) /* 100 year exception */
                if (--leap400) /* 400 year exception                   */
                    dayofyear = 365;
        }
        if (day < dayofyear)
            break;
        day -= dayofyear;
        year++; /* 00..136 / 99..235                    */
    }
    tm->tm_year = year + FIRSTYEAR / 100 * 100; /* + century                            */
    tm->tm_year %= 100;
    if (dayofyear & 1 && day > 58) /* no leap year and after 28.2.         */
        day++; /* skip 29.2.                           */

    for (month = 1; day >= DayOfMonth[month - 1]; month++)
        day -= DayOfMonth[month - 1];

    tm->tm_mon = month; /* 1..12                                */
    tm->tm_mday = day + 1; /* 1..31                                */
}


/*
From http://www.esqsoft.com/javascript_examples/date-to-epoch.htm:
You could do a rough calculation as follows:

   1. Say its the year 2006. Determining the offset from "0" time in 1970 could be 
      done as follows. 2006 - 1970 = 36 years.
      However, we haven't accounted for leap years. A leap year occurs every 4 years. 
      36 / 4 = 9. Let's convert the years to days as follows, 36 * 365 = 13140. 
      And, let's add in our leap year approximation as follows 13140 + 9 = 13149.
   2. Now, let's say it's March 15 in that year. We need to calculate the day offset from January 1. 
      January had 31 days, February had 28 (leap year has 29), and March has so far had 15. 
      So we can add up our days, 31 + 28 + 15 = 74 days.
      Let's add this back into the days from the converted year. 13149 + 74 = 13223.
   3. Now let's convert our days into seconds (since epoch is seconds elapsed.) 
      Each day has roughly 86,400 seconds in it. So 13223 * 86400 = 1142467200 seconds.
   4. Now we need the time offset since the start of the day. If we say it's 5:00 PM, 
      then we convert 12 hour time into 24 hour time to get 17:00. 
      That's 17 hours that have elapsed since 12:00:00. Each hour is 3600 seconds, so we can do the
      conversion as follows 17 * 3600 = 61200. Now add that back into 
      the running total 1142467200 + 61200 = 1142528400.
   5. Note: If you have minutes and seconds, they'd need to be added in as well. 
 */

/*----------------------------------------------------------------------------*/
uint32_t sat_conv_MkTime(tm_t *t) {
    const uint16_t epoch = FIRSTYEAR;
    uint16_t i;
    uint32_t calc;

    calc = t->tm_year - epoch; /* calc difference in years             */
    calc = calc * 365UL + (calc - 1) / 4;
    /* calc diff in days -
     *  also account extra days for
     *  all leap years except current one   */
    for (i = 0; i < (t->tm_mon - 1); i++) {
        /* add days for this year               */
        calc += monthDays[i];
        if (i == 1 && (t->tm_year % 4) == 0) {
            calc++;
            /* calc extra day for leap year in 2nd month   */
        }
    }
    calc += t->tm_mday - 1; /* add days in current month without today day */
    calc *= 86400UL; /* convert elapsed days in seconds      */
    calc += t->tm_hour * 3600UL; /* add elapsed hours in "current" day */
    calc += t->tm_min * 60UL; /* add elapsed minutes in "current" day */
    calc += t->tm_sec; /* add elapsed seconds in "current" day */
    return calc;
}

/*----------------------------------------------------------------------------*/
