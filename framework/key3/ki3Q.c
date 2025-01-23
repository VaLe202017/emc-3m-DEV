/*  (by)Marwan Khoury
 *   ki3Q.c
 */
#include "app.h"


/*----------------------------------------------------------------------------*/
/* Very simple queue
 * These are FIFO queues which discard the new data when full.
 *
 * Queue is empty when in == out.
 * If in != out, then
 *  - items are placed into in before incrementing in
 *  - items are removed from out before incrementing out
 * Queue is full when in == (out-1 + QUEUE_SIZE) % QUEUE_SIZE;
 *
 * The queue will hold QUEUE_ELEMENTS number of items before the
 * calls to QueuePut fail.
 */

/* Queue structure */
#define QUEUE_ELEMENTS 10
#define QUEUE_SIZE (QUEUE_ELEMENTS + 1)

static ki_t Queue[QUEUE_SIZE];

uint8_t QueueIn;
uint8_t QueueOut;

void ki3q_init() {
    QueueIn = QueueOut = 0;
}

int ki3q_put(ki_t *qnew) {
    if (QueueIn == ((QueueOut - 1 + QUEUE_SIZE) % QUEUE_SIZE)) {
        return -1; /* Queue Full*/
    }
    Queue[QueueIn].typ = qnew->typ;
    QueueIn = (QueueIn + 1) % QUEUE_SIZE;
    return 0; // No errors
}

int ki3q_get(ki_t *qold) {
    if (QueueIn == QueueOut) {
        return -1; /* Queue Empty - nothing to get*/
    }
    qold->typ = Queue[QueueOut].typ;
    QueueOut = (QueueOut + 1) % QUEUE_SIZE;
    return 0; // No errors
}
