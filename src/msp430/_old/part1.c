#include <msp430.h>                         // include msp420 macros and variables
                                            // blank line
                                            // blank line
int main(void) {                            // main entry point
    WDTCTL = WDTPW | WDTHOLD;               // Stop watchdog timer
    P1DIR = BIT0 | BIT6;                    // set direction of io
    //P1OUT |= BIT0 | BIT6;                 // commented out code
    P1OUT |= BIT0;                          // turn on p1.0
                                            // blank line
    char flip = 1;                          // create flip variable
    char count = 5;                         // create count variable
                                            // blank line
    sin:                                    // create branch label
                                            // blank line
    if (P1IN & BIT3) {                      // if p1.3 pressed
        if (flip) {                         // if flip var not zero
            count = (count+1) % 6;          // increment count and wrap at 6
            flip = 0;                       // set flip var to zero
        }                                   // scope closing bracket
        //P1OUT ^= 0xFF;                    // more commented out code
        if (count < 4) {                    // if count is less than 4
            P1OUT = BIT0;                   // turn on p1.0 and turn off p1.6
        } else {                            // else condition sandwitched between scopes
            P1OUT = BIT6;                   // turn off p1.0 and turn on p1.6
        }                                   // scope closing bracket
        for (int i = 0; i < 1<<8; i++);     // busyloop for delay
    } else {                                // else conditional
        flip = 1;                           // set flip to 1
    }                                       // another scope closing bracket
                                            // blank line
    goto sin;                               // branch to sin label
                                            // blank line
    return 0;                               // redundant return statement
}                                           // scope closing bracket for main
