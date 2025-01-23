/*  By: Marwan Khoury
 *  sat.c
 */
#include "app.h"
#include "TCPIPConfig.h"

#define STACK_USE_DNS
#define STACK_USE_BERKELEY_API

/*-----------------------------------------------------------------------------*/
void sat_datetime_init(datumvrijeme_t *src) {
    src->dan = 0U;
    src->dan_u_tjednu = 0U;
    src->godina = 0U;
    src->minuta = 0U;
    src->mjesec = 0U;
    src->sat = 0U;
    src->sekunda = 0U;
}

/*-----------------------------------------------------------------------------*/
void sat_set_danutjednu(datumvrijeme_t *src) { /* 0 = Sunday */
    static int adjustment, mm, yy, dan;
    adjustment = (14 - src->mjesec) / 12;
    mm = src->mjesec + 12 * adjustment - 2;
    yy = src->godina - adjustment;
    dan = ((src->dan + (13 * mm - 1) / 5 + yy + yy / 4 - yy / 100 + yy / 400) % 7);
    if (dan == 0) {
        src->dan_u_tjednu = NEDJELJA;
    } else {
        src->dan_u_tjednu = dan;
    }
}

/*-----------------------------------------------------------------------------*/
void sat_adjust_timezone(datumvrijeme_t *src, int8_t timezone) {
    static int8_t indx;
    if (timezone > 0) {
        for (indx = 0; indx < timezone; indx++) {
            sat_inc_sat(src);
        }
    }
    if (timezone < 0) {
        for (indx = timezone; indx < 0; indx++) {
            sat_dec_sat(src);
        }
    }
}

/*-----------------------------------------------------------------------------*/
void sat_copy_datum_vrijeme(datumvrijeme_t *src, datumvrijeme_t* dest) {
    INT_LOCK;
    dest->dan = src->dan;
    dest->mjesec = src->mjesec;
    dest->dan_u_tjednu = src->dan_u_tjednu;
    dest->godina = src->godina;
    dest->sat = src->sat;
    dest->minuta = src->minuta;
    dest->sekunda = src->sekunda;
    INT_UNLOCK;
}

/*-----------------------------------------------------------------------------*/
void sat_copy_datum(datumvrijeme_t *src, datumvrijeme_t* dest) {
    INT_LOCK;
    dest->dan = src->dan;
    dest->mjesec = src->mjesec;
    dest->godina = src->godina;
    INT_UNLOCK;
}

/*-----------------------------------------------------------------------------*/
void sat_copy_vrijeme(datumvrijeme_t *src, datumvrijeme_t* dest) {
    INT_LOCK;
    dest->sat = src->sat;
    dest->minuta = src->minuta;
    dest->sekunda = src->sekunda;
    INT_UNLOCK;
}

/*-----------------------------------------------------------------------------*/
void sat_init_datum_vrijeme(datumvrijeme_t* dest) {

    dest->sekunda = 13U;
    dest->minuta = 50U;
    dest->sat = 13U;
    dest->dan = 3U;
    dest->mjesec = 9U;
    dest->dan_u_tjednu = SRIJEDA;
    dest->godina = 13U;
}

/*-----------------------------------------------------------------------------*/
uint8_t sat_maxbrojdan(datumvrijeme_t *time) {
    uint8_t max_broj_dana;
    max_broj_dana = 0U;

    switch (time->mjesec) {
        case SIJECANJ: max_broj_dana = 31;
            break;
        case VELJACA:
        {
            if ((time->godina % 4) == 0) {
                max_broj_dana = 29;
            } else {
                max_broj_dana = 28;
            }
            break;
        }
        case OZUJAK: max_broj_dana = 31;
            break;
        case TRAVANJ: max_broj_dana = 30;
            break;
        case SVIBANJ: max_broj_dana = 31;
            break;
        case LIPANJ: max_broj_dana = 30;
            break;
        case SRPANJ: max_broj_dana = 31;
            break;
        case KOLOVOZ: max_broj_dana = 31;
            break;
        case RUJAN: max_broj_dana = 30;
            break;
        case LISTOPAD: max_broj_dana = 31;
            break;
        case STUDENI: max_broj_dana = 30;
            break;
        case PROSINAC: max_broj_dana = 31;
            break;
        default: break;
    }
    return max_broj_dana;
}

