//ANDERSON CODE

// Motor Control
// Read two ADC channels for PWM
// Used timing system for PWM
// Modify PWM for motor control
// Two analog inputs and two motor signals
// This is for two BLDC motors with ESC

#include <msp430.h>

inline int min(int a, int b) {
    return (a < b) ? a : b;
}

inline int max(int a, int b) {
    return (a > b) ? a : b;
}

inline int nrm(int input, int lo1, int hi1, int lo2, int hi2) {
    return (input - lo1) * (hi2 - lo2) / (hi1 - lo1) + lo1;
}

unsigned int adc[2]; // Storage array for ADC values

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    BCSCTL1 = CALBC1_1MHZ; // Set clock to 1 MHz
    DCOCTL = CALDCO_1MHZ;  // Set clock to 1 MHz

    ADC10CTL1 = INCH_1 + CONSEQ_3; // Sequence begins at INCH_1 and goes to INCH_0, repeat sequence
    ADC10CTL0 = ADC10SHT_3 + MSC + ADC10ON; // 16x Clock cycles, Multiple sample and conversion, power ADC On
    ADC10AE0 = BIT1 + BIT0; // Analog enable of A0 and A1
    ADC10DTC1 = 2; // Number of data transfers per block

    // P1DIR &= (1 << 4); // VREF+ as an input

    P2DIR |= 0xFF;
    P2SEL |= 0xFF;

    // Timer configuration
    TA1CTL = TASSEL_2 | MC_1; // Timer A control
    TA1CCR0 = 20000; // Sets period on 20ms (50 Hz)
    TA1CCTL1 = OUTMOD_7; // X output will go to P2.1 and P2.2
    TA1CCTL2 = OUTMOD_7; // Y output will go to P2.4 and P2.5

    // Initial duty cycle at 7.5%
    TA1CCR1 = 2000;
    TA1CCR2 = 2000;

    __delay_cycles(700000);

    // ADC10CTL0 |= SREF_1;

    while (1)
    {
        ADC10CTL0 &= ~ENC; // Disable conversion
        while (ADC10CTL1 & BUSY); // Ensure conversion is not in process
        ADC10CTL0 |= ENC | ADC10SC; // Enable and start conversion
        ADC10SA = (unsigned int)adc; // Start address for data transfer

        TA1CCR1 = 1500 + ((4 * adc[0]) - 512);
        TA1CCR2 = 1500 + ((4 * adc[1]) - 512);

        //__delay_cycles(10000); // Delay for stability
    }

    return 0;
}
