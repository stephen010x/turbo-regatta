0000076c <__vector_2>:
     76c:	1f 92       	2   push	r1
     76e:	0f 92       	2   push	r0
     770:	0f b6       	1   in	r0, 0x3f	; 63
     772:	0f 92       	2   push	r0
     774:	11 24       	1   eor	r1, r1
     776:	8f 93       	2   push	r24
     778:	9f 93       	2   push	r25
     77a:	af 93       	2   push	r26
     77c:	bf 93       	2   push	r27
     77e:	80 91 28 01 	2   lds	r24, 0x0128	; 0x800128 <dummy2>
     782:	90 91 29 01 	2   lds	r25, 0x0129	; 0x800129 <dummy2+0x1>
     786:	a0 91 2a 01 	2   lds	r26, 0x012A	; 0x80012a <dummy2+0x2>
     78a:	b0 91 2b 01 	2   lds	r27, 0x012B	; 0x80012b <dummy2+0x3>
     78e:	01 96       	2   adiw	r24, 0x01	; 1
     790:	a1 1d       	2   adc	r26, r1
     792:	b1 1d       	2   adc	r27, r1
     794:	80 93 28 01 	2   sts	0x0128, r24	; 0x800128 <dummy2>
     798:	90 93 29 01 	2   sts	0x0129, r25	; 0x800129 <dummy2+0x1>
     79c:	a0 93 2a 01 	2   sts	0x012A, r26	; 0x80012a <dummy2+0x2>
     7a0:	b0 93 2b 01 	2   sts	0x012B, r27	; 0x80012b <dummy2+0x3>
     7a4:	bf 91       	2   pop	r27
     7a6:	af 91       	2   pop	r26
     7a8:	9f 91       	2   pop	r25
     7aa:	8f 91       	2   pop	r24
     7ac:	0f 90       	2   pop	r0
     7ae:	0f be       	1   out	0x3f, r0	; 63
     7b0:	0f 90       	2   pop	r0
     7b2:	1f 90       	2   pop	r1
     7b4:	18 95       	4   reti

+4 clock cycles for interrupt
+3 for interrupt vector jump



25*2 + 3*1 + 4+4+3

58 clock cycles.

61 clock cycles predicted

Discrepency of 3 clock cycles, which is approximately
3*2*2000/60 = 200 unaccounted for clock cycles per second.

lets say the system clock is 200 clock cycles, updated 1000 times per second,
that ends up being 200,000 clock cycles per second, or 1.25% of processing time.
