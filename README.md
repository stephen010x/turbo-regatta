# Turbo Regatta - Pier Pressure

<image src="media/ui-circuit-diagram.png" width="256"></image>
<image src="media/race.jpg" width="256"></image> \
<image src="media/motor.jpg" width="256"></image>
<image src="media/pcb.webp" width="256"></image>

The Turbo Regatta is a collaborative project for engineers at Utah Tech University, which involves designing and building a custom built electric motor, and user interface dashboard, attached to a repurposed pedal boat to be used in the Turbo Regatta Boat Race during the [2025 Utah Tech Engineering Design Day Event](https://mech.utahtech.edu/discovery-design-day/)

As the Computer Engineer of our group named *Pier Pressure*, I was responsible for designing the user interface, the circuit schematics, and programming the two microcontrollers used for this project.

<video controls>
    <source src="media/pier-pressure-intro.mp4" type="video/mp4">
</video>

## Voltage Mapper Circuit

The Voltage Mapper Circuit was used to remap the voltage range 15-18V to 0-5V in order to accurately and safely measure the battery voltage from an Arduino microcontroller.

<image src="media/schematic.webp" width="256"></image>
<image src="media/pcb.webp" width="256"></image> \
<image src="media/model1.webp" width="256"></image>
<image src="media/model2.webp" width="256"></image>

[More about the Voltage Mapper Circuit](voltage-mapper)

## User System Interface

The User Interface, which was driven by an Arduino Uno, displayed motor ESC temperature and battery voltage to a LCD screen, and each motors' RPM was displayed using two servo driven tachometers mounted on the dash.

<image src="media/ui-circuit-diagram.png"></image> \
<image src="media/ui-flow-diagram.png" width="256"></image>
<image src="media/wiring1.webp" width="256"></image>
<!--image src="media/wiring2.webp" width="256"></image-->

[Link to Arduino Code](src/arduino)

## User Control Interface

There were two electric motors propelling the boat. Each motor was controlled with an ESC motor controller, which were both being controlled using an [MSP430 Microcontroller](https://www.ti.com/microcontrollers-mcus-processors/msp430-microcontrollers/overview.html). The MSP430 utilized PWM signals in order to communicate with the two ESCs that drove the motors.

As per the project requirements, no libraries were to be used when developing the code for the MSP430. Instead, features such as analog sampling, and IO pin reads and writes, all had to be interfaced using MSP430 IO registers.

<image src="media/msp430.png" width="350"></image>

[MSP430G2xx User Guide](https://www.ti.com/lit/ug/slau144k/slau144k.pdf?ts=1737596399224)

[Link to MSP430 Code](src/msp430)

## Media

[View More Media](media.md)
