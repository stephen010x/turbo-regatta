
# MSP430 Turbo Regatta Source Code

## Dependancies
[TI MSP430 GCC TOOLCHAIN](https://www.ti.com/tool/MSP430-GCC-OPENSOURCE) \
[TI MSP430-Flasher](https://www.ti.com/tool/MSP430-FLASHER) \
[naken_asm assembler/disassembler](https://github.com/mikeakohn/naken_asm)

## How to Compile and Flash

1. Make sure you have installed all of the listed dependancies.
2. Check the makefile to make sure all the paths are correct for your system.
3. Run `make main` to build the project.
4. Run `make flash` to flash the hex to the msp430 board through USB.

## IMPORTANT!

Due to license restrictions, dis430 and hex430 from the [tools](tools) directory have not been included in this repository, as they are proprietary executables extracted from the TI CCSTUDIO Toolchain

In order to compile and flash, replace dis430 and hex430 in the [tools](tools) directory with the executables of the same names located in one of the sub-directories containing the MSP430 Compiler Toolchain within TI's [Code Composer Studio IDE](https://www.ti.com/tool/CCSTUDIO).
