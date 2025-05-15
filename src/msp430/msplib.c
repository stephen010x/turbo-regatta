#include "msplib.h"



// sets up adc and which analog pins to enable
// TODO: add custom flags, one which enables constant
// sampling
void adc10_setup(uint8_t pins, uint32_t flags) {
    register uint16_t f0 = (uint16_t)flags;
    register uint16_t f1 = (uint16_t)(flags >> 16);
    ADC10CTL0 = ADC10ON | f0;
    ADC10CTL1 = f1;
    ADC10AE0 = pins;
}



// TODO: add a start and end analog pin parameter
// in an ideal world, this would just be managed via interrupts
void adc10_multisample_start(uint16_t (*adc_out)[8]) {
    // nessissary to modify registers
    //adc10_stop();
    // wait until previous conversion (if any) is finished
    while(adc10_busy());
    
    ADC10CTL0 |= MSC;
    // set repeat sequence of channels, starting at A7 and going down
    // it is going to sample all of them, whether enabled or not
    ADC10CTL1 |= CONSEQ_3 | INCH_7;

    // set number of data transfers per block
    ADC10DTC1 = 8;
    // set data transfer address
    ADC10SA = (unsigned int)*adc_out;

    // start conversions
    ADC10CTL0 |= ENC | ADC10SC;

    // will stop the converter at the end of the conversions
    // without this adc10_busy() will always return true
    adc10_stop();
}



void pwm1_setup(uint32_t freq) {
    // set BCS (Basic Clock System) to 1MHZ
    BCSCTL1 = CALBC1_1MHZ;
    // set Digitally Controlled Oscillator to 1MHZ
    DCOCTL = CALDCO_1MHZ;

    // set Timer A to use Sub-Master Clock
    // sets up mode, counting up to TACCR0
    TA1CTL = TASSEL_2 | MC_1;

    // set period (in microseconds)
    TA1CCR0 = (uint32_t)1000000/freq;

    TA1CCTL0 = 0;
    TA1CCTL1 = 0;
    TA1CCTL2 = 0;

    // this kind of makes a few of the above stuff redundant
    pwm1_1_duty(0.5);
    pwm1_2_duty(0.5);
}
