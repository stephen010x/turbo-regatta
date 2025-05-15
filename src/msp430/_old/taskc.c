#include <msp430.h>             // include board definitions
                                // blank line
int main(void) {                // entry function 'main'    
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer
    P2DIR |= BIT1|BIT3|BIT5;    // Set P2.1, P2.3, P2.5 to output
    P1OUT = 0;                  // zero out P1 port
    P2OUT = 0;                  // zero out P2 port
                                // blank line
    for(;;)                     // the forever loop
        if (!(P1IN & BIT3))     // check if P1.3 is low
            P2OUT |= BIT3;      // set green led bit
        else                    // else
            P2OUT &= ~BIT3;     // clear green led bit
                                // blank line
    return 69;                  // return that never happens
}                               // end of function block
