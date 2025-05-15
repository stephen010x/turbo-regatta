#include <Arduino.h>
#include <avr/wdt.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <Servo.h>
#include <avr/sleep.h>
//#include "hd44780.h"
#include "LiquidCrystal_I2C.h"

volatile unsigned long dummy1 = 0;
volatile unsigned long dummy2 = 0;




#define SERVO_SHIFT 4
#define SERVO_PIN_0 8
#define SERVO_PIN_1 9


#define TEST SERVO


// The NONE is to act as a baseline test
#define NONE    0
#define RPM     1
#define PWM     2
#define SERVO   2
#define DISPLAY 3


//#define LCD_COLS 20
#define LCD_COLS 20
//#define LCD_ROWS 4
#define LCD_ROWS 4

#define iLCD_COLS LCD_COLS
#define iLCD_ROWS LCD_ROWS



LiquidCrystal_I2C lcd(0x27, LCD_COLS, LCD_ROWS);



void error(char*);



/*const uint8_t charBitmap[][8] = {
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f}, // char 0 
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x1f}, // char 1
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x1f, 0x1f}, // char 2
	{0x00, 0x00, 0x00, 0x00, 0x1f, 0x1f, 0x1f, 0x1f}, // char 3
	{0x00, 0x00, 0x00, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f}, // char 4
	{0x00, 0x00, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f}, // char 5
	{0x00, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f}, // char 6
	{0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f}, // char 7
};*/


// note that nano runs at 16MHz


// will undefine arduino's main so that we can use our own.
//#undef main

int main() {

    wdt_disable();
    init();
    initVariant();

    // Set INT0 to trigger on the rising edge
    EICRA |= (1 << ISC01) | (1 << ISC00);
    // Set INT1 to trigger on the falling edge
    EICRA |= (1 << ISC11);

    // Enable INT0 and INT1 interrupts
    EIMSK |= (1 << INT0) | (1 << INT1);

    // enable global interrupts
    sei();


    // this needs to be volatile to prevent the loop it is incremented in
    // from being optimized out.
    //volatile unsigned long long counter = 0;
    volatile unsigned int counter = 0;
    volatile unsigned long long busywork = 0;
    unsigned int angle = 0;
    Servo servo[2];

    Serial.begin(9600);


    #if TEST == RPM

    #elif TEST == PWM
    
    servo[0].attach(SERVO_PIN_0);
    servo[1].attach(SERVO_PIN_1);
    
    #elif TEST == DISPLAY

    //if (!lcd.begin(LCD_COLS, LCD_ROWS))
    //    error("lcd failed to start\n");

    lcd.init();
	lcd.backlight();

    #ifdef WIRECLOCK
    #if defined(WIRE_HAS_SETCLOCK) || ((ARDUINO >= 157) && !defined(MPIDE))
	Wire.setClock(WIRECLOCK); // set i2c clock bit rate, if asked
	Wire.setClock(WIRECLOCK);
	#endif
	#endif
    
    #endif

    
    for (;;) {

        #if TEST == RPM
        // no need to set anything up here
            
        #elif TEST == PWM

        // remember, we are measuring pwm time, not the servo write time
        // although I guess we might as well do both.

        // with no load each busyloop takes almost exactly half a second
        // so we want this to simulate being run at 60Hz by running it 30 times.
        for (int i = 0; i < 30; i++) {
            servo[0].write((angle++)>>SERVO_SHIFT);
            servo[1].write((angle++)>>SERVO_SHIFT);
            angle &= ~(((unsigned int)-1)<<(10+SERVO_SHIFT));
        }

        #elif TEST == DISPLAY

        /*for (int i = 0; i < LCD_ROWS * LCD_COLS;i++ ) {
            //lcd.setCursor(i%LCD_COLS, i/LCD_COLS);
            lcd.clear();
        }*/

        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("test");
        lcd.setCursor(0, 1);
        lcd.print(counter);
        /*lcd.setCursor(0, 2);
        lcd.print(dummy1);
        lcd.setCursor(0, 3);
        lcd.print(dummy2);*/

        #endif


        // this measures clock tics
        register unsigned short i = 0;
        do busywork++;
        while( --i != 0 );

        counter++;
        

        char str[256];

        // guarentees null terminator even if overflow
        /*snprintf(str, 256, 
            "counter:\t%d\ndummy1: \t%lld\ndummy2: \t%lld\n\n\0", 
            counter, dummy1, dummy2);*/
        /*snprintf(str, 256,
            "%ld\t%d\t%ld\t%ld\n", millis(), counter, (unsigned long)dummy1, (unsigned long)dummy2);*/
        snprintf(str, 256, "%ld\t%d\n", millis(), counter);

        Serial.print(str);

        // hopefully not a blocking function
        if (serialEventRun) serialEventRun();
    }
}



ISR(INT0_vect) {
    dummy1 += 1;
}
	
ISR(INT1_vect) {
    dummy2 += 1;
}





void error(char* str) {
    Serial.println(str);
    delayMicroseconds(16383);
    if (serialEventRun) serialEventRun();
    cli();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    for (;;) sleep_mode();
}
