#ifndef PROJECT_H
#define PROJECT_H


#define SERVO_PIN_0 6
#define SERVO_PIN_1 5
#define THERM_PIN_0 A0
#define THERM_PIN_1 A1
#define BATTERY_PIN A2


#define LCD_COLS 20
#define LCD_ROWS 4

#define SERVO_MIN 0.0
#define SERVO_MAX 180.0
//#define SERVO_THRESH 15.0
#define SERVO_THRESH 5.0

#define SERVO_SPEED 20

#define MAX_RPM 3200
#define RPM_AVG_COUNT 0

// change this key to something arbitrary
// when you want to reset the uptime value
// NOTICE: the addresses should always
// be at least two bytes apart!
#define UPTIME_KEY  0xABCE
#define UPKEY_ADDR  0x10
#define UPTIME_ADDR (UPKEY_ADDR + 2)

// frame delay (probably around 60Hz)
//#define FRAME_DELAY_MS 10
//#define FRAME_DELAY_MS 500
#define FRAME_DELAY_MS 16
//#define FRAME_DELAY_MS 2000
#define FRAME_LCD_DIV 16
// approximately once per minute
#define WRITE_DELAY_MS 60000
//#define DRAW_DELAY_MS 500
#define DRAW_DELAY_MS 0
#define FRAME_HALL_DIV 64



//#define DISPLAY_MODE DISPLAY_DEBUG_1
#define DISPLAY_MODE DISPLAY_MAIN


#define DISPLAY_MAIN 0
#define DISPLAY_DEBUG_1 1
//#define DISPLAY_DEBUG_2 2


#define STARTUP_SECONDS 5


// comment this out for release
//#define DEBUG_MODE





#define ANALOG_MAX (1<<10)
#define VOLT_MAX 5.0

#define ANALOG_TO_VOLT(__n) (MAP((float)__n, 0, ANALOG_MAX, 0, VOLT_MAX))

//#define THERM_0_CALIBRATION(__n) MAP(ANALOG_TO_VOLT(__n), 1.034, 0.183, 32.0, 302.0)
//#define THERM_1_CALIBRATION(__n) MAP(ANALOG_TO_VOLT(__n), 1.034, 0.183, 32.0, 302.0)
#define THERM_CALIBRATION(__n) MAP(__n, 189.44, 97.4848, 68, 212)

//#define RPM_TO_SERVO_0_CALC(__n) \
//    CLAMP(MAP((int)__n, 0, MAX_RPM, SERVO_MIN, SERVO_MAX), SERVO_MIN, SERVO_MAX)
#define RPM_TO_SERVO_0_CALC(__n) \
    CLAMP(MAP((int)__n, 0, MAX_RPM, SERVO_MIN, SERVO_MAX), SERVO_MIN, SERVO_MAX)
    //MAP((int)__n, 0, MAX_RPM, SERVO_MIN, SERVO_MAX)

#define RPM_TO_SERVO_1_CALC(__n) \
    CLAMP(MAP((int)__n, 0, MAX_RPM, SERVO_MAX, SERVO_MIN), SERVO_MIN, SERVO_MAX)
    //MAP((int)__n, 0, MAX_RPM, SERVO_MAX, SERVO_MIN)

#define BATTERY_ANALOG_TO_VOLTAGE(__n) MAP((float)__n, 0, ANALOG_MAX, 15, 18)
//#define BATTERY_VOLTAGE_TO_PERCENT(__n) ((unsigned int)MAP(__n, 0.0, 5.0, 0, 100))
#define BATTERY_ANALOG_TO_PERCENT(__n) \
    ((unsigned int)(MAP(__n, 0, ANALOG_MAX, 0, 100)) + 0.5)
#define BATTERY_CALIBRATION(__n) BATTERY_ANALOG_TO_PERCENT(__n)







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


//#define PRINTF_MAX_BUFF 256
#define PRINTF_MAX_BUFF 64



#ifdef DEBUG_MODE

#define SERIAL_BEGIN(...) Serial.begin(__VA_ARGS__)
#define SERIAL_FLUSH() do { if (serialEventRun) serialEventRun(); } while(0)
#define PRINTF(...) _PRINTF(__VA_ARGS__, NULL)
#define _PRINTF(__format, ...) do {                                     \
        char _str_buff[PRINTF_MAX_BUFF];                                \
        snprintf(_str_buff, PRINTF_MAX_BUFF, (__format), __VA_ARGS__);  \
        Serial.print(_str_buff);                                        \
    } while(0)
#define DEBUG(__block) do {__block} while(0)
    
#else

#define SERIAL_BEGIN(...) do {} while(0)
#define SERIAL_FLUSH() do {} while(0)
#define PRINTF(...) do {} while(0)
#define DEBUG(__0) do {} while(0)

#endif


#endif
