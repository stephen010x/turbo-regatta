.msp430
.include "msp430x2xx.inc"


.set BIT0=0b00000001
.set BIT1=0b00000010
.set BIT2=0b00000100
.set BIT3=0b00001000
.set BIT4=0b00010000
.set BIT5=0b00100000
.set BIT6=0b01000000
.set BIT7=0b10000000


.set LEDBITS=BIT0|BIT4|BIT6

.org 0xf800
start:
            mov.w   #WDTPW|WDTHOLD, &WDTCTL     ; Turn off watchdog timer.
            mov.b   #0xFF, &P2DIR     ; Set P1.0 and P1.6 as outputs.

main:                               ; Initial value for LEDs turns on the P1.0 LED and
            mov.w   #0x01, r8       ; keeps P1.6 turned off.
while1:     mov.b   r8, &P2OUT      ; Set LEDs to current value of r8 and toggle P1.0 and P1.6
            xor.b   #0xFF, r8
            mov.w   #60000, r9      ; Delay by decrementing r9 60000 times.
dloop:      dec     r9
            nop
            nop
            nop
            nop
            jnz     dloop
            jmp     while1          ; Repeat loop.

.org 0xfffe
            dw      start           ; set reset vector to 'init' label
