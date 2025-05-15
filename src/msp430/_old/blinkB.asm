.msp430
.include "msp430x2xx.inc"


.set __STACK_END=0x0043FF
.set BIT0=0b00000001
.set BIT1=0b00000010
.set BIT2=0b00000100
.set BIT3=0b00001000
.set BIT4=0b00010000
.set BIT5=0b00100000
.set BIT6=0b01000000
.set BIT7=0b10000000



.org 0xf800
RESET:
            mov.w #WDTPW|WDTHOLD, &WDTCTL   ; Turn off watchdog timer.

MAIN:       mov.b   #BIT0, &P1DIR
OSCILLATE:  bis.b   #BIT0, &P1OUT
            nop
            nop
            nop
            bic.b   #BIT0, &P1OUT
            nop
            nop
            nop
            jmp     OSCILLATE

.org 0xfffe
            dw RESET            ; set reset vector to 'init' label
