.msp430                                         ; let assembler know target board
.include "msp430x2xx.inc"                       ; include board definitions
                                                ; blank line
                                                ; blank line
.set __STACK_END=0x0043FF                       ; set stack end. I don't use it
.set BIT0=1<<0                                  ; define BIT0 macro
.set BIT1=1<<1                                  ; define BIT1 macro
.set BIT2=1<<2                                  ; define BIT2 macro
.set BIT3=1<<3                                  ; define BIT3 macro
.set BIT4=1<<4                                  ; define BIT4 macro
.set BIT5=1<<5                                  ; define BIT5 macro
.set BIT6=1<<6                                  ; define BIT6 macro
.set BIT7=1<<7                                  ; define BIT7 macro
                                                ; blank line
                                                ; blank line
                                                ; blank line
                                                ; blank line
                                                ; blank line
                                                ; blank line
                                                ; blank line
.org 0xf800                                     ; place following at address 0xf800
RESET:      mov.w   #WDTPW|WDTHOLD, &WDTCTL     ; Turn off watchdog timer.
                                                ; blank line
MAIN:       bis.b   #BIT1|BIT3|BIT5, &P2DIR     ; Set P2.1, P2.3, P2.5 to output
            clr.b   &P1OUT                      ; zero out P1 port
            clr.b   &P2OUT                      ; zero out P2 port
            mov.b   #BIT3, &P2OUT               ; Enable green light
                                                ; blank line
            clr.b   r5                          ; clear register 5
LOOP:       mov.b   r5, r6                      ; save register 5 into 6
            mov.b   &P1IN, r5                   ; P1 pins input into r5
            bic.b   #~BIT3, r5                  ; Extract P1.3 from r5
            cmp     r5, r6                      ; compare old P1.3 with new P1.3
            jz      SWAP                        ; if high then jump to high
            xor.b   #BIT3, r5                   ; flip bit 3 in r5, I guess
            jmp     LOOP                        ; loop
                                                ; blank line
SWAP:       xor.b   #BIT1|BIT3, &P2OUT          ; swap red and green
            ;xor.b   #BIT3, r5                  ; I don't use this
            mov.w   #-1, r15                    ; Set r15 to biggest 16 bit value
delay:      dec     r15                         ; decrement r15
            nop                                 ; nop pad delay to last longer
            nop                                 ; more padding
            jnz     delay                       ; delay until r15 is zero
            jmp     LOOP                        ; return to main loop
                                                ; blank line
                                                ; blank line
.org 0xfffe                                     ; place following at address 0xfffe
            dw RESET                            ; set reset vector to point to RESET
