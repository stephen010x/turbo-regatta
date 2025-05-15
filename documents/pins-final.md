
    ##==========##
    ## Pin maps ##
    ##==========##
    
    Stephen Harris




## Arduino Nano ##
==================

6 / 20 digital pins used
3 / 8  analog  pins used
9 / 20 pins used total

    VIN
    GND         [powout]
    5V          [powin] Red out from ESC
    3V3
    D0          Reserved for Serial debugging
    D1          Reserved for Serial debugging
    D2          [in, INT0] Hall effect sensor 1 switch pulse
   ~D3          [in, INT1] Hall effect sensor 2 switch pulse
    D4          [in] Enable Switch
   ~D5          [out] SG90 Motor 1 PWM
   ~D6          [out] SG90 Motor 2 PWM
    D7
    D8
   ~D9
   ~D10
   ~D11
    D12         
    D13         [out] Status LED
    A0/D14      [in, analog] 10k Epoxy Thermistor 1
    A1/D15      [in, analog] 10k Epoxy Thermistor 2
    A2/D16      [in, analog] Battery voltage reading
    A3/D17      
    A4/D18      [i2c SDA] 2004 LCD 20x4 Display SDA pin
    A5/D19      [i2c SCL] 2004 LCD 20x4 Display SCL pin
    A6          
    A7




## MSP430 ##
============

2 / 16 digital pins used
2 / 8  analog  pins used
4 / 16 pins used total

    VCC         [powin] 3V3 out from Nano
    GND         [powout]
    5V
    3V3
    P1.0/A0
    P1.1/A1/RX
    P1.2/A2/TX
    P1.3/A3     [in, analog] Potentiometer 1
    P1.4/A4     [in, analog] Potentiometer 2
    P1.5/A5
    P1.6/A6
    P1.7/A7
    P2.0
    P2.1/SI2C
    P2.2/SI2C
    P2.3
    P2.4        [out] ESC 1 PWM out
    P2.5        [out] ESC 2 PWM out
    P2.6
    P2.7



## Part Power Ranges ##
=======================
Arduino Nano
    Input Voltage:  5V, 7V-12V
    Input Amp draw: ~800mA
    Output Votage:  3.3V, 5V, 5V-pin
    Output Amp max: 50mA, 1A, 20-40mA
        Input low voltage   0.47 Vcc
        Hysteresis          0.05 Vcc
        Input high voltage  0.52 Vcc

MSP430
    Input Voltage:  1.8-3.6V
    Input Amp draw: 0.42mA
    Output Voltage: 0-Vcc+0.3V
    Output Amp max: +-2mA
    (Pins operate in same range as VCC and VSS)

2004 LCD Display
    Working voltage 5V (4.7-5.5V), 1.5-2.5mA current draw

x2 10k Epoxy Thermistor
    Max 6V, max draw 450uA

x2 Hall Effect Switch
    Operating voltage 2.7-24V
    Current draw 1.1-2.4mA
    Output current 25mA @ Sinking output voltage

x2 Micro Servo
    Working voltage 4.8-6V
    Rated current 220±50mA, stall 650±80mA

x2 Potentiometer
    Dependant on resistor
    Assume lower range of minimum pin current draw

x2 Motor speed controller
    ???

x2 Motor
    ???


## Power supply map ##
=======================
__Battery__ (big volts)
ESC Controller
Motors
Battery voltage divider (sensor, not supply)

__Arduino Nano__ (3.3V)
MSP430
Epoxy thermistor
Potentiometer

__ESC__ (5V)
Arduino Nano
Micro Servo
Hall Effect Switch
2004 LCD Display



 Notes
-------
Remember Battery w/ voltage divider
Remember emergency power shutoff
Find out max current output for ESC
Put hall effect in 3.3V category?
Keep high volt and logic volt grounds separate
Ask if we had to cool ESC's last year
