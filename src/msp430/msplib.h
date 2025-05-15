#ifndef MSPLIB_H
#define MSPLIB_H

#include <stdint.h>
#include <stdbool.h>
#include <msp430.h>


#define __FORCE_INLINE__ __attribute__((always_inline))


#define DEFAULT 0
#define NONE    0
#define ALL_PINS 0xFF

#define PIN0 (1<<0)
#define PIN1 (1<<1)
#define PIN2 (1<<2)
#define PIN3 (1<<3)
#define PIN4 (1<<4)
#define PIN5 (1<<5)
#define PIN6 (1<<6)
#define PIN7 (1<<7)

#define PIN_A0 0
#define PIN_A1 1
#define PIN_A2 2
#define PIN_A3 3
#define PIN_A4 4
#define PIN_A5 5
#define PIN_A6 6
#define PIN_A7 7

#define ADC_4_CLK  (0<<11)
#define ADC_8_CLK  (1<<11)
#define ADC_16_CLK (2<<11)
#define ADC_64_CLK (3<<11)

#define ADC10_MAX ((1<<10)-1)


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wattributes"


__FORCE_INLINE__ void disable_watchdog(void) { WDTCTL = WDTPW | WDTHOLD; }

__FORCE_INLINE__ void write_p1_dir(uint8_t pins_out) { P1DIR = pins_out; }
__FORCE_INLINE__ void set_p1_dir(uint8_t pins_out, uint8_t pins_in) {
    P1DIR |= pins_out;
    P1DIR &= ~pins_in;
    P1SEL &= ~(pins_out | pins_in);     // set to primary port
    P1SEL2 &= ~(pins_out | pins_in);    //
}

__FORCE_INLINE__ void write_p1 (uint8_t pins) { P1OUT = pins;   }
__FORCE_INLINE__ void set_p1   (uint8_t pins) { P1OUT |= pins;  }
__FORCE_INLINE__ void clear_p1 (uint8_t pins) { P1OUT &= ~pins; }
__FORCE_INLINE__ void flip_p1  (uint8_t pins) { P1OUT ^= pins;  }
__FORCE_INLINE__ uint8_t get_p1(void) { return P1IN; }


__FORCE_INLINE__ void write_p2_dir(uint8_t pins_out) { P2DIR = pins_out; }
__FORCE_INLINE__ void set_p2_dir(uint8_t pins_out, uint8_t pins_in) {
    P2DIR |= pins_out;
    P2DIR &= ~pins_in;
    P2SEL &= ~(pins_out | pins_in);     // set to primary port
    P2SEL2 &= ~(pins_out | pins_in);    //
}

__FORCE_INLINE__ void write_p2 (uint8_t pins) { P2OUT = pins;   }
__FORCE_INLINE__ void set_p2   (uint8_t pins) { P2OUT |= pins;  }
__FORCE_INLINE__ void clear_p2 (uint8_t pins) { P2OUT &= ~pins; }
__FORCE_INLINE__ void flip_p2  (uint8_t pins) { P2OUT ^= pins;  }
__FORCE_INLINE__ uint8_t get_p2(void) { return P2IN; }




#define INCH_MASK 0xF000
#define INCH_SHIFT 12

void adc10_setup(uint8_t pins, uint32_t flags);
void adc10_multisample_start(uint16_t (*adc_out)[8]);

__FORCE_INLINE__ void adc10_convert(uint8_t apin) {
    ADC10CTL1 = (ADC10CTL1 & ~INCH_MASK) | ((apin << INCH_SHIFT) | INCH_MASK);
    ADC10CTL0 |= ENC | ADC10SC;
}
__FORCE_INLINE__ bool adc10_busy(void) { return ADC10CTL1 & ADC10BUSY; }
__FORCE_INLINE__ uint16_t adc10_read(uint8_t apin) { return ADC10MEM; }

__FORCE_INLINE__ void adc10_stop() { ADC10CTL0 &= ~ENC; }
__FORCE_INLINE__ void adc10_halt() { adc10_stop(); while (adc10_busy()); }




void pwm1_setup(uint32_t freq);

__FORCE_INLINE__ void pwm1_1_enable(void)     { 
    TA1CCTL1 |= OUTMOD_7;       // set pwm output mode to reset/set
    set_p2_dir(PIN1 | PIN2, NONE);
    P2SEL |= PIN1 | PIN2;       // select peripheral port
    P2SEL2 &= ~(PIN1 | PIN2);   //
}
__FORCE_INLINE__ void pwm1_1_disable(void)    { TA1CCTL1 &= ~OUTMOD_7; } // set out mode to OUT bit value
__FORCE_INLINE__ void pwm1_1_duty(float duty) { TA1CCR1 = (uint16_t)(TA1CCR0 * duty); }

__FORCE_INLINE__ void pwm1_2_enable(void)     {
    TA1CCTL2 |= OUTMOD_7;       // set pwm output mode to reset/set
    set_p2_dir(PIN4 | PIN5, NONE);
    P2SEL |= PIN4 | PIN5;       // select peripheral port
    P2SEL2 &= ~(PIN4 | PIN5);   //
}
__FORCE_INLINE__ void pwm1_2_disable(void)    { TA1CCTL2 &= ~OUTMOD_7; } // set out mode to OUT bit value
__FORCE_INLINE__ void pwm1_2_duty(float duty) { TA1CCR2 = (uint16_t)(TA1CCR0 * duty); }




#pragma GCC diagnostic pop



#define CLAMP(__n, __min, __max) ({             \
        register typeof(__n) n = (__n);         \
        register typeof(__min) nmin = (__min);  \
        register typeof(__max) nmax = (__max);  \
        n = (n > nmax) ? (nmax) : (n);          \
        (n < nmin) ? (nmin) : (n);              \
    })


#define MAP(__n, __i0, __i1, __o0, __o1) ({     \
        register float i0 = (__i0);      \
        register float i1 = (__i1);      \
        register float o0 = (__o0);      \
        register float o1 = (__o1);      \
        (typeof(__n))(((float)(__n) - i0) * (o1 - o0) / (i1 - i0) + o0);   \
    })

#define ABS(__n) ({ register typeof(__n) n = (__n); (n > 0) ? (n) : (-n); })


#define MAPCLAMP(__n, __i0, __i1, __o0, __o1) ({        \
        CLAMP(MAP(__n, __i0, __i1, __o0, __o1), __o0, __o1);    \
    })


#endif
