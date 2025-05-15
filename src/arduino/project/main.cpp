#include <Arduino.h>
#include <EEPROM.h>
#include <avr/wdt.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdint.h>
//#include <Servo.h>
#include <avr/sleep.h>

#include "project.h"
#include "lib/VSF/VarSpeedServo.h"
#include "lib/LC/LiquidCrystal_I2C.h"




#define CALC_RPM(__delta_ticks, __delta_time) \
    ((unsigned int)((float)__delta_ticks * 60e6 / (float)__delta_time))



void error(char*);
void wait(int ms);



VarSpeedServo servo[2];
LiquidCrystal_I2C lcd(0x27, LCD_COLS, LCD_ROWS);
// will overflow once every 32 minutes (approximately)
volatile unsigned int rpm_counter[2];


//#define LCD_MAX_BUFF 81
#define LCD_MAX_BUFF 21

#define LCD_PRINTF(...) _LCD_PRINTF(__VA_ARGS__, NULL)
#define LCD_PRINTF(__lcdptr, __x, __y, __format, ...) do {          \
        char str_buff[LCD_MAX_BUFF];                                \
        snprintf(str_buff, LCD_MAX_BUFF, (__format), __VA_ARGS__);  \
        (__lcdptr)->setCursor(__x, __y);                            \
        /*PRINTF("%s\n", str_buff);*/                               \
        PRINTF("%s\n", str_buff);                                   \
        (__lcdptr)->print(str_buff);                                \
    } while(0)



