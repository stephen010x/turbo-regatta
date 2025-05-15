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
            mov.w   #WDTPW|WDTHOLD, &WDTCTL   ; Turn off watchdog timer.

            mov.b   #BIT1|BIT3|BIT5, &P2DIR

REPEAT:     bis.b   #BIT1, &P2OUT
            mov     #65000, R5

DELAY_0:    dec     R5
            jnz     DELAY_0
            bic.b   #BIT1, &P2OUT
            
            bis.b   #BIT5, &P2OUT
            mov     #65000, R6
            
DELAY_1:    dec     R6
            jnz     DELAY_1
            bic.b   #BIT5, &P2OUT

            bis.b   #BIT3, &P2OUT
            mov     #65000, R7

DELAY_2:    dec     R7
            jnz     DELAY_2
            bic.b   #BIT3, &P2OUT

            jmp     REPEAT
            

.org 0xfffe
            dw RESET            ; set reset vector to 'init' label
