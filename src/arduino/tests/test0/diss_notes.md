


00000000 <__vectors>:
    ...
   4:	0c 94 51 02 	jmp	0x4a2	; 0x4a2 <__vector_1>


000004a2 <__vector_1>:
 4a2:	1f 92       	2   push	r1
 4a4:	0f 92       	2   push	r0
 4a6:	0f b6       	1   in	r0, 0x3f	; 63
 4a8:	0f 92       	2   push	r0
 4aa:	11 24       	1   eor	r1, r1
 4ac:	8f 93       	2   push	r24
 4ae:	9f 93       	2   push	r25
 4b0:	80 91 b3 01 	2   lds	r24, 0x01B3	; 0x8001b3 <counter>
 4b4:	90 91 b4 01 	2   lds	r25, 0x01B4	; 0x8001b4 <counter+0x1>
 4b8:	01 96       	2   adiw	r24, 0x01	; 1
 4ba:	90 93 b4 01 	2   sts	0x01B4, r25	; 0x8001b4 <counter+0x1>
 4be:	80 93 b3 01 	2   sts	0x01B3, r24	; 0x8001b3 <counter>
 4c2:	9f 91       	2   pop	r25
 4c4:	8f 91       	2   pop	r24
 4c6:	0f 90       	2   pop	r0
 4c8:	0f be       	1   out	0x3f, r0	; 63
 4ca:	0f 90       	2   pop	r0
 4cc:	1f 90       	2   pop	r1
 4ce:	18 95       	4   reti


https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7810-Automotive-Microcontrollers-ATmega328P_Datasheet.pdf
# 6.7.1 Interrupt Response Time
The interrupt execution response for all the enabled AVR ® interrupts is __four clock cycles minimum__. After four clock cycles the program vector address for the actual interrupt handling routine is executed. During this four clock cycle period, the program counter is pushed onto the stack. The vector is normally a jump to the interrupt routine, and __this jump takes three clock cycles.__

If an interrupt occurs when the MCU is in sleep mode, the interrupt execution response time is increased by __four clock cycles__. This increase comes in addition to the start-up time from the selected sleep mode. A return from an interrupt handling routine takes __four clock cycles__. During these four clock cycles, the program counter (two bytes) is popped back from the stack, the stack pointer is incremented by two, and the I-bit in SREG is set


+4 clock cycles for interrupt
+3 for interrupt jump


1 1
2 1
3 1

1 2
2 2
3 2
4 2
5 2
6 2
7 2
8 2
9 2
10 2
11 2
12 2
13 2
14 2
15 2

4

3 + 15*2 + 4 = 37

37 + 4 + 3 = 44

44*2*2000 = 176000


176000 / 16MHz = 1.1%


Ahahaha!

Wow. I did the math horribly wrong.
I calculated for 2000 revolutions per *second*, not per minute.

Good heavens.

Alright, the actual calculation,

44*2*2000/60 = 2933

Now, it is going to be larger because I am accumulating a long long rather than an int.

2933 / 16MHz = 0.018%


=========================================
**DONT USE DELAY. USE MICROSECOND_DELAY**
=========================================





Questions:
Switches
Battery voltage range
Should we use op amp? Extra part
where to put fuse

15 to 18.4