int main(void) {

    // set up enviroment
    wdt_disable();
    init();
    initVariant();

    // enable INT0 and INT1 interrupts on falling edge
    EICRA = (1 << ISC01) | (1 << ISC11);
    EIMSK |= (1 << INT0) | (1 << INT1);

    // enable global interrupts
    sei();

    // begin serial for debugging
    SERIAL_BEGIN(9600);
    PRINTF(">> Starting Arduino\n");

    // half second startup delay
    delay(500);

    // set up servos
    servo[0].attach(SERVO_PIN_0/*, SERVO_MIN, SERVO_MAX*/);
    servo[1].attach(SERVO_PIN_1/*, SERVO_MIN, SERVO_MAX*/);

    // setup lcd screen
    lcd.init();
	lcd.backlight();
	//lcd.noBacklight();
    ////////
	/*#ifdef WIRECLOCK
    #if defined(WIRE_HAS_SETCLOCK) || ((ARDUINO >= 157) && !defined(MPIDE))
	Wire.setClock(WIRECLOCK); // set i2c clock bit rate, if asked
	Wire.setClock(WIRECLOCK);
	#endif
	#endif*/

    PRINTF(">> Setup Complete\n");


    unsigned long p_rpm_counter[2];
    p_rpm_counter[0] = rpm_counter[0];
    p_rpm_counter[1] = rpm_counter[1];
    unsigned long last_us = micros();

    unsigned long lastdraw = 0;
    
    unsigned long start_ms = millis();
    unsigned long lastwrite = start_ms;
    // retrieve previous uptime (in seconds)
    unsigned long uptime;
    unsigned long uptime_now = uptime;
    uint16_t upkey;
    EEPROM.get(UPKEY_ADDR, upkey);
    if (upkey != UPTIME_KEY) {
        PRINTF("UPTIME KEY mismatch. Resetting uptime value\n");
        EEPROM.put(UPKEY_ADDR, (uint16_t)UPTIME_KEY);
        EEPROM.put(UPTIME_ADDR, (typeof(uptime))0);
    }
    EEPROM.get(UPTIME_ADDR, uptime);


    PRINTF(">> Entering Loop");

    float servo_avg[2];
    servo_avg[0] = 0;
    servo_avg[1] = 0;
    float servo_val[2];
    servo_val[0] = -1000;
    servo_val[1] = -1000;
    
    float temp[2] = {75.0, 75.0};

    // setup lcd frame
    lcd.clear();


    // display setup time
    for (int i = 0; i < STARTUP_SECONDS; i++) {
        LCD_PRINTF(&lcd, 0, 1, "    STARTUP  %d    ", 5-i);
        delay(1000);
    }

    // clear again
    lcd.clear();
    
    

    int framecount = 0;

    for (;;) {
        char buffer[256];
    
        // synchronize current time read
        unsigned long time_us = micros();
        unsigned long time_ms = millis();
        
        // read thermistors (Fahrenheit)
        //temp[0] = (temp[0]*3 + THERM_CALIBRATION(analogRead(THERM_PIN_1)))/4.0;
        temp[1] = (temp[0]*3 - 15 + 71 + THERM_CALIBRATION(analogRead(THERM_PIN_0)))/4.0 ;
        temp[0] = (temp[0]*3 + temp[1] + 2)/4.0;

        // read and adjust battery voltage (percent)
        int battery = BATTERY_CALIBRATION(analogRead(BATTERY_PIN));

        // compute rpm speed per motor
        float rpm[2];
        if (framecount % FRAME_HALL_DIV == 0) {
            unsigned long delta_time = time_us - last_us;
            unsigned int delta_ticks[2];
            delta_ticks[0] = rpm_counter[0] - p_rpm_counter[0];
            delta_ticks[1] = rpm_counter[1] - p_rpm_counter[1];
            rpm[0] = CALC_RPM(delta_ticks[0], delta_time);
            rpm[1] = CALC_RPM(delta_ticks[1], delta_time);
            // update rpm frame-preserved values
            last_us = time_us;
            p_rpm_counter[0] = rpm_counter[0];
            p_rpm_counter[1] = rpm_counter[1];
        }

        // update motor uptime once per minute
        // TODO: should this only update when motor is moving?
        uptime_now = uptime + (time_ms - start_ms)/1000;
        if (time_ms > lastwrite + (unsigned long)WRITE_DELAY_MS) {
            PRINTF("Writing %lu to EEPROM\n", uptime_now);
            lastwrite = time_ms;
            EEPROM.put(UPTIME_ADDR, uptime_now);
        }


        servo_avg[0] = (servo_avg[0]*RPM_AVG_COUNT + 
            RPM_TO_SERVO_0_CALC(rpm[1])) / (RPM_AVG_COUNT + 1);
        servo_avg[1] = (servo_avg[1]*RPM_AVG_COUNT + 
            RPM_TO_SERVO_1_CALC(rpm[0])) / (RPM_AVG_COUNT + 1);
        //servo_avg[0] = RPM_TO_SERVO_0_CALC(rpm[0]);
        //servo_avg[1] = RPM_TO_SERVO_1_CALC(rpm[1]);
        //PRINTF("avg %d, %d\n", (int)(servo_avg[0]*100), (int)(servo_avg[1]*100));

        // set servo angle using rpm speed
        if (ABS(servo_val[0] - servo_avg[0]) > SERVO_THRESH) {
            servo_val[0] = servo_avg[0];
            servo[0].write(servo_val[0], SERVO_SPEED);
        }

        if (ABS(servo_val[1] - servo_avg[1]) > SERVO_THRESH) {
            servo_val[1] = servo_avg[1];
            servo[1].write(servo_val[1], SERVO_SPEED);
        }
        
        PRINTF("ABS(%d - %d) = %d\n", (int)servo_val[1], (int)servo_avg[1],
            (int)ABS(servo_val[1] - servo_avg[1]));


        //if (time_ms > lastdraw + (unsigned long)DRAW_DELAY_MS) {
        if (framecount % FRAME_LCD_DIV == 0) {
            lastdraw = time_ms;

            #if (DISPLAY_MODE == DISPLAY_MAIN)
            // write thermistor temperatures to lcd screen
            LCD_PRINTF(&lcd, 0, 0, "R-ESC  %d F  ", (int)temp[0]);
            PRINTF("R-ESC-ANALOG  %d\n", analogRead(THERM_PIN_0));
            LCD_PRINTF(&lcd, 0, 1, "L-ESC  %d F  ", (int)temp[1]);
            PRINTF("L-ESC-ANALOG  %d\n", analogRead(THERM_PIN_1));

            // write battery voltage to lcd screen
            //#ifdef USE_BATTERY_BAR
            char batt_bar[14];
            //battery = 0;
            int bar_len = (int)(MAP((float)battery, 0, 100, 0, sizeof(batt_bar)) + 0.0);
            for (int i = 0; i < sizeof(batt_bar)-1; i++)
                batt_bar[i] = (i < bar_len) ? (0xFF) : (' ');
            batt_bar[sizeof(batt_bar)-1] = '\0';
            //LCD_PRINTF(&lcd, 0, 2, "BATT  %d              ", (int)battery);
            LCD_PRINTF(&lcd, 0, 2, "BATT [%s]", batt_bar);
            //#else
            float batv = BATTERY_ANALOG_TO_VOLTAGE(analogRead(BATTERY_PIN));
            int batvi = (int)(batv);
            //LCD_PRINTF(&lcd, 15, 1, "%d.%dv", batvi, (int)((batv-batvi)*10 + 0.5));
            LCD_PRINTF(&lcd, 15, 1, "%d.%dv", batvi, (int)((batv-batvi)*10));
            //PRINTF("%dmv\n", (int)(batv*1000));
            #elif (DISPLAY_MODE == DISPLAY_DEBUG_1)

            float batv = BATTERY_ANALOG_TO_VOLTAGE(analogRead(BATTERY_PIN));
            int batvi = (int)(batv);

            LCD_PRINTF(&lcd, 0, 0, "t %d %d    ", analogRead(THERM_PIN_0), analogRead(THERM_PIN_1));
            LCD_PRINTF(&lcd, 0, 1, "r %d %d    ", (int)rpm[0], (int)rpm[1]);
            LCD_PRINTF(&lcd, 0, 2, "b %d.%dv   ", batvi, (int)((batv-batvi)*10));
            
            

            #endif
            

            #ifdef DEBUG_MODE
            float bvolt = BATTERY_ANALOG_TO_VOLTAGE(analogRead(BATTERY_PIN));
            PRINTF("BATT  %d V:%d.%d\n", (int)battery, (int)bvolt, (int)((bvolt-(float)(int)bvolt)*1000));
            #endif

            // read motor uptime to lcd screen
            LCD_PRINTF(&lcd, 0, 3, "UPTIME  %d min        ", (int)(uptime_now/60));

            PRINTF("RPM %d %d %d, %d\n", (int)rpm[0], (int)rpm[1], 
                (int)RPM_TO_SERVO_0_CALC(rpm[0]), (int)RPM_TO_SERVO_1_CALC(rpm[1]));
            //LCD_PRINTF(&lcd, 0, 0, 
            //    "temp1 %d F\ntemp2 %d F\n batt %d%%\n uptime %d min\n",
            //    temp[0], temp[1], battery, uptime/60);

            PRINTF("\n");
        }

        // frame delay
        // doesn't need to be complex. It isn't like computation load is dynamic
        SERIAL_FLUSH();
        // this originally was wait, but I realize using delay would 
        // probably be better for serial stuff
        delay(FRAME_DELAY_MS);
    }
}





ISR(INT0_vect) {
    rpm_counter[0] += 1;
}
	
ISR(INT1_vect) {
    rpm_counter[1] += 1;
}





// not going to be very accurate
// suppose to busywait
/*void wait(int ms) {
    for (int i = 0; i < ms; i++) {
        delayMicroseconds(1000);
    }
}*/




void error(char* str) {
    PRINTF("%s\n", str);
    delayMicroseconds(16383);
    SERIAL_FLUSH();
    cli();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    for (;;) sleep_mode();
}
