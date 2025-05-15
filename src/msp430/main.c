#include <msp430.h>
#include "msplib.h"

#include "msplib.c"


/*#define MIN_DUTY 0.05
#define NIL_DUTY 0.075
#define MAX_DUTY 0.10*/

#define PWM_TH

#define MIN_DUTY ((0.05 - NIL_DUTY) * 0.57 + NIL_DUTY)
#define NIL_DUTY 0.075
#define MAX_DUTY ((0.10 - NIL_DUTY) * 0.57 + NIL_DUTY)

#define PWM_DEADZONE (0.20*(MAX_DUTY-NIL_DUTY))

#define MAX_DUTY_CHANGE 0.0004
//#define MAX_DUTY_CHANGE 1.0

#define MIN_POTENT1 10
#define MAX_POTENT1 ((uint16_t)(ADC10_MAX*((float)(120.0)/270.0)-10))
//#define MAX_POTENT1 ADC10_MAX

#define MIN_POTENT2 MAX_POTENT1
#define MAX_POTENT2 MIN_POTENT1

#define DUTY_OFF1 0.0
//#define DUTY_OFF2 +0.05
#define DUTY_OFF2 0.0


//#define MANUAL_CALIBRATE




int main(void){
    uint16_t adc[8];
    
    disable_watchdog();
    write_p1_dir(NONE);

    adc10_setup(PIN_A0 | PIN_A1, ADC_64_CLK);

    pwm1_setup(50);     // 50 Hz
    pwm1_1_enable();    // X output will go to P2.1 and P2.2
    pwm1_2_enable();    // Y output will go to P2.4 and P2.5

    #ifdef AUTO_CALIBRATE
    pwm1_1_duty(0.1);
    pwm1_2_duty(0.1);

    __delay_cycles(3000000);

    pwm1_1_duty(0.075);
    pwm1_2_duty(0.075);

    // delay to wait for esc's to "boot"
    __delay_cycles(5000000);
    #elifdef MANUAL_CALIBRATE

    pwm1_1_duty(0.075);
    pwm1_2_duty(0.075);

    #else

    pwm1_1_duty(0.075);
    pwm1_2_duty(0.075);

    __delay_cycles(5000000);
    
    #endif

    float duty[2] = {NIL_DUTY, NIL_DUTY};

    for(;;) {
        adc10_multisample_start(&adc);
        while (adc10_busy());

        //pwm1_1_duty((float)adc[8]/(float)ADC10_MAX);
        //pwm1_2_duty((float)adc[7]/(float)ADC10_MAX);

        //if (adc[7] > ADC10_MAX/2) pwm1_1_duty(MAX_DUTY);
        //else pwm1_1_duty(NIL_DUTY);

        //if (adc[8] > ADC10_MAX/2) pwm1_2_duty(MAX_DUTY);
        //else pwm1_2_duty(NIL_DUTY);

        float targ_duty[2];

        targ_duty[0] = CLAMP(MAP((float)adc[7], 
            MIN_POTENT1, MAX_POTENT1, MIN_DUTY+DUTY_OFF1, MAX_DUTY+DUTY_OFF1),
            MIN_DUTY, MAX_DUTY);
        targ_duty[1] = CLAMP(MAP((float)adc[6], 
            MIN_POTENT2, MAX_POTENT2, MIN_DUTY+DUTY_OFF2, MAX_DUTY+DUTY_OFF2),
            MIN_DUTY, MAX_DUTY);

        for (int i = 0; i < 2; i++) {
            if (targ_duty[i] < NIL_DUTY + PWM_DEADZONE &&
                targ_duty[i] > NIL_DUTY - PWM_DEADZONE)
                duty[i] = targ_duty[i];
            else if (targ_duty[i] - duty[i] > MAX_DUTY_CHANGE)
                duty[i] += MAX_DUTY_CHANGE;
            else if (targ_duty[i] - duty[i] < -MAX_DUTY_CHANGE)
                duty[i] -= MAX_DUTY_CHANGE;
            else
                duty[i] = targ_duty[i];
            //duty[i] = targ_duty[i];
        }

        pwm1_2_duty(duty[0]);
        pwm1_1_duty(duty[1]);
        
        //__delay_cycles(10000);
    }

    return 0;
}