/*-----------------------------------------------------------------------------*/
UINT8 sat_is_daylightsaving_time(datumvrijeme_t *time) {
    UINT8 lastweek;
    UINT8 daystoSunday;
    if ((time->mjesec > OZUJAK) && (time->mjesec < LISTOPAD)) {
        return 1;
    }
    lastweek = 31 - time->dan;
    daystoSunday = NEDJELJA - time->dan_u_tjednu;
    if (time->mjesec == OZUJAK) {
        // RULE 1 all weeks before last week.
        if (lastweek >= 7) {
            return 0;
        }
        // check if day afet sunday
        if ((lastweek < 7) && (daystoSunday > lastweek)) { //last week i nedelja je pro?la ili je zadni ned.
            return 1;
        }
        // if this day is sunday end of month.
        if (daystoSunday == 0) {
            if (time->sat >= 2) {
                return 1;
            }
        }
    } else if (time->mjesec == LISTOPAD) {
        // first 3 weeks of listopad
        if (lastweek >= 7) {
            return 1;
        }

        if ((lastweek < 7) && (daystoSunday <= lastweek)) {
            if (daystoSunday == 0) {
                if (time->sat < 2) {
                    return 1;
                } else {
                    return 0;
                }
            }
            return 1;
        }

        return 0;
    }
    return 0U;
}

/*-----------------------------------------------------------------------------*/
// KORISTI SE SAMO ZA NAMJESTANJE UTC ZONA
void sat_inc_sec(datumvrijeme_t *time) {
    time->sekunda++;
    if (time->sekunda > 59) {
        time->sekunda = 0;
        time->minuta++;
        if (time->minuta > 59U) {
            time->minuta = 0;
            time->sat++;
            if (time->sat > 23) {
                time->sat = 0;

                time->dan_u_tjednu++;
                if (time->dan_u_tjednu > NEDJELJA) {
                    time->dan_u_tjednu = PONEDJELJAK;
                }
                time->dan++;
                if (time->dan > sat_maxbrojdan(time)) {
                    time->dan = 1;
                    time->mjesec++;
                    if (time->mjesec > PROSINAC) {
                        time->mjesec = SIJECANJ;
                        time->godina++;
                        if (time->godina > 99) {
                            time->godina = 0U;
                        }
                    }
                }
            }
        }
    }
}


/*-----------------------------------------------------------------------------*/
// KORISTI SE SAMO ZA NAMJESTANJE UTC ZONA
void sat_inc_sat(datumvrijeme_t *time) {
    time->sat++;
    if (time->sat > 23) {
        time->sat = 0;
        time->dan_u_tjednu++;
        if (time->dan_u_tjednu > NEDJELJA) {
            time->dan_u_tjednu = PONEDJELJAK;
        }
        time->dan++;
        if (time->dan > sat_maxbrojdan(time)) {
            time->dan = 1;
            time->mjesec++;
            if (time->mjesec > PROSINAC) {
                time->mjesec = SIJECANJ;
                time->godina++;
                if (time->godina > 99) {
                    time->godina = 0U;
                }
            }
        }
    }
}
/*----------------------------------------------------------------------------*/
// KORISTI SE SAMO ZA NAMJESTANJE UTC ZONA
void sat_dec_sat(datumvrijeme_t *time) {
    if (time->sat == 0U) {
        time->sat = 23U;
        if (time->dan_u_tjednu == PONEDJELJAK) {
            time->dan_u_tjednu = NEDJELJA;
        } else {
            time->dan_u_tjednu--;
        }
        if (time->dan == 1U) {
            if (time->mjesec == SIJECANJ) {
                time->mjesec = PROSINAC;
                if (time->godina == 0U) {
                    time->godina = 99;
                } else {
                    time->godina--;
                }
            } else {
                time->mjesec--;
            }
            time->dan = sat_maxbrojdan(time);
        } else {
            time->dan--;
        }
    } else {
        time->sat--;
    }
}

/*----------------------------------------------------------------------------*/
void sat_toUTC(datumvrijeme_t * dt, int16_t timeZone, uint16_t DST) {
    sat_adjust_timezone(dt, (-1 * timeZone));
    if (DST == 1U) {
        if (sat_is_daylightsaving_time(dt) == 1U) {
            sat_dec_sat(dt);
        }
    }
}

/*----------------------------------------------------------------------------*/
void sat_toLocal(datumvrijeme_t * dt, int16_t timeZone, uint16_t DST) {
    sat_adjust_timezone(dt, timeZone);
    if (DST == 1U) {
        if (sat_is_daylightsaving_time(dt) == 1U) {
            sat_inc_sat(dt);
        }
    }
}
/*----------------------------------------------------------------------------*/
