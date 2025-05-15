[<<< Back to main README](../README.md)

# Voltage-Mapper Circuit

One challenge to overcome was being able to accurately measure battery voltage, which was a mandatory feature on the User Interface. The boat used two 18V Drill batteries, and the goal was to be able to safely step that voltage from the 15-18V range, down to the 0-5V range, such that it could be accurately and safely measured by the Arduino microcontroller that drove the user interface. As a solution, I opted to using a subtracting Op-Amp in order to linearly remap the range 15-18V to 0-5V. With the 15V being the expected voltage for a drained battery, this circuit allowed for the highest possible resolution for measuring battery voltage within the expected voltage range of the battery.

## Voltage-Mapper Design

The circuit was designed using [KiCad's](https://www.kicad.org/) Circuit Schematic software.

The formula derived for the resistors of a subtracting Op-Amp to map one voltage range to another:
```math
\begin{align*}
R_1&=\text{Reference Resistance} \\
R_2&=R_1\frac{V_{min}}{V_{ref}}\Big(1-\frac{V_{ref}-V_{min}}{V_{max}-V_{min}}\Big) \\
R_3&=R_1\frac{V_{min}}{V_{max}-V_{min}}
\end{align*}
```

<image src="../media/schematic.webp" width="512"></image>


## LTSpice Simulation

LTSpice was used to verify the circuit, as well as test safety considerations and reduce several failure points that could potentially damage the microcontrollers. To protect the Arduino against surges, and in the situation where the input voltage gets powered before the reference voltage, a Zener Diode was added to the circuit to limit the voltage to 4.7 Volts.

#### Circuit Verification

<image src="../media/spice.webp" width="512"></image>

This simulation was experimentally verified with the real circuit using university owned laboratory power supplies. Despite concerns about the errors of the chosen resistors, the circuit managed to accurately replicate what is seen in the sim within acceptable margins of error.

#### Circuit Surge Tests

These simulations were to verify that the circuit could handle any combination of reference and input voltages

<image src="../media/graph-safety.webp" width="512"></image>

These predictions were experimentally verified with the real circuit using university owned laboratory power supplies. Through testing, the circuit proved to handle sustained voltages of at least 30V for both the reference and input voltage, which is far more than the batteries are ever expected to output. Through this testing, circuit never exceeded the 4.7 output voltage threshold


## PCB Design

For this circuit, I drafted up a PCB design using [KiCad's](https://www.kicad.org/) PCB Editor, and generated [gerber files](kicad/gerber) that were ready to be sent out to PCB manufacturers.

<image src="../media/pcb.webp" width="512"></image> \
<image src="../media/model1.webp" width="256"></image>
<image src="../media/model2.webp" width="256"></image>

## Final Result

Ultimately, we opted with using a solder board instead of a PCB, as pictured below.

<image src="../media/board.webp" width="256"></image>

This was the circuit that was tested to experiementally verify predictions, and was ultimately the circuit used in our boat to measure battery voltage.

## What Could Have Been Improved

The biggest concern about this circuit was the Op-Amp damaging the Arduino in the situation where the Zener Diode failed or burned up. But as it turns out, the Zener diode ended up being unneccissary. Originally, the Op-Amp was being powered by the input voltage, which typically ranged from 15-18V. However, if the Op-Amp was instead powered by the reference voltage instead, which was a regulated 5V output from the ESCs, then it would successfully and safely limit the output voltage of the Op-Amp to a maximum of 5V, which would have provided a bit more resolution than the maximum of 4.7V that the Zener Diode provided.

Below outlines the LTSpice simulation of the improved circuit, which has not been experimentally verified.

<image src="../media/spice-better.webp" width="512"></image>
