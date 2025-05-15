
test1/build/arduino.avr.uno/test1.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 5d 00 	jmp	0xba	; 0xba <__ctors_end>
       4:	0c 94 c0 07 	jmp	0xf80	; 0xf80 <__vector_1>
       8:	0c 94 9b 07 	jmp	0xf36	; 0xf36 <__vector_2>
       c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      10:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      14:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      18:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      1c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      20:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      24:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      28:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      2c:	0c 94 c4 05 	jmp	0xb88	; 0xb88 <__vector_11>
      30:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      34:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      38:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      3c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      40:	0c 94 22 05 	jmp	0xa44	; 0xa44 <__vector_16>
      44:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      48:	0c 94 92 05 	jmp	0xb24	; 0xb24 <__vector_18>
      4c:	0c 94 6c 05 	jmp	0xad8	; 0xad8 <__vector_19>
      50:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      54:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      58:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      5c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      60:	0c 94 80 06 	jmp	0xd00	; 0xd00 <__vector_24>
      64:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>

00000068 <__trampolines_end>:
      68:	00 00       	nop
      6a:	00 00       	nop
      6c:	24 00       	.word	0x0024	; ????
      6e:	27 00       	.word	0x0027	; ????
      70:	2a 00       	.word	0x002a	; ????

00000072 <port_to_output_PGM>:
      72:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

0000007c <digital_pin_to_port_PGM>:
      7c:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
      8c:	03 03 03 03                                         ....

00000090 <digital_pin_to_bit_mask_PGM>:
      90:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
      a0:	04 08 10 20                                         ... 

000000a4 <digital_pin_to_timer_PGM>:
      a4:	00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
      b4:	00 00 00 00                                         ....

000000b8 <__ctors_start>:
      b8:	e5 07       	cpc	r30, r21

000000ba <__ctors_end>:
      ba:	11 24       	eor	r1, r1
      bc:	1f be       	out	0x3f, r1	; 63
      be:	cf ef       	ldi	r28, 0xFF	; 255
      c0:	d8 e0       	ldi	r29, 0x08	; 8
      c2:	de bf       	out	0x3e, r29	; 62
      c4:	cd bf       	out	0x3d, r28	; 61

000000c6 <__do_copy_data>:
      c6:	11 e0       	ldi	r17, 0x01	; 1
      c8:	a0 e0       	ldi	r26, 0x00	; 0
      ca:	b1 e0       	ldi	r27, 0x01	; 1
      cc:	ea e1       	ldi	r30, 0x1A	; 26
      ce:	fb e1       	ldi	r31, 0x1B	; 27
      d0:	02 c0       	rjmp	.+4      	; 0xd6 <__do_copy_data+0x10>
      d2:	05 90       	lpm	r0, Z+
      d4:	0d 92       	st	X+, r0
      d6:	a8 33       	cpi	r26, 0x38	; 56
      d8:	b1 07       	cpc	r27, r17
      da:	d9 f7       	brne	.-10     	; 0xd2 <__do_copy_data+0xc>

000000dc <__do_clear_bss>:
      dc:	22 e0       	ldi	r18, 0x02	; 2
      de:	a8 e3       	ldi	r26, 0x38	; 56
      e0:	b1 e0       	ldi	r27, 0x01	; 1
      e2:	01 c0       	rjmp	.+2      	; 0xe6 <.do_clear_bss_start>

000000e4 <.do_clear_bss_loop>:
      e4:	1d 92       	st	X+, r1

000000e6 <.do_clear_bss_start>:
      e6:	aa 3b       	cpi	r26, 0xBA	; 186
      e8:	b2 07       	cpc	r27, r18
      ea:	e1 f7       	brne	.-8      	; 0xe4 <.do_clear_bss_loop>

000000ec <__do_global_ctors>:
      ec:	10 e0       	ldi	r17, 0x00	; 0
      ee:	cd e5       	ldi	r28, 0x5D	; 93
      f0:	d0 e0       	ldi	r29, 0x00	; 0
      f2:	04 c0       	rjmp	.+8      	; 0xfc <__do_global_ctors+0x10>
      f4:	21 97       	sbiw	r28, 0x01	; 1
      f6:	fe 01       	movw	r30, r28
      f8:	0e 94 a0 0a 	call	0x1540	; 0x1540 <__tablejump2__>
      fc:	cc 35       	cpi	r28, 0x5C	; 92
      fe:	d1 07       	cpc	r29, r17
     100:	c9 f7       	brne	.-14     	; 0xf4 <__do_global_ctors+0x8>
     102:	0e 94 2e 08 	call	0x105c	; 0x105c <main>
     106:	0c 94 8b 0d 	jmp	0x1b16	; 0x1b16 <_exit>

0000010a <__bad_interrupt>:
     10a:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

0000010e <digitalWrite>:
     10e:	90 e0       	ldi	r25, 0x00	; 0
     110:	fc 01       	movw	r30, r24
     112:	ec 55       	subi	r30, 0x5C	; 92
     114:	ff 4f       	sbci	r31, 0xFF	; 255
     116:	24 91       	lpm	r18, Z
     118:	fc 01       	movw	r30, r24
     11a:	e0 57       	subi	r30, 0x70	; 112
     11c:	ff 4f       	sbci	r31, 0xFF	; 255
     11e:	34 91       	lpm	r19, Z
     120:	fc 01       	movw	r30, r24
     122:	e4 58       	subi	r30, 0x84	; 132
     124:	ff 4f       	sbci	r31, 0xFF	; 255
     126:	e4 91       	lpm	r30, Z
     128:	ee 23       	and	r30, r30
     12a:	c9 f0       	breq	.+50     	; 0x15e <digitalWrite+0x50>
     12c:	22 23       	and	r18, r18
     12e:	39 f0       	breq	.+14     	; 0x13e <digitalWrite+0x30>
     130:	23 30       	cpi	r18, 0x03	; 3
     132:	01 f1       	breq	.+64     	; 0x174 <digitalWrite+0x66>
     134:	a8 f4       	brcc	.+42     	; 0x160 <digitalWrite+0x52>
     136:	21 30       	cpi	r18, 0x01	; 1
     138:	19 f1       	breq	.+70     	; 0x180 <digitalWrite+0x72>
     13a:	22 30       	cpi	r18, 0x02	; 2
     13c:	29 f1       	breq	.+74     	; 0x188 <digitalWrite+0x7a>
     13e:	f0 e0       	ldi	r31, 0x00	; 0
     140:	ee 0f       	add	r30, r30
     142:	ff 1f       	adc	r31, r31
     144:	ee 58       	subi	r30, 0x8E	; 142
     146:	ff 4f       	sbci	r31, 0xFF	; 255
     148:	a5 91       	lpm	r26, Z+
     14a:	b4 91       	lpm	r27, Z
     14c:	8f b7       	in	r24, 0x3f	; 63
     14e:	f8 94       	cli
     150:	ec 91       	ld	r30, X
     152:	61 11       	cpse	r22, r1
     154:	26 c0       	rjmp	.+76     	; 0x1a2 <digitalWrite+0x94>
     156:	30 95       	com	r19
     158:	3e 23       	and	r19, r30
     15a:	3c 93       	st	X, r19
     15c:	8f bf       	out	0x3f, r24	; 63
     15e:	08 95       	ret
     160:	27 30       	cpi	r18, 0x07	; 7
     162:	a9 f0       	breq	.+42     	; 0x18e <digitalWrite+0x80>
     164:	28 30       	cpi	r18, 0x08	; 8
     166:	c9 f0       	breq	.+50     	; 0x19a <digitalWrite+0x8c>
     168:	24 30       	cpi	r18, 0x04	; 4
     16a:	49 f7       	brne	.-46     	; 0x13e <digitalWrite+0x30>
     16c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     170:	8f 7d       	andi	r24, 0xDF	; 223
     172:	03 c0       	rjmp	.+6      	; 0x17a <digitalWrite+0x6c>
     174:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     178:	8f 77       	andi	r24, 0x7F	; 127
     17a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     17e:	df cf       	rjmp	.-66     	; 0x13e <digitalWrite+0x30>
     180:	84 b5       	in	r24, 0x24	; 36
     182:	8f 77       	andi	r24, 0x7F	; 127
     184:	84 bd       	out	0x24, r24	; 36
     186:	db cf       	rjmp	.-74     	; 0x13e <digitalWrite+0x30>
     188:	84 b5       	in	r24, 0x24	; 36
     18a:	8f 7d       	andi	r24, 0xDF	; 223
     18c:	fb cf       	rjmp	.-10     	; 0x184 <digitalWrite+0x76>
     18e:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     192:	8f 77       	andi	r24, 0x7F	; 127
     194:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     198:	d2 cf       	rjmp	.-92     	; 0x13e <digitalWrite+0x30>
     19a:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     19e:	8f 7d       	andi	r24, 0xDF	; 223
     1a0:	f9 cf       	rjmp	.-14     	; 0x194 <digitalWrite+0x86>
     1a2:	3e 2b       	or	r19, r30
     1a4:	da cf       	rjmp	.-76     	; 0x15a <digitalWrite+0x4c>

000001a6 <micros>:
     1a6:	3f b7       	in	r19, 0x3f	; 63
     1a8:	f8 94       	cli
     1aa:	80 91 00 02 	lds	r24, 0x0200	; 0x800200 <timer0_overflow_count>
     1ae:	90 91 01 02 	lds	r25, 0x0201	; 0x800201 <timer0_overflow_count+0x1>
     1b2:	a0 91 02 02 	lds	r26, 0x0202	; 0x800202 <timer0_overflow_count+0x2>
     1b6:	b0 91 03 02 	lds	r27, 0x0203	; 0x800203 <timer0_overflow_count+0x3>
     1ba:	26 b5       	in	r18, 0x26	; 38
     1bc:	a8 9b       	sbis	0x15, 0	; 21
     1be:	05 c0       	rjmp	.+10     	; 0x1ca <micros+0x24>
     1c0:	2f 3f       	cpi	r18, 0xFF	; 255
     1c2:	19 f0       	breq	.+6      	; 0x1ca <micros+0x24>
     1c4:	01 96       	adiw	r24, 0x01	; 1
     1c6:	a1 1d       	adc	r26, r1
     1c8:	b1 1d       	adc	r27, r1
     1ca:	3f bf       	out	0x3f, r19	; 63
     1cc:	ba 2f       	mov	r27, r26
     1ce:	a9 2f       	mov	r26, r25
     1d0:	98 2f       	mov	r25, r24
     1d2:	88 27       	eor	r24, r24
     1d4:	bc 01       	movw	r22, r24
     1d6:	cd 01       	movw	r24, r26
     1d8:	62 0f       	add	r22, r18
     1da:	71 1d       	adc	r23, r1
     1dc:	81 1d       	adc	r24, r1
     1de:	91 1d       	adc	r25, r1
     1e0:	42 e0       	ldi	r20, 0x02	; 2
     1e2:	66 0f       	add	r22, r22
     1e4:	77 1f       	adc	r23, r23
     1e6:	88 1f       	adc	r24, r24
     1e8:	99 1f       	adc	r25, r25
     1ea:	4a 95       	dec	r20
     1ec:	d1 f7       	brne	.-12     	; 0x1e2 <micros+0x3c>
     1ee:	08 95       	ret

000001f0 <_ZN5Print5writeEPKhj>:
     1f0:	af 92       	push	r10
     1f2:	bf 92       	push	r11
     1f4:	cf 92       	push	r12
     1f6:	df 92       	push	r13
     1f8:	ef 92       	push	r14
     1fa:	ff 92       	push	r15
     1fc:	0f 93       	push	r16
     1fe:	1f 93       	push	r17
     200:	cf 93       	push	r28
     202:	df 93       	push	r29
     204:	6c 01       	movw	r12, r24
     206:	7b 01       	movw	r14, r22
     208:	8b 01       	movw	r16, r22
     20a:	04 0f       	add	r16, r20
     20c:	15 1f       	adc	r17, r21
     20e:	eb 01       	movw	r28, r22
     210:	5e 01       	movw	r10, r28
     212:	ae 18       	sub	r10, r14
     214:	bf 08       	sbc	r11, r15
     216:	c0 17       	cp	r28, r16
     218:	d1 07       	cpc	r29, r17
     21a:	59 f0       	breq	.+22     	; 0x232 <_ZN5Print5writeEPKhj+0x42>
     21c:	69 91       	ld	r22, Y+
     21e:	d6 01       	movw	r26, r12
     220:	ed 91       	ld	r30, X+
     222:	fc 91       	ld	r31, X
     224:	01 90       	ld	r0, Z+
     226:	f0 81       	ld	r31, Z
     228:	e0 2d       	mov	r30, r0
     22a:	c6 01       	movw	r24, r12
     22c:	09 95       	icall
     22e:	89 2b       	or	r24, r25
     230:	79 f7       	brne	.-34     	; 0x210 <_ZN5Print5writeEPKhj+0x20>
     232:	c5 01       	movw	r24, r10
     234:	df 91       	pop	r29
     236:	cf 91       	pop	r28
     238:	1f 91       	pop	r17
     23a:	0f 91       	pop	r16
     23c:	ff 90       	pop	r15
     23e:	ef 90       	pop	r14
     240:	df 90       	pop	r13
     242:	cf 90       	pop	r12
     244:	bf 90       	pop	r11
     246:	af 90       	pop	r10
     248:	08 95       	ret

0000024a <_ZN14HardwareSerial17availableForWriteEv>:
     24a:	fc 01       	movw	r30, r24
     24c:	53 8d       	ldd	r21, Z+27	; 0x1b
     24e:	44 8d       	ldd	r20, Z+28	; 0x1c
     250:	25 2f       	mov	r18, r21
     252:	30 e0       	ldi	r19, 0x00	; 0
     254:	84 2f       	mov	r24, r20
     256:	90 e0       	ldi	r25, 0x00	; 0
     258:	82 1b       	sub	r24, r18
     25a:	93 0b       	sbc	r25, r19
     25c:	54 17       	cp	r21, r20
     25e:	10 f0       	brcs	.+4      	; 0x264 <_ZN14HardwareSerial17availableForWriteEv+0x1a>
     260:	cf 96       	adiw	r24, 0x3f	; 63
     262:	08 95       	ret
     264:	01 97       	sbiw	r24, 0x01	; 1
     266:	08 95       	ret

00000268 <_ZN14HardwareSerial4readEv>:
     268:	fc 01       	movw	r30, r24
     26a:	91 8d       	ldd	r25, Z+25	; 0x19
     26c:	82 8d       	ldd	r24, Z+26	; 0x1a
     26e:	98 17       	cp	r25, r24
     270:	61 f0       	breq	.+24     	; 0x28a <_ZN14HardwareSerial4readEv+0x22>
     272:	a2 8d       	ldd	r26, Z+26	; 0x1a
     274:	ae 0f       	add	r26, r30
     276:	bf 2f       	mov	r27, r31
     278:	b1 1d       	adc	r27, r1
     27a:	5d 96       	adiw	r26, 0x1d	; 29
     27c:	8c 91       	ld	r24, X
     27e:	92 8d       	ldd	r25, Z+26	; 0x1a
     280:	9f 5f       	subi	r25, 0xFF	; 255
     282:	9f 73       	andi	r25, 0x3F	; 63
     284:	92 8f       	std	Z+26, r25	; 0x1a
     286:	90 e0       	ldi	r25, 0x00	; 0
     288:	08 95       	ret
     28a:	8f ef       	ldi	r24, 0xFF	; 255
     28c:	9f ef       	ldi	r25, 0xFF	; 255
     28e:	08 95       	ret

00000290 <_ZN14HardwareSerial4peekEv>:
     290:	fc 01       	movw	r30, r24
     292:	91 8d       	ldd	r25, Z+25	; 0x19
     294:	82 8d       	ldd	r24, Z+26	; 0x1a
     296:	98 17       	cp	r25, r24
     298:	31 f0       	breq	.+12     	; 0x2a6 <_ZN14HardwareSerial4peekEv+0x16>
     29a:	82 8d       	ldd	r24, Z+26	; 0x1a
     29c:	e8 0f       	add	r30, r24
     29e:	f1 1d       	adc	r31, r1
     2a0:	85 8d       	ldd	r24, Z+29	; 0x1d
     2a2:	90 e0       	ldi	r25, 0x00	; 0
     2a4:	08 95       	ret
     2a6:	8f ef       	ldi	r24, 0xFF	; 255
     2a8:	9f ef       	ldi	r25, 0xFF	; 255
     2aa:	08 95       	ret

000002ac <_ZN14HardwareSerial9availableEv>:
     2ac:	fc 01       	movw	r30, r24
     2ae:	91 8d       	ldd	r25, Z+25	; 0x19
     2b0:	22 8d       	ldd	r18, Z+26	; 0x1a
     2b2:	89 2f       	mov	r24, r25
     2b4:	90 e0       	ldi	r25, 0x00	; 0
     2b6:	80 5c       	subi	r24, 0xC0	; 192
     2b8:	9f 4f       	sbci	r25, 0xFF	; 255
     2ba:	82 1b       	sub	r24, r18
     2bc:	91 09       	sbc	r25, r1
     2be:	8f 73       	andi	r24, 0x3F	; 63
     2c0:	99 27       	eor	r25, r25
     2c2:	08 95       	ret

000002c4 <_Z17Serial0_availablev>:
     2c4:	84 e0       	ldi	r24, 0x04	; 4
     2c6:	92 e0       	ldi	r25, 0x02	; 2
     2c8:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN14HardwareSerial9availableEv>
     2cc:	21 e0       	ldi	r18, 0x01	; 1
     2ce:	89 2b       	or	r24, r25
     2d0:	09 f4       	brne	.+2      	; 0x2d4 <_Z17Serial0_availablev+0x10>
     2d2:	20 e0       	ldi	r18, 0x00	; 0
     2d4:	82 2f       	mov	r24, r18
     2d6:	08 95       	ret

000002d8 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>:
     2d8:	fc 01       	movw	r30, r24
     2da:	a4 8d       	ldd	r26, Z+28	; 0x1c
     2dc:	a8 0f       	add	r26, r24
     2de:	b9 2f       	mov	r27, r25
     2e0:	b1 1d       	adc	r27, r1
     2e2:	a3 5a       	subi	r26, 0xA3	; 163
     2e4:	bf 4f       	sbci	r27, 0xFF	; 255
     2e6:	2c 91       	ld	r18, X
     2e8:	84 8d       	ldd	r24, Z+28	; 0x1c
     2ea:	90 e0       	ldi	r25, 0x00	; 0
     2ec:	01 96       	adiw	r24, 0x01	; 1
     2ee:	8f 73       	andi	r24, 0x3F	; 63
     2f0:	99 27       	eor	r25, r25
     2f2:	84 8f       	std	Z+28, r24	; 0x1c
     2f4:	a6 89       	ldd	r26, Z+22	; 0x16
     2f6:	b7 89       	ldd	r27, Z+23	; 0x17
     2f8:	2c 93       	st	X, r18
     2fa:	a0 89       	ldd	r26, Z+16	; 0x10
     2fc:	b1 89       	ldd	r27, Z+17	; 0x11
     2fe:	8c 91       	ld	r24, X
     300:	83 70       	andi	r24, 0x03	; 3
     302:	80 64       	ori	r24, 0x40	; 64
     304:	8c 93       	st	X, r24
     306:	93 8d       	ldd	r25, Z+27	; 0x1b
     308:	84 8d       	ldd	r24, Z+28	; 0x1c
     30a:	98 13       	cpse	r25, r24
     30c:	06 c0       	rjmp	.+12     	; 0x31a <_ZN14HardwareSerial17_tx_udr_empty_irqEv+0x42>
     30e:	02 88       	ldd	r0, Z+18	; 0x12
     310:	f3 89       	ldd	r31, Z+19	; 0x13
     312:	e0 2d       	mov	r30, r0
     314:	80 81       	ld	r24, Z
     316:	8f 7d       	andi	r24, 0xDF	; 223
     318:	80 83       	st	Z, r24
     31a:	08 95       	ret

0000031c <_ZN14HardwareSerial5writeEh>:
     31c:	ef 92       	push	r14
     31e:	ff 92       	push	r15
     320:	0f 93       	push	r16
     322:	1f 93       	push	r17
     324:	cf 93       	push	r28
     326:	df 93       	push	r29
     328:	ec 01       	movw	r28, r24
     32a:	81 e0       	ldi	r24, 0x01	; 1
     32c:	88 8f       	std	Y+24, r24	; 0x18
     32e:	9b 8d       	ldd	r25, Y+27	; 0x1b
     330:	8c 8d       	ldd	r24, Y+28	; 0x1c
     332:	98 13       	cpse	r25, r24
     334:	1a c0       	rjmp	.+52     	; 0x36a <_ZN14HardwareSerial5writeEh+0x4e>
     336:	e8 89       	ldd	r30, Y+16	; 0x10
     338:	f9 89       	ldd	r31, Y+17	; 0x11
     33a:	80 81       	ld	r24, Z
     33c:	85 ff       	sbrs	r24, 5
     33e:	15 c0       	rjmp	.+42     	; 0x36a <_ZN14HardwareSerial5writeEh+0x4e>
     340:	9f b7       	in	r25, 0x3f	; 63
     342:	f8 94       	cli
     344:	ee 89       	ldd	r30, Y+22	; 0x16
     346:	ff 89       	ldd	r31, Y+23	; 0x17
     348:	60 83       	st	Z, r22
     34a:	e8 89       	ldd	r30, Y+16	; 0x10
     34c:	f9 89       	ldd	r31, Y+17	; 0x11
     34e:	80 81       	ld	r24, Z
     350:	83 70       	andi	r24, 0x03	; 3
     352:	80 64       	ori	r24, 0x40	; 64
     354:	80 83       	st	Z, r24
     356:	9f bf       	out	0x3f, r25	; 63
     358:	81 e0       	ldi	r24, 0x01	; 1
     35a:	90 e0       	ldi	r25, 0x00	; 0
     35c:	df 91       	pop	r29
     35e:	cf 91       	pop	r28
     360:	1f 91       	pop	r17
     362:	0f 91       	pop	r16
     364:	ff 90       	pop	r15
     366:	ef 90       	pop	r14
     368:	08 95       	ret
     36a:	f6 2e       	mov	r15, r22
     36c:	0b 8d       	ldd	r16, Y+27	; 0x1b
     36e:	10 e0       	ldi	r17, 0x00	; 0
     370:	0f 5f       	subi	r16, 0xFF	; 255
     372:	1f 4f       	sbci	r17, 0xFF	; 255
     374:	0f 73       	andi	r16, 0x3F	; 63
     376:	11 27       	eor	r17, r17
     378:	e0 2e       	mov	r14, r16
     37a:	8c 8d       	ldd	r24, Y+28	; 0x1c
     37c:	8e 11       	cpse	r24, r14
     37e:	0c c0       	rjmp	.+24     	; 0x398 <_ZN14HardwareSerial5writeEh+0x7c>
     380:	0f b6       	in	r0, 0x3f	; 63
     382:	07 fc       	sbrc	r0, 7
     384:	fa cf       	rjmp	.-12     	; 0x37a <_ZN14HardwareSerial5writeEh+0x5e>
     386:	e8 89       	ldd	r30, Y+16	; 0x10
     388:	f9 89       	ldd	r31, Y+17	; 0x11
     38a:	80 81       	ld	r24, Z
     38c:	85 ff       	sbrs	r24, 5
     38e:	f5 cf       	rjmp	.-22     	; 0x37a <_ZN14HardwareSerial5writeEh+0x5e>
     390:	ce 01       	movw	r24, r28
     392:	0e 94 6c 01 	call	0x2d8	; 0x2d8 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     396:	f1 cf       	rjmp	.-30     	; 0x37a <_ZN14HardwareSerial5writeEh+0x5e>
     398:	eb 8d       	ldd	r30, Y+27	; 0x1b
     39a:	ec 0f       	add	r30, r28
     39c:	fd 2f       	mov	r31, r29
     39e:	f1 1d       	adc	r31, r1
     3a0:	e3 5a       	subi	r30, 0xA3	; 163
     3a2:	ff 4f       	sbci	r31, 0xFF	; 255
     3a4:	f0 82       	st	Z, r15
     3a6:	9f b7       	in	r25, 0x3f	; 63
     3a8:	f8 94       	cli
     3aa:	0b 8f       	std	Y+27, r16	; 0x1b
     3ac:	ea 89       	ldd	r30, Y+18	; 0x12
     3ae:	fb 89       	ldd	r31, Y+19	; 0x13
     3b0:	80 81       	ld	r24, Z
     3b2:	80 62       	ori	r24, 0x20	; 32
     3b4:	cf cf       	rjmp	.-98     	; 0x354 <_ZN14HardwareSerial5writeEh+0x38>

000003b6 <_ZN14HardwareSerial5flushEv>:
     3b6:	cf 93       	push	r28
     3b8:	df 93       	push	r29
     3ba:	ec 01       	movw	r28, r24
     3bc:	88 8d       	ldd	r24, Y+24	; 0x18
     3be:	88 23       	and	r24, r24
     3c0:	b9 f0       	breq	.+46     	; 0x3f0 <_ZN14HardwareSerial5flushEv+0x3a>
     3c2:	aa 89       	ldd	r26, Y+18	; 0x12
     3c4:	bb 89       	ldd	r27, Y+19	; 0x13
     3c6:	e8 89       	ldd	r30, Y+16	; 0x10
     3c8:	f9 89       	ldd	r31, Y+17	; 0x11
     3ca:	8c 91       	ld	r24, X
     3cc:	85 fd       	sbrc	r24, 5
     3ce:	03 c0       	rjmp	.+6      	; 0x3d6 <_ZN14HardwareSerial5flushEv+0x20>
     3d0:	80 81       	ld	r24, Z
     3d2:	86 fd       	sbrc	r24, 6
     3d4:	0d c0       	rjmp	.+26     	; 0x3f0 <_ZN14HardwareSerial5flushEv+0x3a>
     3d6:	0f b6       	in	r0, 0x3f	; 63
     3d8:	07 fc       	sbrc	r0, 7
     3da:	f7 cf       	rjmp	.-18     	; 0x3ca <_ZN14HardwareSerial5flushEv+0x14>
     3dc:	8c 91       	ld	r24, X
     3de:	85 ff       	sbrs	r24, 5
     3e0:	f2 cf       	rjmp	.-28     	; 0x3c6 <_ZN14HardwareSerial5flushEv+0x10>
     3e2:	80 81       	ld	r24, Z
     3e4:	85 ff       	sbrs	r24, 5
     3e6:	ed cf       	rjmp	.-38     	; 0x3c2 <_ZN14HardwareSerial5flushEv+0xc>
     3e8:	ce 01       	movw	r24, r28
     3ea:	0e 94 6c 01 	call	0x2d8	; 0x2d8 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     3ee:	e9 cf       	rjmp	.-46     	; 0x3c2 <_ZN14HardwareSerial5flushEv+0xc>
     3f0:	df 91       	pop	r29
     3f2:	cf 91       	pop	r28
     3f4:	08 95       	ret

000003f6 <_Z14serialEventRunv>:
     3f6:	80 e0       	ldi	r24, 0x00	; 0
     3f8:	90 e0       	ldi	r25, 0x00	; 0
     3fa:	89 2b       	or	r24, r25
     3fc:	29 f0       	breq	.+10     	; 0x408 <__LOCK_REGION_LENGTH__+0x8>
     3fe:	0e 94 62 01 	call	0x2c4	; 0x2c4 <_Z17Serial0_availablev>
     402:	81 11       	cpse	r24, r1
     404:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
     408:	08 95       	ret

0000040a <_ZN5Servo5writeEi>:
     40a:	cf 92       	push	r12
     40c:	df 92       	push	r13
     40e:	ef 92       	push	r14
     410:	ff 92       	push	r15
     412:	cf 93       	push	r28
     414:	df 93       	push	r29
     416:	ec 01       	movw	r28, r24
     418:	60 32       	cpi	r22, 0x20	; 32
     41a:	82 e0       	ldi	r24, 0x02	; 2
     41c:	78 07       	cpc	r23, r24
     41e:	b4 f5       	brge	.+108    	; 0x48c <_ZN5Servo5writeEi+0x82>
     420:	89 81       	ldd	r24, Y+1	; 0x01
     422:	b8 e8       	ldi	r27, 0x88	; 136
     424:	cb 2e       	mov	r12, r27
     426:	d1 2c       	mov	r13, r1
     428:	c8 1a       	sub	r12, r24
     42a:	d1 08       	sbc	r13, r1
     42c:	87 fd       	sbrc	r24, 7
     42e:	d3 94       	inc	r13
     430:	cc 0c       	add	r12, r12
     432:	dd 1c       	adc	r13, r13
     434:	cc 0c       	add	r12, r12
     436:	dd 1c       	adc	r13, r13
     438:	0d 2c       	mov	r0, r13
     43a:	00 0c       	add	r0, r0
     43c:	ee 08       	sbc	r14, r14
     43e:	ff 08       	sbc	r15, r15
     440:	8a 81       	ldd	r24, Y+2	; 0x02
     442:	28 e5       	ldi	r18, 0x58	; 88
     444:	32 e0       	ldi	r19, 0x02	; 2
     446:	28 1b       	sub	r18, r24
     448:	31 09       	sbc	r19, r1
     44a:	87 fd       	sbrc	r24, 7
     44c:	33 95       	inc	r19
     44e:	22 0f       	add	r18, r18
     450:	33 1f       	adc	r19, r19
     452:	22 0f       	add	r18, r18
     454:	33 1f       	adc	r19, r19
     456:	03 2e       	mov	r0, r19
     458:	00 0c       	add	r0, r0
     45a:	44 0b       	sbc	r20, r20
     45c:	55 0b       	sbc	r21, r21
     45e:	2c 19       	sub	r18, r12
     460:	3d 09       	sbc	r19, r13
     462:	4e 09       	sbc	r20, r14
     464:	5f 09       	sbc	r21, r15
     466:	db 01       	movw	r26, r22
     468:	65 3b       	cpi	r22, 0xB5	; 181
     46a:	71 05       	cpc	r23, r1
     46c:	14 f0       	brlt	.+4      	; 0x472 <_ZN5Servo5writeEi+0x68>
     46e:	a4 eb       	ldi	r26, 0xB4	; 180
     470:	b0 e0       	ldi	r27, 0x00	; 0
     472:	0e 94 4f 0a 	call	0x149e	; 0x149e <__mulshisi3>
     476:	24 eb       	ldi	r18, 0xB4	; 180
     478:	30 e0       	ldi	r19, 0x00	; 0
     47a:	40 e0       	ldi	r20, 0x00	; 0
     47c:	50 e0       	ldi	r21, 0x00	; 0
     47e:	0e 94 25 0a 	call	0x144a	; 0x144a <__divmodsi4>
     482:	c2 0e       	add	r12, r18
     484:	d3 1e       	adc	r13, r19
     486:	e4 1e       	adc	r14, r20
     488:	f5 1e       	adc	r15, r21
     48a:	b6 01       	movw	r22, r12
     48c:	e8 81       	ld	r30, Y
     48e:	ec 30       	cpi	r30, 0x0C	; 12
     490:	70 f5       	brcc	.+92     	; 0x4ee <_ZN5Servo5writeEi+0xe4>
     492:	29 81       	ldd	r18, Y+1	; 0x01
     494:	88 e8       	ldi	r24, 0x88	; 136
     496:	90 e0       	ldi	r25, 0x00	; 0
     498:	82 1b       	sub	r24, r18
     49a:	91 09       	sbc	r25, r1
     49c:	27 fd       	sbrc	r18, 7
     49e:	93 95       	inc	r25
     4a0:	88 0f       	add	r24, r24
     4a2:	99 1f       	adc	r25, r25
     4a4:	88 0f       	add	r24, r24
     4a6:	99 1f       	adc	r25, r25
     4a8:	68 17       	cp	r22, r24
     4aa:	79 07       	cpc	r23, r25
     4ac:	7c f0       	brlt	.+30     	; 0x4cc <_ZN5Servo5writeEi+0xc2>
     4ae:	2a 81       	ldd	r18, Y+2	; 0x02
     4b0:	88 e5       	ldi	r24, 0x58	; 88
     4b2:	92 e0       	ldi	r25, 0x02	; 2
     4b4:	82 1b       	sub	r24, r18
     4b6:	91 09       	sbc	r25, r1
     4b8:	27 fd       	sbrc	r18, 7
     4ba:	93 95       	inc	r25
     4bc:	88 0f       	add	r24, r24
     4be:	99 1f       	adc	r25, r25
     4c0:	88 0f       	add	r24, r24
     4c2:	99 1f       	adc	r25, r25
     4c4:	68 17       	cp	r22, r24
     4c6:	79 07       	cpc	r23, r25
     4c8:	0c f4       	brge	.+2      	; 0x4cc <_ZN5Servo5writeEi+0xc2>
     4ca:	cb 01       	movw	r24, r22
     4cc:	02 97       	sbiw	r24, 0x02	; 2
     4ce:	88 0f       	add	r24, r24
     4d0:	99 1f       	adc	r25, r25
     4d2:	4f b7       	in	r20, 0x3f	; 63
     4d4:	f8 94       	cli
     4d6:	2e 2f       	mov	r18, r30
     4d8:	30 e0       	ldi	r19, 0x00	; 0
     4da:	f9 01       	movw	r30, r18
     4dc:	ee 0f       	add	r30, r30
     4de:	ff 1f       	adc	r31, r31
     4e0:	e2 0f       	add	r30, r18
     4e2:	f3 1f       	adc	r31, r19
     4e4:	e9 52       	subi	r30, 0x29	; 41
     4e6:	fe 4f       	sbci	r31, 0xFE	; 254
     4e8:	92 83       	std	Z+2, r25	; 0x02
     4ea:	81 83       	std	Z+1, r24	; 0x01
     4ec:	4f bf       	out	0x3f, r20	; 63
     4ee:	df 91       	pop	r29
     4f0:	cf 91       	pop	r28
     4f2:	ff 90       	pop	r15
     4f4:	ef 90       	pop	r14
     4f6:	df 90       	pop	r13
     4f8:	cf 90       	pop	r12
     4fa:	08 95       	ret

000004fc <_ZN5Servo6attachEi>:
     4fc:	cf 93       	push	r28
     4fe:	df 93       	push	r29
     500:	dc 01       	movw	r26, r24
     502:	8c 91       	ld	r24, X
     504:	8c 30       	cpi	r24, 0x0C	; 12
     506:	08 f0       	brcs	.+2      	; 0x50a <_ZN5Servo6attachEi+0xe>
     508:	6d c0       	rjmp	.+218    	; 0x5e4 <_ZN5Servo6attachEi+0xe8>
     50a:	cb 01       	movw	r24, r22
     50c:	fb 01       	movw	r30, r22
     50e:	e0 57       	subi	r30, 0x70	; 112
     510:	ff 4f       	sbci	r31, 0xFF	; 255
     512:	24 91       	lpm	r18, Z
     514:	84 58       	subi	r24, 0x84	; 132
     516:	9f 4f       	sbci	r25, 0xFF	; 255
     518:	fc 01       	movw	r30, r24
     51a:	84 91       	lpm	r24, Z
     51c:	88 23       	and	r24, r24
     51e:	99 f0       	breq	.+38     	; 0x546 <_ZN5Servo6attachEi+0x4a>
     520:	90 e0       	ldi	r25, 0x00	; 0
     522:	88 0f       	add	r24, r24
     524:	99 1f       	adc	r25, r25
     526:	fc 01       	movw	r30, r24
     528:	e8 59       	subi	r30, 0x98	; 152
     52a:	ff 4f       	sbci	r31, 0xFF	; 255
     52c:	c5 91       	lpm	r28, Z+
     52e:	d4 91       	lpm	r29, Z
     530:	fc 01       	movw	r30, r24
     532:	ee 58       	subi	r30, 0x8E	; 142
     534:	ff 4f       	sbci	r31, 0xFF	; 255
     536:	85 91       	lpm	r24, Z+
     538:	94 91       	lpm	r25, Z
     53a:	8f b7       	in	r24, 0x3f	; 63
     53c:	f8 94       	cli
     53e:	e8 81       	ld	r30, Y
     540:	e2 2b       	or	r30, r18
     542:	e8 83       	st	Y, r30
     544:	8f bf       	out	0x3f, r24	; 63
     546:	8c 91       	ld	r24, X
     548:	28 2f       	mov	r18, r24
     54a:	30 e0       	ldi	r19, 0x00	; 0
     54c:	f9 01       	movw	r30, r18
     54e:	ee 0f       	add	r30, r30
     550:	ff 1f       	adc	r31, r31
     552:	e2 0f       	add	r30, r18
     554:	f3 1f       	adc	r31, r19
     556:	e9 52       	subi	r30, 0x29	; 41
     558:	fe 4f       	sbci	r31, 0xFE	; 254
     55a:	96 2f       	mov	r25, r22
     55c:	9f 73       	andi	r25, 0x3F	; 63
     55e:	60 81       	ld	r22, Z
     560:	60 7c       	andi	r22, 0xC0	; 192
     562:	69 2b       	or	r22, r25
     564:	60 83       	st	Z, r22
     566:	11 96       	adiw	r26, 0x01	; 1
     568:	1c 92       	st	X, r1
     56a:	11 97       	sbiw	r26, 0x01	; 1
     56c:	12 96       	adiw	r26, 0x02	; 2
     56e:	1c 92       	st	X, r1
     570:	12 97       	sbiw	r26, 0x02	; 2
     572:	2c e0       	ldi	r18, 0x0C	; 12
     574:	62 2f       	mov	r22, r18
     576:	0e 94 88 0a 	call	0x1510	; 0x1510 <__udivmodqi4>
     57a:	82 9f       	mul	r24, r18
     57c:	b0 01       	movw	r22, r0
     57e:	11 24       	eor	r1, r1
     580:	30 e0       	ldi	r19, 0x00	; 0
     582:	20 e0       	ldi	r18, 0x00	; 0
     584:	ab 01       	movw	r20, r22
     586:	42 0f       	add	r20, r18
     588:	53 1f       	adc	r21, r19
     58a:	fa 01       	movw	r30, r20
     58c:	ee 0f       	add	r30, r30
     58e:	ff 1f       	adc	r31, r31
     590:	e4 0f       	add	r30, r20
     592:	f5 1f       	adc	r31, r21
     594:	e9 52       	subi	r30, 0x29	; 41
     596:	fe 4f       	sbci	r31, 0xFE	; 254
     598:	90 81       	ld	r25, Z
     59a:	96 fd       	sbrc	r25, 6
     59c:	16 c0       	rjmp	.+44     	; 0x5ca <_ZN5Servo6attachEi+0xce>
     59e:	2f 5f       	subi	r18, 0xFF	; 255
     5a0:	3f 4f       	sbci	r19, 0xFF	; 255
     5a2:	2c 30       	cpi	r18, 0x0C	; 12
     5a4:	31 05       	cpc	r19, r1
     5a6:	71 f7       	brne	.-36     	; 0x584 <_ZN5Servo6attachEi+0x88>
     5a8:	81 11       	cpse	r24, r1
     5aa:	0f c0       	rjmp	.+30     	; 0x5ca <_ZN5Servo6attachEi+0xce>
     5ac:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     5b0:	82 e0       	ldi	r24, 0x02	; 2
     5b2:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     5b6:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     5ba:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     5be:	b1 9a       	sbi	0x16, 1	; 22
     5c0:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     5c4:	82 60       	ori	r24, 0x02	; 2
     5c6:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     5ca:	ec 91       	ld	r30, X
     5cc:	8e 2f       	mov	r24, r30
     5ce:	90 e0       	ldi	r25, 0x00	; 0
     5d0:	fc 01       	movw	r30, r24
     5d2:	ee 0f       	add	r30, r30
     5d4:	ff 1f       	adc	r31, r31
     5d6:	e8 0f       	add	r30, r24
     5d8:	f9 1f       	adc	r31, r25
     5da:	e9 52       	subi	r30, 0x29	; 41
     5dc:	fe 4f       	sbci	r31, 0xFE	; 254
     5de:	80 81       	ld	r24, Z
     5e0:	80 64       	ori	r24, 0x40	; 64
     5e2:	80 83       	st	Z, r24
     5e4:	8c 91       	ld	r24, X
     5e6:	df 91       	pop	r29
     5e8:	cf 91       	pop	r28
     5ea:	08 95       	ret

000005ec <twi_handleTimeout>:
     5ec:	1f 93       	push	r17
     5ee:	cf 93       	push	r28
     5f0:	df 93       	push	r29
     5f2:	c1 e0       	ldi	r28, 0x01	; 1
     5f4:	c0 93 6a 01 	sts	0x016A, r28	; 0x80016a <twi_timed_out_flag>
     5f8:	88 23       	and	r24, r24
     5fa:	99 f1       	breq	.+102    	; 0x662 <twi_handleTimeout+0x76>
     5fc:	d0 91 b8 00 	lds	r29, 0x00B8	; 0x8000b8 <__DATA_REGION_ORIGIN__+0x58>
     600:	10 91 ba 00 	lds	r17, 0x00BA	; 0x8000ba <__DATA_REGION_ORIGIN__+0x5a>
     604:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     608:	8a 7b       	andi	r24, 0xBA	; 186
     60a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     60e:	60 e0       	ldi	r22, 0x00	; 0
     610:	82 e1       	ldi	r24, 0x12	; 18
     612:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     616:	60 e0       	ldi	r22, 0x00	; 0
     618:	83 e1       	ldi	r24, 0x13	; 19
     61a:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     61e:	10 92 af 01 	sts	0x01AF, r1	; 0x8001af <twi_state>
     622:	c0 93 b1 01 	sts	0x01B1, r28	; 0x8001b1 <twi_sendStop>
     626:	10 92 b0 01 	sts	0x01B0, r1	; 0x8001b0 <twi_inRepStart>
     62a:	61 e0       	ldi	r22, 0x01	; 1
     62c:	82 e1       	ldi	r24, 0x12	; 18
     62e:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     632:	61 e0       	ldi	r22, 0x01	; 1
     634:	83 e1       	ldi	r24, 0x13	; 19
     636:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     63a:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__DATA_REGION_ORIGIN__+0x59>
     63e:	8e 7f       	andi	r24, 0xFE	; 254
     640:	80 93 b9 00 	sts	0x00B9, r24	; 0x8000b9 <__DATA_REGION_ORIGIN__+0x59>
     644:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__DATA_REGION_ORIGIN__+0x59>
     648:	8d 7f       	andi	r24, 0xFD	; 253
     64a:	80 93 b9 00 	sts	0x00B9, r24	; 0x8000b9 <__DATA_REGION_ORIGIN__+0x59>
     64e:	88 e4       	ldi	r24, 0x48	; 72
     650:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__DATA_REGION_ORIGIN__+0x58>
     654:	85 e4       	ldi	r24, 0x45	; 69
     656:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     65a:	10 93 ba 00 	sts	0x00BA, r17	; 0x8000ba <__DATA_REGION_ORIGIN__+0x5a>
     65e:	d0 93 b8 00 	sts	0x00B8, r29	; 0x8000b8 <__DATA_REGION_ORIGIN__+0x58>
     662:	df 91       	pop	r29
     664:	cf 91       	pop	r28
     666:	1f 91       	pop	r17
     668:	08 95       	ret

0000066a <twi_transmit>:
     66a:	20 91 8b 01 	lds	r18, 0x018B	; 0x80018b <twi_txBufferLength>
     66e:	26 0f       	add	r18, r22
     670:	33 27       	eor	r19, r19
     672:	33 1f       	adc	r19, r19
     674:	21 32       	cpi	r18, 0x21	; 33
     676:	31 05       	cpc	r19, r1
     678:	ec f4       	brge	.+58     	; 0x6b4 <twi_transmit+0x4a>
     67a:	20 91 af 01 	lds	r18, 0x01AF	; 0x8001af <twi_state>
     67e:	fc 01       	movw	r30, r24
     680:	90 e0       	ldi	r25, 0x00	; 0
     682:	80 e0       	ldi	r24, 0x00	; 0
     684:	24 30       	cpi	r18, 0x04	; 4
     686:	69 f0       	breq	.+26     	; 0x6a2 <twi_transmit+0x38>
     688:	82 e0       	ldi	r24, 0x02	; 2
     68a:	08 95       	ret
     68c:	a0 91 8b 01 	lds	r26, 0x018B	; 0x80018b <twi_txBufferLength>
     690:	21 91       	ld	r18, Z+
     692:	ac 01       	movw	r20, r24
     694:	45 59       	subi	r20, 0x95	; 149
     696:	5e 4f       	sbci	r21, 0xFE	; 254
     698:	a4 0f       	add	r26, r20
     69a:	b5 2f       	mov	r27, r21
     69c:	b1 1d       	adc	r27, r1
     69e:	2c 93       	st	X, r18
     6a0:	01 96       	adiw	r24, 0x01	; 1
     6a2:	86 17       	cp	r24, r22
     6a4:	98 f3       	brcs	.-26     	; 0x68c <twi_transmit+0x22>
     6a6:	80 91 8b 01 	lds	r24, 0x018B	; 0x80018b <twi_txBufferLength>
     6aa:	68 0f       	add	r22, r24
     6ac:	60 93 8b 01 	sts	0x018B, r22	; 0x80018b <twi_txBufferLength>
     6b0:	80 e0       	ldi	r24, 0x00	; 0
     6b2:	08 95       	ret
     6b4:	81 e0       	ldi	r24, 0x01	; 1
     6b6:	08 95       	ret

000006b8 <_ZN7TwoWire5flushEv>:
     6b8:	08 95       	ret

000006ba <_ZN7TwoWire4peekEv>:
     6ba:	8f ef       	ldi	r24, 0xFF	; 255
     6bc:	9f ef       	ldi	r25, 0xFF	; 255
     6be:	08 95       	ret

000006c0 <_ZN7TwoWire4readEv>:
     6c0:	8f ef       	ldi	r24, 0xFF	; 255
     6c2:	9f ef       	ldi	r25, 0xFF	; 255
     6c4:	08 95       	ret

000006c6 <_ZN7TwoWire9availableEv>:
     6c6:	80 91 64 01 	lds	r24, 0x0164	; 0x800164 <_ZN7TwoWire13rxBufferIndexE>
     6ca:	90 e0       	ldi	r25, 0x00	; 0
     6cc:	91 95       	neg	r25
     6ce:	81 95       	neg	r24
     6d0:	91 09       	sbc	r25, r1
     6d2:	08 95       	ret

000006d4 <_ZN7TwoWire5writeEPKhj>:
     6d4:	cf 92       	push	r12
     6d6:	df 92       	push	r13
     6d8:	ef 92       	push	r14
     6da:	ff 92       	push	r15
     6dc:	0f 93       	push	r16
     6de:	1f 93       	push	r17
     6e0:	cf 93       	push	r28
     6e2:	df 93       	push	r29
     6e4:	7c 01       	movw	r14, r24
     6e6:	cb 01       	movw	r24, r22
     6e8:	8a 01       	movw	r16, r20
     6ea:	20 91 63 01 	lds	r18, 0x0163	; 0x800163 <_ZN7TwoWire12transmittingE>
     6ee:	22 23       	and	r18, r18
     6f0:	89 f0       	breq	.+34     	; 0x714 <_ZN7TwoWire5writeEPKhj+0x40>
     6f2:	eb 01       	movw	r28, r22
     6f4:	6b 01       	movw	r12, r22
     6f6:	c4 0e       	add	r12, r20
     6f8:	d5 1e       	adc	r13, r21
     6fa:	cc 15       	cp	r28, r12
     6fc:	dd 05       	cpc	r29, r13
     6fe:	69 f0       	breq	.+26     	; 0x71a <_ZN7TwoWire5writeEPKhj+0x46>
     700:	69 91       	ld	r22, Y+
     702:	d7 01       	movw	r26, r14
     704:	ed 91       	ld	r30, X+
     706:	fc 91       	ld	r31, X
     708:	01 90       	ld	r0, Z+
     70a:	f0 81       	ld	r31, Z
     70c:	e0 2d       	mov	r30, r0
     70e:	c7 01       	movw	r24, r14
     710:	09 95       	icall
     712:	f3 cf       	rjmp	.-26     	; 0x6fa <_ZN7TwoWire5writeEPKhj+0x26>
     714:	64 2f       	mov	r22, r20
     716:	0e 94 35 03 	call	0x66a	; 0x66a <twi_transmit>
     71a:	c8 01       	movw	r24, r16
     71c:	df 91       	pop	r29
     71e:	cf 91       	pop	r28
     720:	1f 91       	pop	r17
     722:	0f 91       	pop	r16
     724:	ff 90       	pop	r15
     726:	ef 90       	pop	r14
     728:	df 90       	pop	r13
     72a:	cf 90       	pop	r12
     72c:	08 95       	ret

0000072e <_ZN7TwoWire5writeEh>:
     72e:	cf 93       	push	r28
     730:	df 93       	push	r29
     732:	1f 92       	push	r1
     734:	cd b7       	in	r28, 0x3d	; 61
     736:	de b7       	in	r29, 0x3e	; 62
     738:	69 83       	std	Y+1, r22	; 0x01
     73a:	20 91 63 01 	lds	r18, 0x0163	; 0x800163 <_ZN7TwoWire12transmittingE>
     73e:	22 23       	and	r18, r18
     740:	f9 f0       	breq	.+62     	; 0x780 <_ZN7TwoWire5writeEh+0x52>
     742:	20 91 62 01 	lds	r18, 0x0162	; 0x800162 <_ZN7TwoWire14txBufferLengthE>
     746:	20 32       	cpi	r18, 0x20	; 32
     748:	58 f0       	brcs	.+22     	; 0x760 <_ZN7TwoWire5writeEh+0x32>
     74a:	21 e0       	ldi	r18, 0x01	; 1
     74c:	30 e0       	ldi	r19, 0x00	; 0
     74e:	fc 01       	movw	r30, r24
     750:	33 83       	std	Z+3, r19	; 0x03
     752:	22 83       	std	Z+2, r18	; 0x02
     754:	90 e0       	ldi	r25, 0x00	; 0
     756:	80 e0       	ldi	r24, 0x00	; 0
     758:	0f 90       	pop	r0
     75a:	df 91       	pop	r29
     75c:	cf 91       	pop	r28
     75e:	08 95       	ret
     760:	80 91 61 01 	lds	r24, 0x0161	; 0x800161 <_ZN7TwoWire13txBufferIndexE>
     764:	e8 2f       	mov	r30, r24
     766:	f0 e0       	ldi	r31, 0x00	; 0
     768:	ef 5b       	subi	r30, 0xBF	; 191
     76a:	fe 4f       	sbci	r31, 0xFE	; 254
     76c:	99 81       	ldd	r25, Y+1	; 0x01
     76e:	90 83       	st	Z, r25
     770:	8f 5f       	subi	r24, 0xFF	; 255
     772:	80 93 61 01 	sts	0x0161, r24	; 0x800161 <_ZN7TwoWire13txBufferIndexE>
     776:	80 93 62 01 	sts	0x0162, r24	; 0x800162 <_ZN7TwoWire14txBufferLengthE>
     77a:	81 e0       	ldi	r24, 0x01	; 1
     77c:	90 e0       	ldi	r25, 0x00	; 0
     77e:	ec cf       	rjmp	.-40     	; 0x758 <_ZN7TwoWire5writeEh+0x2a>
     780:	61 e0       	ldi	r22, 0x01	; 1
     782:	ce 01       	movw	r24, r28
     784:	01 96       	adiw	r24, 0x01	; 1
     786:	0e 94 35 03 	call	0x66a	; 0x66a <twi_transmit>
     78a:	f7 cf       	rjmp	.-18     	; 0x77a <_ZN7TwoWire5writeEh+0x4c>

0000078c <_ZN17LiquidCrystal_I2C13expanderWriteEh>:
     78c:	cf 92       	push	r12
     78e:	df 92       	push	r13
     790:	ef 92       	push	r14
     792:	ff 92       	push	r15
     794:	0f 93       	push	r16
     796:	1f 93       	push	r17
     798:	cf 93       	push	r28
     79a:	df 93       	push	r29
     79c:	fc 01       	movw	r30, r24
     79e:	c4 81       	ldd	r28, Z+4	; 0x04
     7a0:	21 e0       	ldi	r18, 0x01	; 1
     7a2:	20 93 63 01 	sts	0x0163, r18	; 0x800163 <_ZN7TwoWire12transmittingE>
     7a6:	c0 93 38 01 	sts	0x0138, r28	; 0x800138 <__data_end>
     7aa:	10 92 61 01 	sts	0x0161, r1	; 0x800161 <_ZN7TwoWire13txBufferIndexE>
     7ae:	10 92 62 01 	sts	0x0162, r1	; 0x800162 <_ZN7TwoWire14txBufferLengthE>
     7b2:	84 85       	ldd	r24, Z+12	; 0x0c
     7b4:	68 2b       	or	r22, r24
     7b6:	81 ea       	ldi	r24, 0xA1	; 161
     7b8:	92 e0       	ldi	r25, 0x02	; 2
     7ba:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN7TwoWire5writeEh>
     7be:	d0 91 62 01 	lds	r29, 0x0162	; 0x800162 <_ZN7TwoWire14txBufferLengthE>
     7c2:	d1 32       	cpi	r29, 0x21	; 33
     7c4:	08 f0       	brcs	.+2      	; 0x7c8 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x3c>
     7c6:	92 c0       	rjmp	.+292    	; 0x8ec <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x160>
     7c8:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     7cc:	6b 01       	movw	r12, r22
     7ce:	7c 01       	movw	r14, r24
     7d0:	80 91 af 01 	lds	r24, 0x01AF	; 0x8001af <twi_state>
     7d4:	81 11       	cpse	r24, r1
     7d6:	65 c0       	rjmp	.+202    	; 0x8a2 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x116>
     7d8:	82 e0       	ldi	r24, 0x02	; 2
     7da:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <twi_state>
     7de:	81 e0       	ldi	r24, 0x01	; 1
     7e0:	80 93 b1 01 	sts	0x01B1, r24	; 0x8001b1 <twi_sendStop>
     7e4:	8f ef       	ldi	r24, 0xFF	; 255
     7e6:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <twi_error>
     7ea:	10 92 d3 01 	sts	0x01D3, r1	; 0x8001d3 <twi_masterBufferIndex>
     7ee:	d0 93 d2 01 	sts	0x01D2, r29	; 0x8001d2 <twi_masterBufferLength>
     7f2:	a1 e4       	ldi	r26, 0x41	; 65
     7f4:	b1 e0       	ldi	r27, 0x01	; 1
     7f6:	e2 eb       	ldi	r30, 0xB2	; 178
     7f8:	f1 e0       	ldi	r31, 0x01	; 1
     7fa:	80 e0       	ldi	r24, 0x00	; 0
     7fc:	d8 13       	cpse	r29, r24
     7fe:	85 c0       	rjmp	.+266    	; 0x90a <__stack+0xb>
     800:	10 92 d4 01 	sts	0x01D4, r1	; 0x8001d4 <twi_slarw>
     804:	80 91 d4 01 	lds	r24, 0x01D4	; 0x8001d4 <twi_slarw>
     808:	cc 0f       	add	r28, r28
     80a:	c8 2b       	or	r28, r24
     80c:	c0 93 d4 01 	sts	0x01D4, r28	; 0x8001d4 <twi_slarw>
     810:	80 91 b0 01 	lds	r24, 0x01B0	; 0x8001b0 <twi_inRepStart>
     814:	81 30       	cpi	r24, 0x01	; 1
     816:	09 f0       	breq	.+2      	; 0x81a <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x8e>
     818:	7c c0       	rjmp	.+248    	; 0x912 <__stack+0x13>
     81a:	10 92 b0 01 	sts	0x01B0, r1	; 0x8001b0 <twi_inRepStart>
     81e:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     822:	6b 01       	movw	r12, r22
     824:	7c 01       	movw	r14, r24
     826:	80 91 d4 01 	lds	r24, 0x01D4	; 0x8001d4 <twi_slarw>
     82a:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     82e:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <twi_timeout_us>
     832:	90 91 67 01 	lds	r25, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     836:	a0 91 68 01 	lds	r26, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     83a:	b0 91 69 01 	lds	r27, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     83e:	89 2b       	or	r24, r25
     840:	8a 2b       	or	r24, r26
     842:	8b 2b       	or	r24, r27
     844:	99 f0       	breq	.+38     	; 0x86c <_ZN17LiquidCrystal_I2C13expanderWriteEh+0xe0>
     846:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     84a:	00 91 66 01 	lds	r16, 0x0166	; 0x800166 <twi_timeout_us>
     84e:	10 91 67 01 	lds	r17, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     852:	20 91 68 01 	lds	r18, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     856:	30 91 69 01 	lds	r19, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     85a:	6c 19       	sub	r22, r12
     85c:	7d 09       	sbc	r23, r13
     85e:	8e 09       	sbc	r24, r14
     860:	9f 09       	sbc	r25, r15
     862:	06 17       	cp	r16, r22
     864:	17 07       	cpc	r17, r23
     866:	28 07       	cpc	r18, r24
     868:	39 07       	cpc	r19, r25
     86a:	e0 f1       	brcs	.+120    	; 0x8e4 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x158>
     86c:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     870:	83 fd       	sbrc	r24, 3
     872:	d9 cf       	rjmp	.-78     	; 0x826 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x9a>
     874:	85 ec       	ldi	r24, 0xC5	; 197
     876:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     87a:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     87e:	6b 01       	movw	r12, r22
     880:	7c 01       	movw	r14, r24
     882:	80 91 af 01 	lds	r24, 0x01AF	; 0x8001af <twi_state>
     886:	82 30       	cpi	r24, 0x02	; 2
     888:	09 f4       	brne	.+2      	; 0x88c <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x100>
     88a:	45 c0       	rjmp	.+138    	; 0x916 <__stack+0x17>
     88c:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <twi_error>
     890:	8f 3f       	cpi	r24, 0xFF	; 255
     892:	61 f1       	breq	.+88     	; 0x8ec <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x160>
     894:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <twi_error>
     898:	80 32       	cpi	r24, 0x20	; 32
     89a:	41 f1       	breq	.+80     	; 0x8ec <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x160>
     89c:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <twi_error>
     8a0:	25 c0       	rjmp	.+74     	; 0x8ec <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x160>
     8a2:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <twi_timeout_us>
     8a6:	90 91 67 01 	lds	r25, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     8aa:	a0 91 68 01 	lds	r26, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     8ae:	b0 91 69 01 	lds	r27, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     8b2:	89 2b       	or	r24, r25
     8b4:	8a 2b       	or	r24, r26
     8b6:	8b 2b       	or	r24, r27
     8b8:	09 f4       	brne	.+2      	; 0x8bc <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x130>
     8ba:	8a cf       	rjmp	.-236    	; 0x7d0 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x44>
     8bc:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     8c0:	00 91 66 01 	lds	r16, 0x0166	; 0x800166 <twi_timeout_us>
     8c4:	10 91 67 01 	lds	r17, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     8c8:	20 91 68 01 	lds	r18, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     8cc:	30 91 69 01 	lds	r19, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     8d0:	6c 19       	sub	r22, r12
     8d2:	7d 09       	sbc	r23, r13
     8d4:	8e 09       	sbc	r24, r14
     8d6:	9f 09       	sbc	r25, r15
     8d8:	06 17       	cp	r16, r22
     8da:	17 07       	cpc	r17, r23
     8dc:	28 07       	cpc	r18, r24
     8de:	39 07       	cpc	r19, r25
     8e0:	08 f0       	brcs	.+2      	; 0x8e4 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x158>
     8e2:	76 cf       	rjmp	.-276    	; 0x7d0 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x44>
     8e4:	80 91 65 01 	lds	r24, 0x0165	; 0x800165 <twi_do_reset_on_timeout>
     8e8:	0e 94 f6 02 	call	0x5ec	; 0x5ec <twi_handleTimeout>
     8ec:	10 92 61 01 	sts	0x0161, r1	; 0x800161 <_ZN7TwoWire13txBufferIndexE>
     8f0:	10 92 62 01 	sts	0x0162, r1	; 0x800162 <_ZN7TwoWire14txBufferLengthE>
     8f4:	10 92 63 01 	sts	0x0163, r1	; 0x800163 <_ZN7TwoWire12transmittingE>
     8f8:	df 91       	pop	r29
     8fa:	cf 91       	pop	r28
     8fc:	1f 91       	pop	r17
     8fe:	0f 91       	pop	r16
     900:	ff 90       	pop	r15
     902:	ef 90       	pop	r14
     904:	df 90       	pop	r13
     906:	cf 90       	pop	r12
     908:	08 95       	ret
     90a:	9d 91       	ld	r25, X+
     90c:	91 93       	st	Z+, r25
     90e:	8f 5f       	subi	r24, 0xFF	; 255
     910:	75 cf       	rjmp	.-278    	; 0x7fc <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x70>
     912:	85 ee       	ldi	r24, 0xE5	; 229
     914:	b0 cf       	rjmp	.-160    	; 0x876 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0xea>
     916:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <twi_timeout_us>
     91a:	90 91 67 01 	lds	r25, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     91e:	a0 91 68 01 	lds	r26, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     922:	b0 91 69 01 	lds	r27, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     926:	89 2b       	or	r24, r25
     928:	8a 2b       	or	r24, r26
     92a:	8b 2b       	or	r24, r27
     92c:	09 f4       	brne	.+2      	; 0x930 <__stack+0x31>
     92e:	a9 cf       	rjmp	.-174    	; 0x882 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0xf6>
     930:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <micros>
     934:	00 91 66 01 	lds	r16, 0x0166	; 0x800166 <twi_timeout_us>
     938:	10 91 67 01 	lds	r17, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     93c:	20 91 68 01 	lds	r18, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     940:	30 91 69 01 	lds	r19, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     944:	6c 19       	sub	r22, r12
     946:	7d 09       	sbc	r23, r13
     948:	8e 09       	sbc	r24, r14
     94a:	9f 09       	sbc	r25, r15
     94c:	06 17       	cp	r16, r22
     94e:	17 07       	cpc	r17, r23
     950:	28 07       	cpc	r18, r24
     952:	39 07       	cpc	r19, r25
     954:	08 f0       	brcs	.+2      	; 0x958 <__stack+0x59>
     956:	95 cf       	rjmp	.-214    	; 0x882 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0xf6>
     958:	c5 cf       	rjmp	.-118    	; 0x8e4 <_ZN17LiquidCrystal_I2C13expanderWriteEh+0x158>

0000095a <_ZN5Print5flushEv>:
     95a:	08 95       	ret

0000095c <_ZN5Print17availableForWriteEv>:
     95c:	90 e0       	ldi	r25, 0x00	; 0
     95e:	80 e0       	ldi	r24, 0x00	; 0
     960:	08 95       	ret

00000962 <twi_stop>:
     962:	85 ed       	ldi	r24, 0xD5	; 213
     964:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     968:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <twi_timeout_us>
     96c:	90 91 67 01 	lds	r25, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     970:	a0 91 68 01 	lds	r26, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     974:	b0 91 69 01 	lds	r27, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     978:	07 96       	adiw	r24, 0x07	; 7
     97a:	a1 1d       	adc	r26, r1
     97c:	b1 1d       	adc	r27, r1
     97e:	23 e0       	ldi	r18, 0x03	; 3
     980:	b6 95       	lsr	r27
     982:	a7 95       	ror	r26
     984:	97 95       	ror	r25
     986:	87 95       	ror	r24
     988:	2a 95       	dec	r18
     98a:	d1 f7       	brne	.-12     	; 0x980 <twi_stop+0x1e>
     98c:	20 91 bc 00 	lds	r18, 0x00BC	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     990:	24 fd       	sbrc	r18, 4
     992:	03 c0       	rjmp	.+6      	; 0x99a <twi_stop+0x38>
     994:	10 92 af 01 	sts	0x01AF, r1	; 0x8001af <twi_state>
     998:	08 95       	ret
     99a:	40 91 66 01 	lds	r20, 0x0166	; 0x800166 <twi_timeout_us>
     99e:	50 91 67 01 	lds	r21, 0x0167	; 0x800167 <twi_timeout_us+0x1>
     9a2:	60 91 68 01 	lds	r22, 0x0168	; 0x800168 <twi_timeout_us+0x2>
     9a6:	70 91 69 01 	lds	r23, 0x0169	; 0x800169 <twi_timeout_us+0x3>
     9aa:	45 2b       	or	r20, r21
     9ac:	46 2b       	or	r20, r22
     9ae:	47 2b       	or	r20, r23
     9b0:	69 f3       	breq	.-38     	; 0x98c <twi_stop+0x2a>
     9b2:	00 97       	sbiw	r24, 0x00	; 0
     9b4:	a1 05       	cpc	r26, r1
     9b6:	b1 05       	cpc	r27, r1
     9b8:	41 f0       	breq	.+16     	; 0x9ca <twi_stop+0x68>
     9ba:	2a e2       	ldi	r18, 0x2A	; 42
     9bc:	2a 95       	dec	r18
     9be:	f1 f7       	brne	.-4      	; 0x9bc <twi_stop+0x5a>
     9c0:	00 c0       	rjmp	.+0      	; 0x9c2 <twi_stop+0x60>
     9c2:	01 97       	sbiw	r24, 0x01	; 1
     9c4:	a1 09       	sbc	r26, r1
     9c6:	b1 09       	sbc	r27, r1
     9c8:	e1 cf       	rjmp	.-62     	; 0x98c <twi_stop+0x2a>
     9ca:	80 91 65 01 	lds	r24, 0x0165	; 0x800165 <twi_do_reset_on_timeout>
     9ce:	0c 94 f6 02 	jmp	0x5ec	; 0x5ec <twi_handleTimeout>

000009d2 <_ZN17LiquidCrystal_I2C11pulseEnableEh>:
     9d2:	0f 93       	push	r16
     9d4:	1f 93       	push	r17
     9d6:	cf 93       	push	r28
     9d8:	8c 01       	movw	r16, r24
     9da:	c6 2f       	mov	r28, r22
     9dc:	64 60       	ori	r22, 0x04	; 4
     9de:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN17LiquidCrystal_I2C13expanderWriteEh>
     9e2:	6c 2f       	mov	r22, r28
     9e4:	6b 7f       	andi	r22, 0xFB	; 251
     9e6:	c8 01       	movw	r24, r16
     9e8:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN17LiquidCrystal_I2C13expanderWriteEh>
     9ec:	83 ec       	ldi	r24, 0xC3	; 195
     9ee:	90 e0       	ldi	r25, 0x00	; 0
     9f0:	01 97       	sbiw	r24, 0x01	; 1
     9f2:	f1 f7       	brne	.-4      	; 0x9f0 <_ZN17LiquidCrystal_I2C11pulseEnableEh+0x1e>
     9f4:	cf 91       	pop	r28
     9f6:	1f 91       	pop	r17
     9f8:	0f 91       	pop	r16
     9fa:	08 95       	ret

000009fc <_ZN17LiquidCrystal_I2C5writeEh>:
     9fc:	0f 93       	push	r16
     9fe:	1f 93       	push	r17
     a00:	cf 93       	push	r28
     a02:	df 93       	push	r29
     a04:	8c 01       	movw	r16, r24
     a06:	c6 2f       	mov	r28, r22
     a08:	d6 2f       	mov	r29, r22
     a0a:	d0 7f       	andi	r29, 0xF0	; 240
     a0c:	d1 60       	ori	r29, 0x01	; 1
     a0e:	6d 2f       	mov	r22, r29
     a10:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN17LiquidCrystal_I2C13expanderWriteEh>
     a14:	6d 2f       	mov	r22, r29
     a16:	c8 01       	movw	r24, r16
     a18:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN17LiquidCrystal_I2C11pulseEnableEh>
     a1c:	80 e1       	ldi	r24, 0x10	; 16
     a1e:	c8 9f       	mul	r28, r24
     a20:	e0 01       	movw	r28, r0
     a22:	11 24       	eor	r1, r1
     a24:	c1 60       	ori	r28, 0x01	; 1
     a26:	6c 2f       	mov	r22, r28
     a28:	c8 01       	movw	r24, r16
     a2a:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN17LiquidCrystal_I2C13expanderWriteEh>
     a2e:	6c 2f       	mov	r22, r28
     a30:	c8 01       	movw	r24, r16
     a32:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN17LiquidCrystal_I2C11pulseEnableEh>
     a36:	81 e0       	ldi	r24, 0x01	; 1
     a38:	90 e0       	ldi	r25, 0x00	; 0
     a3a:	df 91       	pop	r29
     a3c:	cf 91       	pop	r28
     a3e:	1f 91       	pop	r17
     a40:	0f 91       	pop	r16
     a42:	08 95       	ret

00000a44 <__vector_16>:
     a44:	1f 92       	push	r1
     a46:	0f 92       	push	r0
     a48:	0f b6       	in	r0, 0x3f	; 63
     a4a:	0f 92       	push	r0
     a4c:	11 24       	eor	r1, r1
     a4e:	2f 93       	push	r18
     a50:	3f 93       	push	r19
     a52:	8f 93       	push	r24
     a54:	9f 93       	push	r25
     a56:	af 93       	push	r26
     a58:	bf 93       	push	r27
     a5a:	80 91 fc 01 	lds	r24, 0x01FC	; 0x8001fc <timer0_millis>
     a5e:	90 91 fd 01 	lds	r25, 0x01FD	; 0x8001fd <timer0_millis+0x1>
     a62:	a0 91 fe 01 	lds	r26, 0x01FE	; 0x8001fe <timer0_millis+0x2>
     a66:	b0 91 ff 01 	lds	r27, 0x01FF	; 0x8001ff <timer0_millis+0x3>
     a6a:	30 91 fb 01 	lds	r19, 0x01FB	; 0x8001fb <timer0_fract>
     a6e:	23 e0       	ldi	r18, 0x03	; 3
     a70:	23 0f       	add	r18, r19
     a72:	2d 37       	cpi	r18, 0x7D	; 125
     a74:	58 f5       	brcc	.+86     	; 0xacc <__vector_16+0x88>
     a76:	01 96       	adiw	r24, 0x01	; 1
     a78:	a1 1d       	adc	r26, r1
     a7a:	b1 1d       	adc	r27, r1
     a7c:	20 93 fb 01 	sts	0x01FB, r18	; 0x8001fb <timer0_fract>
     a80:	80 93 fc 01 	sts	0x01FC, r24	; 0x8001fc <timer0_millis>
     a84:	90 93 fd 01 	sts	0x01FD, r25	; 0x8001fd <timer0_millis+0x1>
     a88:	a0 93 fe 01 	sts	0x01FE, r26	; 0x8001fe <timer0_millis+0x2>
     a8c:	b0 93 ff 01 	sts	0x01FF, r27	; 0x8001ff <timer0_millis+0x3>
     a90:	80 91 00 02 	lds	r24, 0x0200	; 0x800200 <timer0_overflow_count>
     a94:	90 91 01 02 	lds	r25, 0x0201	; 0x800201 <timer0_overflow_count+0x1>
     a98:	a0 91 02 02 	lds	r26, 0x0202	; 0x800202 <timer0_overflow_count+0x2>
     a9c:	b0 91 03 02 	lds	r27, 0x0203	; 0x800203 <timer0_overflow_count+0x3>
     aa0:	01 96       	adiw	r24, 0x01	; 1
     aa2:	a1 1d       	adc	r26, r1
     aa4:	b1 1d       	adc	r27, r1
     aa6:	80 93 00 02 	sts	0x0200, r24	; 0x800200 <timer0_overflow_count>
     aaa:	90 93 01 02 	sts	0x0201, r25	; 0x800201 <timer0_overflow_count+0x1>
     aae:	a0 93 02 02 	sts	0x0202, r26	; 0x800202 <timer0_overflow_count+0x2>
     ab2:	b0 93 03 02 	sts	0x0203, r27	; 0x800203 <timer0_overflow_count+0x3>
     ab6:	bf 91       	pop	r27
     ab8:	af 91       	pop	r26
     aba:	9f 91       	pop	r25
     abc:	8f 91       	pop	r24
     abe:	3f 91       	pop	r19
     ac0:	2f 91       	pop	r18
     ac2:	0f 90       	pop	r0
     ac4:	0f be       	out	0x3f, r0	; 63
     ac6:	0f 90       	pop	r0
     ac8:	1f 90       	pop	r1
     aca:	18 95       	reti
     acc:	26 e8       	ldi	r18, 0x86	; 134
     ace:	23 0f       	add	r18, r19
     ad0:	02 96       	adiw	r24, 0x02	; 2
     ad2:	a1 1d       	adc	r26, r1
     ad4:	b1 1d       	adc	r27, r1
     ad6:	d2 cf       	rjmp	.-92     	; 0xa7c <__vector_16+0x38>

00000ad8 <__vector_19>:
     ad8:	1f 92       	push	r1
     ada:	0f 92       	push	r0
     adc:	0f b6       	in	r0, 0x3f	; 63
     ade:	0f 92       	push	r0
     ae0:	11 24       	eor	r1, r1
     ae2:	2f 93       	push	r18
     ae4:	3f 93       	push	r19
     ae6:	4f 93       	push	r20
     ae8:	5f 93       	push	r21
     aea:	6f 93       	push	r22
     aec:	7f 93       	push	r23
     aee:	8f 93       	push	r24
     af0:	9f 93       	push	r25
     af2:	af 93       	push	r26
     af4:	bf 93       	push	r27
     af6:	ef 93       	push	r30
     af8:	ff 93       	push	r31
     afa:	84 e0       	ldi	r24, 0x04	; 4
     afc:	92 e0       	ldi	r25, 0x02	; 2
     afe:	0e 94 6c 01 	call	0x2d8	; 0x2d8 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     b02:	ff 91       	pop	r31
     b04:	ef 91       	pop	r30
     b06:	bf 91       	pop	r27
     b08:	af 91       	pop	r26
     b0a:	9f 91       	pop	r25
     b0c:	8f 91       	pop	r24
     b0e:	7f 91       	pop	r23
     b10:	6f 91       	pop	r22
     b12:	5f 91       	pop	r21
     b14:	4f 91       	pop	r20
     b16:	3f 91       	pop	r19
     b18:	2f 91       	pop	r18
     b1a:	0f 90       	pop	r0
     b1c:	0f be       	out	0x3f, r0	; 63
     b1e:	0f 90       	pop	r0
     b20:	1f 90       	pop	r1
     b22:	18 95       	reti

00000b24 <__vector_18>:
     b24:	1f 92       	push	r1
     b26:	0f 92       	push	r0
     b28:	0f b6       	in	r0, 0x3f	; 63
     b2a:	0f 92       	push	r0
     b2c:	11 24       	eor	r1, r1
     b2e:	2f 93       	push	r18
     b30:	8f 93       	push	r24
     b32:	9f 93       	push	r25
     b34:	ef 93       	push	r30
     b36:	ff 93       	push	r31
     b38:	e0 91 14 02 	lds	r30, 0x0214	; 0x800214 <Serial+0x10>
     b3c:	f0 91 15 02 	lds	r31, 0x0215	; 0x800215 <Serial+0x11>
     b40:	80 81       	ld	r24, Z
     b42:	e0 91 1a 02 	lds	r30, 0x021A	; 0x80021a <Serial+0x16>
     b46:	f0 91 1b 02 	lds	r31, 0x021B	; 0x80021b <Serial+0x17>
     b4a:	82 fd       	sbrc	r24, 2
     b4c:	1b c0       	rjmp	.+54     	; 0xb84 <__vector_18+0x60>
     b4e:	90 81       	ld	r25, Z
     b50:	80 91 1d 02 	lds	r24, 0x021D	; 0x80021d <Serial+0x19>
     b54:	8f 5f       	subi	r24, 0xFF	; 255
     b56:	8f 73       	andi	r24, 0x3F	; 63
     b58:	20 91 1e 02 	lds	r18, 0x021E	; 0x80021e <Serial+0x1a>
     b5c:	82 17       	cp	r24, r18
     b5e:	41 f0       	breq	.+16     	; 0xb70 <__vector_18+0x4c>
     b60:	e0 91 1d 02 	lds	r30, 0x021D	; 0x80021d <Serial+0x19>
     b64:	f0 e0       	ldi	r31, 0x00	; 0
     b66:	ec 5f       	subi	r30, 0xFC	; 252
     b68:	fd 4f       	sbci	r31, 0xFD	; 253
     b6a:	95 8f       	std	Z+29, r25	; 0x1d
     b6c:	80 93 1d 02 	sts	0x021D, r24	; 0x80021d <Serial+0x19>
     b70:	ff 91       	pop	r31
     b72:	ef 91       	pop	r30
     b74:	9f 91       	pop	r25
     b76:	8f 91       	pop	r24
     b78:	2f 91       	pop	r18
     b7a:	0f 90       	pop	r0
     b7c:	0f be       	out	0x3f, r0	; 63
     b7e:	0f 90       	pop	r0
     b80:	1f 90       	pop	r1
     b82:	18 95       	reti
     b84:	80 81       	ld	r24, Z
     b86:	f4 cf       	rjmp	.-24     	; 0xb70 <__vector_18+0x4c>

00000b88 <__vector_11>:
     b88:	1f 92       	push	r1
     b8a:	0f 92       	push	r0
     b8c:	0f b6       	in	r0, 0x3f	; 63
     b8e:	0f 92       	push	r0
     b90:	11 24       	eor	r1, r1
     b92:	2f 93       	push	r18
     b94:	3f 93       	push	r19
     b96:	4f 93       	push	r20
     b98:	5f 93       	push	r21
     b9a:	6f 93       	push	r22
     b9c:	7f 93       	push	r23
     b9e:	8f 93       	push	r24
     ba0:	9f 93       	push	r25
     ba2:	af 93       	push	r26
     ba4:	bf 93       	push	r27
     ba6:	cf 93       	push	r28
     ba8:	df 93       	push	r29
     baa:	ef 93       	push	r30
     bac:	ff 93       	push	r31
     bae:	80 91 d6 01 	lds	r24, 0x01D6	; 0x8001d6 <_ZL7Channel>
     bb2:	c0 91 d5 01 	lds	r28, 0x01D5	; 0x8001d5 <ServoCount>
     bb6:	d0 e0       	ldi	r29, 0x00	; 0
     bb8:	87 ff       	sbrs	r24, 7
     bba:	24 c0       	rjmp	.+72     	; 0xc04 <__vector_11+0x7c>
     bbc:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     bc0:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     bc4:	80 91 d6 01 	lds	r24, 0x01D6	; 0x8001d6 <_ZL7Channel>
     bc8:	8f 5f       	subi	r24, 0xFF	; 255
     bca:	80 93 d6 01 	sts	0x01D6, r24	; 0x8001d6 <_ZL7Channel>
     bce:	80 91 d6 01 	lds	r24, 0x01D6	; 0x8001d6 <_ZL7Channel>
     bd2:	08 2e       	mov	r0, r24
     bd4:	00 0c       	add	r0, r0
     bd6:	99 0b       	sbc	r25, r25
     bd8:	8c 17       	cp	r24, r28
     bda:	9d 07       	cpc	r25, r29
     bdc:	24 f4       	brge	.+8      	; 0xbe6 <__vector_11+0x5e>
     bde:	80 91 d6 01 	lds	r24, 0x01D6	; 0x8001d6 <_ZL7Channel>
     be2:	8c 30       	cpi	r24, 0x0C	; 12
     be4:	c4 f1       	brlt	.+112    	; 0xc56 <__vector_11+0xce>
     be6:	80 91 84 00 	lds	r24, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     bea:	90 91 85 00 	lds	r25, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     bee:	04 96       	adiw	r24, 0x04	; 4
     bf0:	80 34       	cpi	r24, 0x40	; 64
     bf2:	9c 49       	sbci	r25, 0x9C	; 156
     bf4:	08 f4       	brcc	.+2      	; 0xbf8 <__vector_11+0x70>
     bf6:	7a c0       	rjmp	.+244    	; 0xcec <__vector_11+0x164>
     bf8:	80 91 84 00 	lds	r24, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     bfc:	90 91 85 00 	lds	r25, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     c00:	04 96       	adiw	r24, 0x04	; 4
     c02:	76 c0       	rjmp	.+236    	; 0xcf0 <__vector_11+0x168>
     c04:	80 91 d6 01 	lds	r24, 0x01D6	; 0x8001d6 <_ZL7Channel>
     c08:	08 2e       	mov	r0, r24
     c0a:	00 0c       	add	r0, r0
     c0c:	99 0b       	sbc	r25, r25
     c0e:	8c 17       	cp	r24, r28
     c10:	9d 07       	cpc	r25, r29
     c12:	c4 f6       	brge	.-80     	; 0xbc4 <__vector_11+0x3c>
     c14:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <_ZL7Channel>
     c18:	8e 2f       	mov	r24, r30
     c1a:	ee 0f       	add	r30, r30
     c1c:	99 0b       	sbc	r25, r25
     c1e:	fc 01       	movw	r30, r24
     c20:	ee 0f       	add	r30, r30
     c22:	ff 1f       	adc	r31, r31
     c24:	e8 0f       	add	r30, r24
     c26:	f9 1f       	adc	r31, r25
     c28:	e9 52       	subi	r30, 0x29	; 41
     c2a:	fe 4f       	sbci	r31, 0xFE	; 254
     c2c:	80 81       	ld	r24, Z
     c2e:	86 ff       	sbrs	r24, 6
     c30:	c9 cf       	rjmp	.-110    	; 0xbc4 <__vector_11+0x3c>
     c32:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <_ZL7Channel>
     c36:	8e 2f       	mov	r24, r30
     c38:	ee 0f       	add	r30, r30
     c3a:	99 0b       	sbc	r25, r25
     c3c:	fc 01       	movw	r30, r24
     c3e:	ee 0f       	add	r30, r30
     c40:	ff 1f       	adc	r31, r31
     c42:	e8 0f       	add	r30, r24
     c44:	f9 1f       	adc	r31, r25
     c46:	e9 52       	subi	r30, 0x29	; 41
     c48:	fe 4f       	sbci	r31, 0xFE	; 254
     c4a:	80 81       	ld	r24, Z
     c4c:	60 e0       	ldi	r22, 0x00	; 0
     c4e:	8f 73       	andi	r24, 0x3F	; 63
     c50:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     c54:	b7 cf       	rjmp	.-146    	; 0xbc4 <__vector_11+0x3c>
     c56:	20 91 84 00 	lds	r18, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     c5a:	30 91 85 00 	lds	r19, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     c5e:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <_ZL7Channel>
     c62:	8e 2f       	mov	r24, r30
     c64:	ee 0f       	add	r30, r30
     c66:	99 0b       	sbc	r25, r25
     c68:	fc 01       	movw	r30, r24
     c6a:	ee 0f       	add	r30, r30
     c6c:	ff 1f       	adc	r31, r31
     c6e:	e8 0f       	add	r30, r24
     c70:	f9 1f       	adc	r31, r25
     c72:	e9 52       	subi	r30, 0x29	; 41
     c74:	fe 4f       	sbci	r31, 0xFE	; 254
     c76:	81 81       	ldd	r24, Z+1	; 0x01
     c78:	92 81       	ldd	r25, Z+2	; 0x02
     c7a:	82 0f       	add	r24, r18
     c7c:	93 1f       	adc	r25, r19
     c7e:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
     c82:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
     c86:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <_ZL7Channel>
     c8a:	8e 2f       	mov	r24, r30
     c8c:	ee 0f       	add	r30, r30
     c8e:	99 0b       	sbc	r25, r25
     c90:	fc 01       	movw	r30, r24
     c92:	ee 0f       	add	r30, r30
     c94:	ff 1f       	adc	r31, r31
     c96:	e8 0f       	add	r30, r24
     c98:	f9 1f       	adc	r31, r25
     c9a:	e9 52       	subi	r30, 0x29	; 41
     c9c:	fe 4f       	sbci	r31, 0xFE	; 254
     c9e:	80 81       	ld	r24, Z
     ca0:	86 ff       	sbrs	r24, 6
     ca2:	11 c0       	rjmp	.+34     	; 0xcc6 <__vector_11+0x13e>
     ca4:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <_ZL7Channel>
     ca8:	8e 2f       	mov	r24, r30
     caa:	ee 0f       	add	r30, r30
     cac:	99 0b       	sbc	r25, r25
     cae:	fc 01       	movw	r30, r24
     cb0:	ee 0f       	add	r30, r30
     cb2:	ff 1f       	adc	r31, r31
     cb4:	e8 0f       	add	r30, r24
     cb6:	f9 1f       	adc	r31, r25
     cb8:	e9 52       	subi	r30, 0x29	; 41
     cba:	fe 4f       	sbci	r31, 0xFE	; 254
     cbc:	80 81       	ld	r24, Z
     cbe:	61 e0       	ldi	r22, 0x01	; 1
     cc0:	8f 73       	andi	r24, 0x3F	; 63
     cc2:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     cc6:	ff 91       	pop	r31
     cc8:	ef 91       	pop	r30
     cca:	df 91       	pop	r29
     ccc:	cf 91       	pop	r28
     cce:	bf 91       	pop	r27
     cd0:	af 91       	pop	r26
     cd2:	9f 91       	pop	r25
     cd4:	8f 91       	pop	r24
     cd6:	7f 91       	pop	r23
     cd8:	6f 91       	pop	r22
     cda:	5f 91       	pop	r21
     cdc:	4f 91       	pop	r20
     cde:	3f 91       	pop	r19
     ce0:	2f 91       	pop	r18
     ce2:	0f 90       	pop	r0
     ce4:	0f be       	out	0x3f, r0	; 63
     ce6:	0f 90       	pop	r0
     ce8:	1f 90       	pop	r1
     cea:	18 95       	reti
     cec:	80 e4       	ldi	r24, 0x40	; 64
     cee:	9c e9       	ldi	r25, 0x9C	; 156
     cf0:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
     cf4:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
     cf8:	8f ef       	ldi	r24, 0xFF	; 255
     cfa:	80 93 d6 01 	sts	0x01D6, r24	; 0x8001d6 <_ZL7Channel>
     cfe:	e3 cf       	rjmp	.-58     	; 0xcc6 <__vector_11+0x13e>

00000d00 <__vector_24>:
     d00:	1f 92       	push	r1
     d02:	0f 92       	push	r0
     d04:	0f b6       	in	r0, 0x3f	; 63
     d06:	0f 92       	push	r0
     d08:	11 24       	eor	r1, r1
     d0a:	2f 93       	push	r18
     d0c:	3f 93       	push	r19
     d0e:	4f 93       	push	r20
     d10:	5f 93       	push	r21
     d12:	6f 93       	push	r22
     d14:	7f 93       	push	r23
     d16:	8f 93       	push	r24
     d18:	9f 93       	push	r25
     d1a:	af 93       	push	r26
     d1c:	bf 93       	push	r27
     d1e:	ef 93       	push	r30
     d20:	ff 93       	push	r31
     d22:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__DATA_REGION_ORIGIN__+0x59>
     d26:	88 7f       	andi	r24, 0xF8	; 248
     d28:	80 36       	cpi	r24, 0x60	; 96
     d2a:	09 f4       	brne	.+2      	; 0xd2e <__vector_24+0x2e>
     d2c:	4a c0       	rjmp	.+148    	; 0xdc2 <__vector_24+0xc2>
     d2e:	f0 f5       	brcc	.+124    	; 0xdac <__vector_24+0xac>
     d30:	88 32       	cpi	r24, 0x28	; 40
     d32:	09 f4       	brne	.+2      	; 0xd36 <__vector_24+0x36>
     d34:	a5 c0       	rjmp	.+330    	; 0xe80 <__vector_24+0x180>
     d36:	18 f5       	brcc	.+70     	; 0xd7e <__vector_24+0x7e>
     d38:	80 31       	cpi	r24, 0x10	; 16
     d3a:	09 f4       	brne	.+2      	; 0xd3e <__vector_24+0x3e>
     d3c:	99 c0       	rjmp	.+306    	; 0xe70 <__vector_24+0x170>
     d3e:	b8 f4       	brcc	.+46     	; 0xd6e <__vector_24+0x6e>
     d40:	88 23       	and	r24, r24
     d42:	09 f4       	brne	.+2      	; 0xd46 <__vector_24+0x46>
     d44:	f5 c0       	rjmp	.+490    	; 0xf30 <__vector_24+0x230>
     d46:	88 30       	cpi	r24, 0x08	; 8
     d48:	09 f4       	brne	.+2      	; 0xd4c <__vector_24+0x4c>
     d4a:	92 c0       	rjmp	.+292    	; 0xe70 <__vector_24+0x170>
     d4c:	ff 91       	pop	r31
     d4e:	ef 91       	pop	r30
     d50:	bf 91       	pop	r27
     d52:	af 91       	pop	r26
     d54:	9f 91       	pop	r25
     d56:	8f 91       	pop	r24
     d58:	7f 91       	pop	r23
     d5a:	6f 91       	pop	r22
     d5c:	5f 91       	pop	r21
     d5e:	4f 91       	pop	r20
     d60:	3f 91       	pop	r19
     d62:	2f 91       	pop	r18
     d64:	0f 90       	pop	r0
     d66:	0f be       	out	0x3f, r0	; 63
     d68:	0f 90       	pop	r0
     d6a:	1f 90       	pop	r1
     d6c:	18 95       	reti
     d6e:	88 31       	cpi	r24, 0x18	; 24
     d70:	09 f4       	brne	.+2      	; 0xd74 <__vector_24+0x74>
     d72:	86 c0       	rjmp	.+268    	; 0xe80 <__vector_24+0x180>
     d74:	80 32       	cpi	r24, 0x20	; 32
     d76:	51 f7       	brne	.-44     	; 0xd4c <__vector_24+0x4c>
     d78:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <twi_error>
     d7c:	14 c0       	rjmp	.+40     	; 0xda6 <__vector_24+0xa6>
     d7e:	80 34       	cpi	r24, 0x40	; 64
     d80:	09 f4       	brne	.+2      	; 0xd84 <__vector_24+0x84>
     d82:	9b c0       	rjmp	.+310    	; 0xeba <__vector_24+0x1ba>
     d84:	40 f4       	brcc	.+16     	; 0xd96 <__vector_24+0x96>
     d86:	80 33       	cpi	r24, 0x30	; 48
     d88:	b9 f3       	breq	.-18     	; 0xd78 <__vector_24+0x78>
     d8a:	88 33       	cpi	r24, 0x38	; 56
     d8c:	f9 f6       	brne	.-66     	; 0xd4c <__vector_24+0x4c>
     d8e:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <twi_error>
     d92:	85 ec       	ldi	r24, 0xC5	; 197
     d94:	ae c0       	rjmp	.+348    	; 0xef2 <__vector_24+0x1f2>
     d96:	80 35       	cpi	r24, 0x50	; 80
     d98:	09 f4       	brne	.+2      	; 0xd9c <__vector_24+0x9c>
     d9a:	83 c0       	rjmp	.+262    	; 0xea2 <__vector_24+0x1a2>
     d9c:	88 35       	cpi	r24, 0x58	; 88
     d9e:	09 f4       	brne	.+2      	; 0xda2 <__vector_24+0xa2>
     da0:	94 c0       	rjmp	.+296    	; 0xeca <__vector_24+0x1ca>
     da2:	88 34       	cpi	r24, 0x48	; 72
     da4:	99 f6       	brne	.-90     	; 0xd4c <__vector_24+0x4c>
     da6:	0e 94 b1 04 	call	0x962	; 0x962 <twi_stop>
     daa:	d0 cf       	rjmp	.-96     	; 0xd4c <__vector_24+0x4c>
     dac:	88 39       	cpi	r24, 0x98	; 152
     dae:	09 f4       	brne	.+2      	; 0xdb2 <__vector_24+0xb2>
     db0:	8a c0       	rjmp	.+276    	; 0xec6 <__vector_24+0x1c6>
     db2:	38 f5       	brcc	.+78     	; 0xe02 <__vector_24+0x102>
     db4:	88 37       	cpi	r24, 0x78	; 120
     db6:	29 f0       	breq	.+10     	; 0xdc2 <__vector_24+0xc2>
     db8:	50 f4       	brcc	.+20     	; 0xdce <__vector_24+0xce>
     dba:	88 36       	cpi	r24, 0x68	; 104
     dbc:	11 f0       	breq	.+4      	; 0xdc2 <__vector_24+0xc2>
     dbe:	80 37       	cpi	r24, 0x70	; 112
     dc0:	29 f6       	brne	.-118    	; 0xd4c <__vector_24+0x4c>
     dc2:	83 e0       	ldi	r24, 0x03	; 3
     dc4:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <twi_state>
     dc8:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <twi_rxBufferIndex>
     dcc:	55 c0       	rjmp	.+170    	; 0xe78 <__vector_24+0x178>
     dce:	88 38       	cpi	r24, 0x88	; 136
     dd0:	09 f4       	brne	.+2      	; 0xdd4 <__vector_24+0xd4>
     dd2:	79 c0       	rjmp	.+242    	; 0xec6 <__vector_24+0x1c6>
     dd4:	80 39       	cpi	r24, 0x90	; 144
     dd6:	19 f0       	breq	.+6      	; 0xdde <__vector_24+0xde>
     dd8:	80 38       	cpi	r24, 0x80	; 128
     dda:	09 f0       	breq	.+2      	; 0xdde <__vector_24+0xde>
     ddc:	b7 cf       	rjmp	.-146    	; 0xd4c <__vector_24+0x4c>
     dde:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <twi_rxBufferIndex>
     de2:	80 32       	cpi	r24, 0x20	; 32
     de4:	08 f0       	brcs	.+2      	; 0xde8 <__vector_24+0xe8>
     de6:	6f c0       	rjmp	.+222    	; 0xec6 <__vector_24+0x1c6>
     de8:	e0 91 ad 01 	lds	r30, 0x01AD	; 0x8001ad <twi_rxBufferIndex>
     dec:	81 e0       	ldi	r24, 0x01	; 1
     dee:	8e 0f       	add	r24, r30
     df0:	80 93 ad 01 	sts	0x01AD, r24	; 0x8001ad <twi_rxBufferIndex>
     df4:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     df8:	f0 e0       	ldi	r31, 0x00	; 0
     dfa:	e3 57       	subi	r30, 0x73	; 115
     dfc:	fe 4f       	sbci	r31, 0xFE	; 254
     dfe:	80 83       	st	Z, r24
     e00:	3b c0       	rjmp	.+118    	; 0xe78 <__vector_24+0x178>
     e02:	80 3b       	cpi	r24, 0xB0	; 176
     e04:	39 f0       	breq	.+14     	; 0xe14 <__vector_24+0x114>
     e06:	d0 f4       	brcc	.+52     	; 0xe3c <__vector_24+0x13c>
     e08:	80 3a       	cpi	r24, 0xA0	; 160
     e0a:	09 f4       	brne	.+2      	; 0xe0e <__vector_24+0x10e>
     e0c:	77 c0       	rjmp	.+238    	; 0xefc <__vector_24+0x1fc>
     e0e:	88 3a       	cpi	r24, 0xA8	; 168
     e10:	09 f0       	breq	.+2      	; 0xe14 <__vector_24+0x114>
     e12:	9c cf       	rjmp	.-200    	; 0xd4c <__vector_24+0x4c>
     e14:	84 e0       	ldi	r24, 0x04	; 4
     e16:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <twi_state>
     e1a:	10 92 8c 01 	sts	0x018C, r1	; 0x80018c <twi_txBufferIndex>
     e1e:	10 92 8b 01 	sts	0x018B, r1	; 0x80018b <twi_txBufferLength>
     e22:	f0 e0       	ldi	r31, 0x00	; 0
     e24:	e0 e0       	ldi	r30, 0x00	; 0
     e26:	09 95       	icall
     e28:	80 91 8b 01 	lds	r24, 0x018B	; 0x80018b <twi_txBufferLength>
     e2c:	81 11       	cpse	r24, r1
     e2e:	0f c0       	rjmp	.+30     	; 0xe4e <__vector_24+0x14e>
     e30:	81 e0       	ldi	r24, 0x01	; 1
     e32:	80 93 8b 01 	sts	0x018B, r24	; 0x80018b <twi_txBufferLength>
     e36:	10 92 6b 01 	sts	0x016B, r1	; 0x80016b <twi_txBuffer>
     e3a:	09 c0       	rjmp	.+18     	; 0xe4e <__vector_24+0x14e>
     e3c:	80 3c       	cpi	r24, 0xC0	; 192
     e3e:	09 f4       	brne	.+2      	; 0xe42 <__vector_24+0x142>
     e40:	a8 cf       	rjmp	.-176    	; 0xd92 <__vector_24+0x92>
     e42:	88 3c       	cpi	r24, 0xC8	; 200
     e44:	09 f4       	brne	.+2      	; 0xe48 <__vector_24+0x148>
     e46:	a5 cf       	rjmp	.-182    	; 0xd92 <__vector_24+0x92>
     e48:	88 3b       	cpi	r24, 0xB8	; 184
     e4a:	09 f0       	breq	.+2      	; 0xe4e <__vector_24+0x14e>
     e4c:	7f cf       	rjmp	.-258    	; 0xd4c <__vector_24+0x4c>
     e4e:	e0 91 8c 01 	lds	r30, 0x018C	; 0x80018c <twi_txBufferIndex>
     e52:	81 e0       	ldi	r24, 0x01	; 1
     e54:	8e 0f       	add	r24, r30
     e56:	80 93 8c 01 	sts	0x018C, r24	; 0x80018c <twi_txBufferIndex>
     e5a:	f0 e0       	ldi	r31, 0x00	; 0
     e5c:	e5 59       	subi	r30, 0x95	; 149
     e5e:	fe 4f       	sbci	r31, 0xFE	; 254
     e60:	80 81       	ld	r24, Z
     e62:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     e66:	90 91 8c 01 	lds	r25, 0x018C	; 0x80018c <twi_txBufferIndex>
     e6a:	80 91 8b 01 	lds	r24, 0x018B	; 0x80018b <twi_txBufferLength>
     e6e:	29 c0       	rjmp	.+82     	; 0xec2 <__vector_24+0x1c2>
     e70:	80 91 d4 01 	lds	r24, 0x01D4	; 0x8001d4 <twi_slarw>
     e74:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     e78:	85 ec       	ldi	r24, 0xC5	; 197
     e7a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     e7e:	66 cf       	rjmp	.-308    	; 0xd4c <__vector_24+0x4c>
     e80:	90 91 d3 01 	lds	r25, 0x01D3	; 0x8001d3 <twi_masterBufferIndex>
     e84:	80 91 d2 01 	lds	r24, 0x01D2	; 0x8001d2 <twi_masterBufferLength>
     e88:	98 17       	cp	r25, r24
     e8a:	58 f5       	brcc	.+86     	; 0xee2 <__vector_24+0x1e2>
     e8c:	e0 91 d3 01 	lds	r30, 0x01D3	; 0x8001d3 <twi_masterBufferIndex>
     e90:	81 e0       	ldi	r24, 0x01	; 1
     e92:	8e 0f       	add	r24, r30
     e94:	80 93 d3 01 	sts	0x01D3, r24	; 0x8001d3 <twi_masterBufferIndex>
     e98:	f0 e0       	ldi	r31, 0x00	; 0
     e9a:	ee 54       	subi	r30, 0x4E	; 78
     e9c:	fe 4f       	sbci	r31, 0xFE	; 254
     e9e:	80 81       	ld	r24, Z
     ea0:	e9 cf       	rjmp	.-46     	; 0xe74 <__vector_24+0x174>
     ea2:	e0 91 d3 01 	lds	r30, 0x01D3	; 0x8001d3 <twi_masterBufferIndex>
     ea6:	81 e0       	ldi	r24, 0x01	; 1
     ea8:	8e 0f       	add	r24, r30
     eaa:	80 93 d3 01 	sts	0x01D3, r24	; 0x8001d3 <twi_masterBufferIndex>
     eae:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     eb2:	f0 e0       	ldi	r31, 0x00	; 0
     eb4:	ee 54       	subi	r30, 0x4E	; 78
     eb6:	fe 4f       	sbci	r31, 0xFE	; 254
     eb8:	80 83       	st	Z, r24
     eba:	90 91 d3 01 	lds	r25, 0x01D3	; 0x8001d3 <twi_masterBufferIndex>
     ebe:	80 91 d2 01 	lds	r24, 0x01D2	; 0x8001d2 <twi_masterBufferLength>
     ec2:	98 17       	cp	r25, r24
     ec4:	c8 f2       	brcs	.-78     	; 0xe78 <__vector_24+0x178>
     ec6:	85 e8       	ldi	r24, 0x85	; 133
     ec8:	d8 cf       	rjmp	.-80     	; 0xe7a <__vector_24+0x17a>
     eca:	e0 91 d3 01 	lds	r30, 0x01D3	; 0x8001d3 <twi_masterBufferIndex>
     ece:	81 e0       	ldi	r24, 0x01	; 1
     ed0:	8e 0f       	add	r24, r30
     ed2:	80 93 d3 01 	sts	0x01D3, r24	; 0x8001d3 <twi_masterBufferIndex>
     ed6:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__DATA_REGION_ORIGIN__+0x5b>
     eda:	f0 e0       	ldi	r31, 0x00	; 0
     edc:	ee 54       	subi	r30, 0x4E	; 78
     ede:	fe 4f       	sbci	r31, 0xFE	; 254
     ee0:	80 83       	st	Z, r24
     ee2:	80 91 b1 01 	lds	r24, 0x01B1	; 0x8001b1 <twi_sendStop>
     ee6:	81 11       	cpse	r24, r1
     ee8:	5e cf       	rjmp	.-324    	; 0xda6 <__vector_24+0xa6>
     eea:	81 e0       	ldi	r24, 0x01	; 1
     eec:	80 93 b0 01 	sts	0x01B0, r24	; 0x8001b0 <twi_inRepStart>
     ef0:	84 ea       	ldi	r24, 0xA4	; 164
     ef2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     ef6:	10 92 af 01 	sts	0x01AF, r1	; 0x8001af <twi_state>
     efa:	28 cf       	rjmp	.-432    	; 0xd4c <__vector_24+0x4c>
     efc:	85 ec       	ldi	r24, 0xC5	; 197
     efe:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__DATA_REGION_ORIGIN__+0x5c>
     f02:	10 92 af 01 	sts	0x01AF, r1	; 0x8001af <twi_state>
     f06:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <twi_rxBufferIndex>
     f0a:	80 32       	cpi	r24, 0x20	; 32
     f0c:	30 f4       	brcc	.+12     	; 0xf1a <__vector_24+0x21a>
     f0e:	e0 91 ad 01 	lds	r30, 0x01AD	; 0x8001ad <twi_rxBufferIndex>
     f12:	f0 e0       	ldi	r31, 0x00	; 0
     f14:	e3 57       	subi	r30, 0x73	; 115
     f16:	fe 4f       	sbci	r31, 0xFE	; 254
     f18:	10 82       	st	Z, r1
     f1a:	60 91 ad 01 	lds	r22, 0x01AD	; 0x8001ad <twi_rxBufferIndex>
     f1e:	70 e0       	ldi	r23, 0x00	; 0
     f20:	8d e8       	ldi	r24, 0x8D	; 141
     f22:	91 e0       	ldi	r25, 0x01	; 1
     f24:	f0 e0       	ldi	r31, 0x00	; 0
     f26:	e0 e0       	ldi	r30, 0x00	; 0
     f28:	09 95       	icall
     f2a:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <twi_rxBufferIndex>
     f2e:	0e cf       	rjmp	.-484    	; 0xd4c <__vector_24+0x4c>
     f30:	10 92 ae 01 	sts	0x01AE, r1	; 0x8001ae <twi_error>
     f34:	38 cf       	rjmp	.-400    	; 0xda6 <__vector_24+0xa6>

00000f36 <__vector_2>:
     f36:	1f 92       	push	r1
     f38:	0f 92       	push	r0
     f3a:	0f b6       	in	r0, 0x3f	; 63
     f3c:	0f 92       	push	r0
     f3e:	11 24       	eor	r1, r1
     f40:	8f 93       	push	r24
     f42:	9f 93       	push	r25
     f44:	af 93       	push	r26
     f46:	bf 93       	push	r27
     f48:	80 91 3d 01 	lds	r24, 0x013D	; 0x80013d <dummy2>
     f4c:	90 91 3e 01 	lds	r25, 0x013E	; 0x80013e <dummy2+0x1>
     f50:	a0 91 3f 01 	lds	r26, 0x013F	; 0x80013f <dummy2+0x2>
     f54:	b0 91 40 01 	lds	r27, 0x0140	; 0x800140 <dummy2+0x3>
     f58:	01 96       	adiw	r24, 0x01	; 1
     f5a:	a1 1d       	adc	r26, r1
     f5c:	b1 1d       	adc	r27, r1
     f5e:	80 93 3d 01 	sts	0x013D, r24	; 0x80013d <dummy2>
     f62:	90 93 3e 01 	sts	0x013E, r25	; 0x80013e <dummy2+0x1>
     f66:	a0 93 3f 01 	sts	0x013F, r26	; 0x80013f <dummy2+0x2>
     f6a:	b0 93 40 01 	sts	0x0140, r27	; 0x800140 <dummy2+0x3>
     f6e:	bf 91       	pop	r27
     f70:	af 91       	pop	r26
     f72:	9f 91       	pop	r25
     f74:	8f 91       	pop	r24
     f76:	0f 90       	pop	r0
     f78:	0f be       	out	0x3f, r0	; 63
     f7a:	0f 90       	pop	r0
     f7c:	1f 90       	pop	r1
     f7e:	18 95       	reti

00000f80 <__vector_1>:
     f80:	1f 92       	push	r1
     f82:	0f 92       	push	r0
     f84:	0f b6       	in	r0, 0x3f	; 63
     f86:	0f 92       	push	r0
     f88:	11 24       	eor	r1, r1
     f8a:	8f 93       	push	r24
     f8c:	9f 93       	push	r25
     f8e:	af 93       	push	r26
     f90:	bf 93       	push	r27
     f92:	80 91 39 01 	lds	r24, 0x0139	; 0x800139 <dummy1>
     f96:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <dummy1+0x1>
     f9a:	a0 91 3b 01 	lds	r26, 0x013B	; 0x80013b <dummy1+0x2>
     f9e:	b0 91 3c 01 	lds	r27, 0x013C	; 0x80013c <dummy1+0x3>
     fa2:	01 96       	adiw	r24, 0x01	; 1
     fa4:	a1 1d       	adc	r26, r1
     fa6:	b1 1d       	adc	r27, r1
     fa8:	80 93 39 01 	sts	0x0139, r24	; 0x800139 <dummy1>
     fac:	90 93 3a 01 	sts	0x013A, r25	; 0x80013a <dummy1+0x1>
     fb0:	a0 93 3b 01 	sts	0x013B, r26	; 0x80013b <dummy1+0x2>
     fb4:	b0 93 3c 01 	sts	0x013C, r27	; 0x80013c <dummy1+0x3>
     fb8:	bf 91       	pop	r27
     fba:	af 91       	pop	r26
     fbc:	9f 91       	pop	r25
     fbe:	8f 91       	pop	r24
     fc0:	0f 90       	pop	r0
     fc2:	0f be       	out	0x3f, r0	; 63
     fc4:	0f 90       	pop	r0
     fc6:	1f 90       	pop	r1
     fc8:	18 95       	reti

00000fca <_GLOBAL__I_65535_0_LiquidCrystal_I2C.cpp.o.2208>:
     fca:	e4 e0       	ldi	r30, 0x04	; 4
     fcc:	f2 e0       	ldi	r31, 0x02	; 2
     fce:	13 82       	std	Z+3, r1	; 0x03
     fd0:	12 82       	std	Z+2, r1	; 0x02
     fd2:	88 ee       	ldi	r24, 0xE8	; 232
     fd4:	93 e0       	ldi	r25, 0x03	; 3
     fd6:	a0 e0       	ldi	r26, 0x00	; 0
     fd8:	b0 e0       	ldi	r27, 0x00	; 0
     fda:	84 83       	std	Z+4, r24	; 0x04
     fdc:	95 83       	std	Z+5, r25	; 0x05
     fde:	a6 83       	std	Z+6, r26	; 0x06
     fe0:	b7 83       	std	Z+7, r27	; 0x07
     fe2:	24 e0       	ldi	r18, 0x04	; 4
     fe4:	31 e0       	ldi	r19, 0x01	; 1
     fe6:	31 83       	std	Z+1, r19	; 0x01
     fe8:	20 83       	st	Z, r18
     fea:	25 ec       	ldi	r18, 0xC5	; 197
     fec:	30 e0       	ldi	r19, 0x00	; 0
     fee:	35 87       	std	Z+13, r19	; 0x0d
     ff0:	24 87       	std	Z+12, r18	; 0x0c
     ff2:	24 ec       	ldi	r18, 0xC4	; 196
     ff4:	30 e0       	ldi	r19, 0x00	; 0
     ff6:	37 87       	std	Z+15, r19	; 0x0f
     ff8:	26 87       	std	Z+14, r18	; 0x0e
     ffa:	20 ec       	ldi	r18, 0xC0	; 192
     ffc:	30 e0       	ldi	r19, 0x00	; 0
     ffe:	31 8b       	std	Z+17, r19	; 0x11
    1000:	20 8b       	std	Z+16, r18	; 0x10
    1002:	21 ec       	ldi	r18, 0xC1	; 193
    1004:	30 e0       	ldi	r19, 0x00	; 0
    1006:	33 8b       	std	Z+19, r19	; 0x13
    1008:	22 8b       	std	Z+18, r18	; 0x12
    100a:	22 ec       	ldi	r18, 0xC2	; 194
    100c:	30 e0       	ldi	r19, 0x00	; 0
    100e:	35 8b       	std	Z+21, r19	; 0x15
    1010:	24 8b       	std	Z+20, r18	; 0x14
    1012:	26 ec       	ldi	r18, 0xC6	; 198
    1014:	30 e0       	ldi	r19, 0x00	; 0
    1016:	37 8b       	std	Z+23, r19	; 0x17
    1018:	26 8b       	std	Z+22, r18	; 0x16
    101a:	11 8e       	std	Z+25, r1	; 0x19
    101c:	12 8e       	std	Z+26, r1	; 0x1a
    101e:	13 8e       	std	Z+27, r1	; 0x1b
    1020:	14 8e       	std	Z+28, r1	; 0x1c
    1022:	e1 ea       	ldi	r30, 0xA1	; 161
    1024:	f2 e0       	ldi	r31, 0x02	; 2
    1026:	13 82       	std	Z+3, r1	; 0x03
    1028:	12 82       	std	Z+2, r1	; 0x02
    102a:	84 83       	std	Z+4, r24	; 0x04
    102c:	95 83       	std	Z+5, r25	; 0x05
    102e:	a6 83       	std	Z+6, r26	; 0x06
    1030:	b7 83       	std	Z+7, r27	; 0x07
    1032:	86 e1       	ldi	r24, 0x16	; 22
    1034:	91 e0       	ldi	r25, 0x01	; 1
    1036:	91 83       	std	Z+1, r25	; 0x01
    1038:	80 83       	st	Z, r24
    103a:	ed ea       	ldi	r30, 0xAD	; 173
    103c:	f2 e0       	ldi	r31, 0x02	; 2
    103e:	13 82       	std	Z+3, r1	; 0x03
    1040:	12 82       	std	Z+2, r1	; 0x02
    1042:	88 e2       	ldi	r24, 0x28	; 40
    1044:	91 e0       	ldi	r25, 0x01	; 1
    1046:	91 83       	std	Z+1, r25	; 0x01
    1048:	80 83       	st	Z, r24
    104a:	11 86       	std	Z+9, r1	; 0x09
    104c:	87 e2       	ldi	r24, 0x27	; 39
    104e:	84 83       	std	Z+4, r24	; 0x04
    1050:	84 e1       	ldi	r24, 0x14	; 20
    1052:	82 87       	std	Z+10, r24	; 0x0a
    1054:	84 e0       	ldi	r24, 0x04	; 4
    1056:	83 87       	std	Z+11, r24	; 0x0b
    1058:	14 86       	std	Z+12, r1	; 0x0c
    105a:	08 95       	ret

0000105c <main>:
    105c:	cf 93       	push	r28
    105e:	df 93       	push	r29
    1060:	cd b7       	in	r28, 0x3d	; 61
    1062:	de b7       	in	r29, 0x3e	; 62
    1064:	c0 51       	subi	r28, 0x10	; 16
    1066:	d1 40       	sbci	r29, 0x01	; 1
    1068:	0f b6       	in	r0, 0x3f	; 63
    106a:	f8 94       	cli
    106c:	de bf       	out	0x3e, r29	; 62
    106e:	0f be       	out	0x3f, r0	; 63
    1070:	cd bf       	out	0x3d, r28	; 61
    1072:	0f b6       	in	r0, 0x3f	; 63
    1074:	f8 94       	cli
    1076:	a8 95       	wdr
    1078:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    107c:	88 61       	ori	r24, 0x18	; 24
    107e:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
    1082:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
    1086:	0f be       	out	0x3f, r0	; 63
    1088:	78 94       	sei
    108a:	84 b5       	in	r24, 0x24	; 36
    108c:	82 60       	ori	r24, 0x02	; 2
    108e:	84 bd       	out	0x24, r24	; 36
    1090:	84 b5       	in	r24, 0x24	; 36
    1092:	81 60       	ori	r24, 0x01	; 1
    1094:	84 bd       	out	0x24, r24	; 36
    1096:	85 b5       	in	r24, 0x25	; 37
    1098:	82 60       	ori	r24, 0x02	; 2
    109a:	85 bd       	out	0x25, r24	; 37
    109c:	85 b5       	in	r24, 0x25	; 37
    109e:	81 60       	ori	r24, 0x01	; 1
    10a0:	85 bd       	out	0x25, r24	; 37
    10a2:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    10a6:	81 60       	ori	r24, 0x01	; 1
    10a8:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    10ac:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    10b0:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    10b4:	82 60       	ori	r24, 0x02	; 2
    10b6:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    10ba:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    10be:	81 60       	ori	r24, 0x01	; 1
    10c0:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    10c4:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    10c8:	81 60       	ori	r24, 0x01	; 1
    10ca:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    10ce:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
    10d2:	84 60       	ori	r24, 0x04	; 4
    10d4:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
    10d8:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
    10dc:	81 60       	ori	r24, 0x01	; 1
    10de:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
    10e2:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    10e6:	84 60       	ori	r24, 0x04	; 4
    10e8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    10ec:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    10f0:	82 60       	ori	r24, 0x02	; 2
    10f2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    10f6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    10fa:	81 60       	ori	r24, 0x01	; 1
    10fc:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1100:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1104:	80 68       	ori	r24, 0x80	; 128
    1106:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    110a:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    110e:	80 91 69 00 	lds	r24, 0x0069	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
    1112:	83 60       	ori	r24, 0x03	; 3
    1114:	80 93 69 00 	sts	0x0069, r24	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
    1118:	80 91 69 00 	lds	r24, 0x0069	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
    111c:	88 60       	ori	r24, 0x08	; 8
    111e:	80 93 69 00 	sts	0x0069, r24	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
    1122:	8d b3       	in	r24, 0x1d	; 29
    1124:	83 60       	ori	r24, 0x03	; 3
    1126:	8d bb       	out	0x1d, r24	; 29
    1128:	78 94       	sei
    112a:	c1 5f       	subi	r28, 0xF1	; 241
    112c:	de 4f       	sbci	r29, 0xFE	; 254
    112e:	19 82       	std	Y+1, r1	; 0x01
    1130:	18 82       	st	Y, r1
    1132:	cf 50       	subi	r28, 0x0F	; 15
    1134:	d1 40       	sbci	r29, 0x01	; 1
    1136:	cf 5f       	subi	r28, 0xFF	; 255
    1138:	de 4f       	sbci	r29, 0xFE	; 254
    113a:	18 82       	st	Y, r1
    113c:	c1 50       	subi	r28, 0x01	; 1
    113e:	d1 40       	sbci	r29, 0x01	; 1
    1140:	ce 5f       	subi	r28, 0xFE	; 254
    1142:	de 4f       	sbci	r29, 0xFE	; 254
    1144:	18 82       	st	Y, r1
    1146:	c2 50       	subi	r28, 0x02	; 2
    1148:	d1 40       	sbci	r29, 0x01	; 1
    114a:	cd 5f       	subi	r28, 0xFD	; 253
    114c:	de 4f       	sbci	r29, 0xFE	; 254
    114e:	18 82       	st	Y, r1
    1150:	c3 50       	subi	r28, 0x03	; 3
    1152:	d1 40       	sbci	r29, 0x01	; 1
    1154:	cc 5f       	subi	r28, 0xFC	; 252
    1156:	de 4f       	sbci	r29, 0xFE	; 254
    1158:	18 82       	st	Y, r1
    115a:	c4 50       	subi	r28, 0x04	; 4
    115c:	d1 40       	sbci	r29, 0x01	; 1
    115e:	cb 5f       	subi	r28, 0xFB	; 251
    1160:	de 4f       	sbci	r29, 0xFE	; 254
    1162:	18 82       	st	Y, r1
    1164:	c5 50       	subi	r28, 0x05	; 5
    1166:	d1 40       	sbci	r29, 0x01	; 1
    1168:	ca 5f       	subi	r28, 0xFA	; 250
    116a:	de 4f       	sbci	r29, 0xFE	; 254
    116c:	18 82       	st	Y, r1
    116e:	c6 50       	subi	r28, 0x06	; 6
    1170:	d1 40       	sbci	r29, 0x01	; 1
    1172:	c9 5f       	subi	r28, 0xF9	; 249
    1174:	de 4f       	sbci	r29, 0xFE	; 254
    1176:	18 82       	st	Y, r1
    1178:	c7 50       	subi	r28, 0x07	; 7
    117a:	d1 40       	sbci	r29, 0x01	; 1
    117c:	c8 5f       	subi	r28, 0xF8	; 248
    117e:	de 4f       	sbci	r29, 0xFE	; 254
    1180:	18 82       	st	Y, r1
    1182:	c8 50       	subi	r28, 0x08	; 8
    1184:	d1 40       	sbci	r29, 0x01	; 1
    1186:	80 91 d5 01 	lds	r24, 0x01D5	; 0x8001d5 <ServoCount>
    118a:	8c 30       	cpi	r24, 0x0C	; 12
    118c:	08 f4       	brcc	.+2      	; 0x1190 <main+0x134>
    118e:	31 c1       	rjmp	.+610    	; 0x13f2 <main+0x396>
    1190:	8f ef       	ldi	r24, 0xFF	; 255
    1192:	c7 5f       	subi	r28, 0xF7	; 247
    1194:	de 4f       	sbci	r29, 0xFE	; 254
    1196:	88 83       	st	Y, r24
    1198:	c9 50       	subi	r28, 0x09	; 9
    119a:	d1 40       	sbci	r29, 0x01	; 1
    119c:	80 91 d5 01 	lds	r24, 0x01D5	; 0x8001d5 <ServoCount>
    11a0:	8c 30       	cpi	r24, 0x0C	; 12
    11a2:	08 f4       	brcc	.+2      	; 0x11a6 <main+0x14a>
    11a4:	3c c1       	rjmp	.+632    	; 0x141e <main+0x3c2>
    11a6:	8f ef       	ldi	r24, 0xFF	; 255
    11a8:	c4 5f       	subi	r28, 0xF4	; 244
    11aa:	de 4f       	sbci	r29, 0xFE	; 254
    11ac:	88 83       	st	Y, r24
    11ae:	cc 50       	subi	r28, 0x0C	; 12
    11b0:	d1 40       	sbci	r29, 0x01	; 1
    11b2:	e0 91 14 02 	lds	r30, 0x0214	; 0x800214 <Serial+0x10>
    11b6:	f0 91 15 02 	lds	r31, 0x0215	; 0x800215 <Serial+0x11>
    11ba:	82 e0       	ldi	r24, 0x02	; 2
    11bc:	80 83       	st	Z, r24
    11be:	e0 91 10 02 	lds	r30, 0x0210	; 0x800210 <Serial+0xc>
    11c2:	f0 91 11 02 	lds	r31, 0x0211	; 0x800211 <Serial+0xd>
    11c6:	10 82       	st	Z, r1
    11c8:	e0 91 12 02 	lds	r30, 0x0212	; 0x800212 <Serial+0xe>
    11cc:	f0 91 13 02 	lds	r31, 0x0213	; 0x800213 <Serial+0xf>
    11d0:	8f ec       	ldi	r24, 0xCF	; 207
    11d2:	80 83       	st	Z, r24
    11d4:	10 92 1c 02 	sts	0x021C, r1	; 0x80021c <Serial+0x18>
    11d8:	e0 91 18 02 	lds	r30, 0x0218	; 0x800218 <Serial+0x14>
    11dc:	f0 91 19 02 	lds	r31, 0x0219	; 0x800219 <Serial+0x15>
    11e0:	86 e0       	ldi	r24, 0x06	; 6
    11e2:	80 83       	st	Z, r24
    11e4:	e0 91 16 02 	lds	r30, 0x0216	; 0x800216 <Serial+0x12>
    11e8:	f0 91 17 02 	lds	r31, 0x0217	; 0x800217 <Serial+0x13>
    11ec:	80 81       	ld	r24, Z
    11ee:	80 61       	ori	r24, 0x10	; 16
    11f0:	80 83       	st	Z, r24
    11f2:	e0 91 16 02 	lds	r30, 0x0216	; 0x800216 <Serial+0x12>
    11f6:	f0 91 17 02 	lds	r31, 0x0217	; 0x800217 <Serial+0x13>
    11fa:	80 81       	ld	r24, Z
    11fc:	88 60       	ori	r24, 0x08	; 8
    11fe:	80 83       	st	Z, r24
    1200:	e0 91 16 02 	lds	r30, 0x0216	; 0x800216 <Serial+0x12>
    1204:	f0 91 17 02 	lds	r31, 0x0217	; 0x800217 <Serial+0x13>
    1208:	80 81       	ld	r24, Z
    120a:	80 68       	ori	r24, 0x80	; 128
    120c:	80 83       	st	Z, r24
    120e:	e0 91 16 02 	lds	r30, 0x0216	; 0x800216 <Serial+0x12>
    1212:	f0 91 17 02 	lds	r31, 0x0217	; 0x800217 <Serial+0x13>
    1216:	80 81       	ld	r24, Z
    1218:	8f 7d       	andi	r24, 0xDF	; 223
    121a:	80 83       	st	Z, r24
    121c:	68 e0       	ldi	r22, 0x08	; 8
    121e:	70 e0       	ldi	r23, 0x00	; 0
    1220:	ce 01       	movw	r24, r28
    1222:	87 5f       	subi	r24, 0xF7	; 247
    1224:	9e 4f       	sbci	r25, 0xFE	; 254
    1226:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN5Servo6attachEi>
    122a:	69 e0       	ldi	r22, 0x09	; 9
    122c:	70 e0       	ldi	r23, 0x00	; 0
    122e:	39 e0       	ldi	r19, 0x09	; 9
    1230:	e3 2e       	mov	r14, r19
    1232:	ff 24       	eor	r15, r15
    1234:	f3 94       	inc	r15
    1236:	ec 0e       	add	r14, r28
    1238:	fd 1e       	adc	r15, r29
    123a:	83 e0       	ldi	r24, 0x03	; 3
    123c:	e8 0e       	add	r14, r24
    123e:	f1 1c       	adc	r15, r1
    1240:	c7 01       	movw	r24, r14
    1242:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN5Servo6attachEi>
    1246:	10 e0       	ldi	r17, 0x00	; 0
    1248:	00 e0       	ldi	r16, 0x00	; 0
    124a:	5e 2c       	mov	r5, r14
    124c:	4f 2c       	mov	r4, r15
    124e:	40 e3       	ldi	r20, 0x30	; 48
    1250:	64 2e       	mov	r6, r20
    1252:	41 e0       	ldi	r20, 0x01	; 1
    1254:	74 2e       	mov	r7, r20
    1256:	ce 01       	movw	r24, r28
    1258:	01 96       	adiw	r24, 0x01	; 1
    125a:	7c 01       	movw	r14, r24
    125c:	50 e0       	ldi	r21, 0x00	; 0
    125e:	a5 2e       	mov	r10, r21
    1260:	50 e0       	ldi	r21, 0x00	; 0
    1262:	b5 2e       	mov	r11, r21
    1264:	2e e1       	ldi	r18, 0x1E	; 30
    1266:	c2 2e       	mov	r12, r18
    1268:	d1 2c       	mov	r13, r1
    126a:	b8 01       	movw	r22, r16
    126c:	84 e0       	ldi	r24, 0x04	; 4
    126e:	76 95       	lsr	r23
    1270:	67 95       	ror	r22
    1272:	8a 95       	dec	r24
    1274:	e1 f7       	brne	.-8      	; 0x126e <main+0x212>
    1276:	ce 01       	movw	r24, r28
    1278:	87 5f       	subi	r24, 0xF7	; 247
    127a:	9e 4f       	sbci	r25, 0xFE	; 254
    127c:	0e 94 05 02 	call	0x40a	; 0x40a <_ZN5Servo5writeEi>
    1280:	48 01       	movw	r8, r16
    1282:	92 e0       	ldi	r25, 0x02	; 2
    1284:	89 0e       	add	r8, r25
    1286:	91 1c       	adc	r9, r1
    1288:	b8 01       	movw	r22, r16
    128a:	6f 5f       	subi	r22, 0xFF	; 255
    128c:	7f 4f       	sbci	r23, 0xFF	; 255
    128e:	94 e0       	ldi	r25, 0x04	; 4
    1290:	76 95       	lsr	r23
    1292:	67 95       	ror	r22
    1294:	9a 95       	dec	r25
    1296:	e1 f7       	brne	.-8      	; 0x1290 <main+0x234>
    1298:	85 2d       	mov	r24, r5
    129a:	94 2d       	mov	r25, r4
    129c:	0e 94 05 02 	call	0x40a	; 0x40a <_ZN5Servo5writeEi>
    12a0:	84 01       	movw	r16, r8
    12a2:	1f 73       	andi	r17, 0x3F	; 63
    12a4:	81 e0       	ldi	r24, 0x01	; 1
    12a6:	c8 1a       	sub	r12, r24
    12a8:	d1 08       	sbc	r13, r1
    12aa:	f9 f6       	brne	.-66     	; 0x126a <main+0x20e>
    12ac:	f0 e0       	ldi	r31, 0x00	; 0
    12ae:	e0 e0       	ldi	r30, 0x00	; 0
    12b0:	cf 5f       	subi	r28, 0xFF	; 255
    12b2:	de 4f       	sbci	r29, 0xFE	; 254
    12b4:	28 81       	ld	r18, Y
    12b6:	c1 50       	subi	r28, 0x01	; 1
    12b8:	d1 40       	sbci	r29, 0x01	; 1
    12ba:	ce 5f       	subi	r28, 0xFE	; 254
    12bc:	de 4f       	sbci	r29, 0xFE	; 254
    12be:	38 81       	ld	r19, Y
    12c0:	c2 50       	subi	r28, 0x02	; 2
    12c2:	d1 40       	sbci	r29, 0x01	; 1
    12c4:	cd 5f       	subi	r28, 0xFD	; 253
    12c6:	de 4f       	sbci	r29, 0xFE	; 254
    12c8:	48 81       	ld	r20, Y
    12ca:	c3 50       	subi	r28, 0x03	; 3
    12cc:	d1 40       	sbci	r29, 0x01	; 1
    12ce:	cc 5f       	subi	r28, 0xFC	; 252
    12d0:	de 4f       	sbci	r29, 0xFE	; 254
    12d2:	58 81       	ld	r21, Y
    12d4:	c4 50       	subi	r28, 0x04	; 4
    12d6:	d1 40       	sbci	r29, 0x01	; 1
    12d8:	cb 5f       	subi	r28, 0xFB	; 251
    12da:	de 4f       	sbci	r29, 0xFE	; 254
    12dc:	68 81       	ld	r22, Y
    12de:	c5 50       	subi	r28, 0x05	; 5
    12e0:	d1 40       	sbci	r29, 0x01	; 1
    12e2:	ca 5f       	subi	r28, 0xFA	; 250
    12e4:	de 4f       	sbci	r29, 0xFE	; 254
    12e6:	78 81       	ld	r23, Y
    12e8:	c6 50       	subi	r28, 0x06	; 6
    12ea:	d1 40       	sbci	r29, 0x01	; 1
    12ec:	c9 5f       	subi	r28, 0xF9	; 249
    12ee:	de 4f       	sbci	r29, 0xFE	; 254
    12f0:	88 81       	ld	r24, Y
    12f2:	c7 50       	subi	r28, 0x07	; 7
    12f4:	d1 40       	sbci	r29, 0x01	; 1
    12f6:	c8 5f       	subi	r28, 0xF8	; 248
    12f8:	de 4f       	sbci	r29, 0xFE	; 254
    12fa:	98 81       	ld	r25, Y
    12fc:	c8 50       	subi	r28, 0x08	; 8
    12fe:	d1 40       	sbci	r29, 0x01	; 1
    1300:	a1 e0       	ldi	r26, 0x01	; 1
    1302:	0e 94 94 0a 	call	0x1528	; 0x1528 <__adddi3_s8>
    1306:	cf 5f       	subi	r28, 0xFF	; 255
    1308:	de 4f       	sbci	r29, 0xFE	; 254
    130a:	28 83       	st	Y, r18
    130c:	c1 50       	subi	r28, 0x01	; 1
    130e:	d1 40       	sbci	r29, 0x01	; 1
    1310:	ce 5f       	subi	r28, 0xFE	; 254
    1312:	de 4f       	sbci	r29, 0xFE	; 254
    1314:	38 83       	st	Y, r19
    1316:	c2 50       	subi	r28, 0x02	; 2
    1318:	d1 40       	sbci	r29, 0x01	; 1
    131a:	cd 5f       	subi	r28, 0xFD	; 253
    131c:	de 4f       	sbci	r29, 0xFE	; 254
    131e:	48 83       	st	Y, r20
    1320:	c3 50       	subi	r28, 0x03	; 3
    1322:	d1 40       	sbci	r29, 0x01	; 1
    1324:	cc 5f       	subi	r28, 0xFC	; 252
    1326:	de 4f       	sbci	r29, 0xFE	; 254
    1328:	58 83       	st	Y, r21
    132a:	c4 50       	subi	r28, 0x04	; 4
    132c:	d1 40       	sbci	r29, 0x01	; 1
    132e:	cb 5f       	subi	r28, 0xFB	; 251
    1330:	de 4f       	sbci	r29, 0xFE	; 254
    1332:	68 83       	st	Y, r22
    1334:	c5 50       	subi	r28, 0x05	; 5
    1336:	d1 40       	sbci	r29, 0x01	; 1
    1338:	ca 5f       	subi	r28, 0xFA	; 250
    133a:	de 4f       	sbci	r29, 0xFE	; 254
    133c:	78 83       	st	Y, r23
    133e:	c6 50       	subi	r28, 0x06	; 6
    1340:	d1 40       	sbci	r29, 0x01	; 1
    1342:	c9 5f       	subi	r28, 0xF9	; 249
    1344:	de 4f       	sbci	r29, 0xFE	; 254
    1346:	88 83       	st	Y, r24
    1348:	c7 50       	subi	r28, 0x07	; 7
    134a:	d1 40       	sbci	r29, 0x01	; 1
    134c:	c8 5f       	subi	r28, 0xF8	; 248
    134e:	de 4f       	sbci	r29, 0xFE	; 254
    1350:	98 83       	st	Y, r25
    1352:	c8 50       	subi	r28, 0x08	; 8
    1354:	d1 40       	sbci	r29, 0x01	; 1
    1356:	31 97       	sbiw	r30, 0x01	; 1
    1358:	09 f0       	breq	.+2      	; 0x135c <main+0x300>
    135a:	aa cf       	rjmp	.-172    	; 0x12b0 <main+0x254>
    135c:	c1 5f       	subi	r28, 0xF1	; 241
    135e:	de 4f       	sbci	r29, 0xFE	; 254
    1360:	88 81       	ld	r24, Y
    1362:	99 81       	ldd	r25, Y+1	; 0x01
    1364:	cf 50       	subi	r28, 0x0F	; 15
    1366:	d1 40       	sbci	r29, 0x01	; 1
    1368:	01 96       	adiw	r24, 0x01	; 1
    136a:	c1 5f       	subi	r28, 0xF1	; 241
    136c:	de 4f       	sbci	r29, 0xFE	; 254
    136e:	99 83       	std	Y+1, r25	; 0x01
    1370:	88 83       	st	Y, r24
    1372:	cf 50       	subi	r28, 0x0F	; 15
    1374:	d1 40       	sbci	r29, 0x01	; 1
    1376:	c1 5f       	subi	r28, 0xF1	; 241
    1378:	de 4f       	sbci	r29, 0xFE	; 254
    137a:	28 81       	ld	r18, Y
    137c:	39 81       	ldd	r19, Y+1	; 0x01
    137e:	cf 50       	subi	r28, 0x0F	; 15
    1380:	d1 40       	sbci	r29, 0x01	; 1
    1382:	4f b7       	in	r20, 0x3f	; 63
    1384:	f8 94       	cli
    1386:	80 91 fc 01 	lds	r24, 0x01FC	; 0x8001fc <timer0_millis>
    138a:	90 91 fd 01 	lds	r25, 0x01FD	; 0x8001fd <timer0_millis+0x1>
    138e:	a0 91 fe 01 	lds	r26, 0x01FE	; 0x8001fe <timer0_millis+0x2>
    1392:	b0 91 ff 01 	lds	r27, 0x01FF	; 0x8001ff <timer0_millis+0x3>
    1396:	4f bf       	out	0x3f, r20	; 63
    1398:	3f 93       	push	r19
    139a:	2f 93       	push	r18
    139c:	bf 93       	push	r27
    139e:	af 93       	push	r26
    13a0:	9f 93       	push	r25
    13a2:	8f 93       	push	r24
    13a4:	7f 92       	push	r7
    13a6:	6f 92       	push	r6
    13a8:	81 e0       	ldi	r24, 0x01	; 1
    13aa:	8f 93       	push	r24
    13ac:	1f 92       	push	r1
    13ae:	ff 92       	push	r15
    13b0:	ef 92       	push	r14
    13b2:	0e 94 a6 0a 	call	0x154c	; 0x154c <snprintf>
    13b6:	f7 01       	movw	r30, r14
    13b8:	01 90       	ld	r0, Z+
    13ba:	00 20       	and	r0, r0
    13bc:	e9 f7       	brne	.-6      	; 0x13b8 <main+0x35c>
    13be:	31 97       	sbiw	r30, 0x01	; 1
    13c0:	af 01       	movw	r20, r30
    13c2:	4e 19       	sub	r20, r14
    13c4:	5f 09       	sbc	r21, r15
    13c6:	b7 01       	movw	r22, r14
    13c8:	84 e0       	ldi	r24, 0x04	; 4
    13ca:	92 e0       	ldi	r25, 0x02	; 2
    13cc:	0e 94 f8 00 	call	0x1f0	; 0x1f0 <_ZN5Print5writeEPKhj>
    13d0:	0f b6       	in	r0, 0x3f	; 63
    13d2:	f8 94       	cli
    13d4:	de bf       	out	0x3e, r29	; 62
    13d6:	0f be       	out	0x3f, r0	; 63
    13d8:	cd bf       	out	0x3d, r28	; 61
    13da:	a1 14       	cp	r10, r1
    13dc:	b1 04       	cpc	r11, r1
    13de:	09 f4       	brne	.+2      	; 0x13e2 <main+0x386>
    13e0:	41 cf       	rjmp	.-382    	; 0x1264 <main+0x208>
    13e2:	0e 94 62 01 	call	0x2c4	; 0x2c4 <_Z17Serial0_availablev>
    13e6:	88 23       	and	r24, r24
    13e8:	09 f4       	brne	.+2      	; 0x13ec <main+0x390>
    13ea:	3c cf       	rjmp	.-392    	; 0x1264 <main+0x208>
    13ec:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    13f0:	39 cf       	rjmp	.-398    	; 0x1264 <main+0x208>
    13f2:	91 e0       	ldi	r25, 0x01	; 1
    13f4:	98 0f       	add	r25, r24
    13f6:	90 93 d5 01 	sts	0x01D5, r25	; 0x8001d5 <ServoCount>
    13fa:	c7 5f       	subi	r28, 0xF7	; 247
    13fc:	de 4f       	sbci	r29, 0xFE	; 254
    13fe:	88 83       	st	Y, r24
    1400:	c9 50       	subi	r28, 0x09	; 9
    1402:	d1 40       	sbci	r29, 0x01	; 1
    1404:	90 e0       	ldi	r25, 0x00	; 0
    1406:	fc 01       	movw	r30, r24
    1408:	ee 0f       	add	r30, r30
    140a:	ff 1f       	adc	r31, r31
    140c:	e8 0f       	add	r30, r24
    140e:	f9 1f       	adc	r31, r25
    1410:	e9 52       	subi	r30, 0x29	; 41
    1412:	fe 4f       	sbci	r31, 0xFE	; 254
    1414:	88 eb       	ldi	r24, 0xB8	; 184
    1416:	9b e0       	ldi	r25, 0x0B	; 11
    1418:	92 83       	std	Z+2, r25	; 0x02
    141a:	81 83       	std	Z+1, r24	; 0x01
    141c:	bf ce       	rjmp	.-642    	; 0x119c <main+0x140>
    141e:	91 e0       	ldi	r25, 0x01	; 1
    1420:	98 0f       	add	r25, r24
    1422:	90 93 d5 01 	sts	0x01D5, r25	; 0x8001d5 <ServoCount>
    1426:	c4 5f       	subi	r28, 0xF4	; 244
    1428:	de 4f       	sbci	r29, 0xFE	; 254
    142a:	88 83       	st	Y, r24
    142c:	cc 50       	subi	r28, 0x0C	; 12
    142e:	d1 40       	sbci	r29, 0x01	; 1
    1430:	90 e0       	ldi	r25, 0x00	; 0
    1432:	fc 01       	movw	r30, r24
    1434:	ee 0f       	add	r30, r30
    1436:	ff 1f       	adc	r31, r31
    1438:	e8 0f       	add	r30, r24
    143a:	f9 1f       	adc	r31, r25
    143c:	e9 52       	subi	r30, 0x29	; 41
    143e:	fe 4f       	sbci	r31, 0xFE	; 254
    1440:	88 eb       	ldi	r24, 0xB8	; 184
    1442:	9b e0       	ldi	r25, 0x0B	; 11
    1444:	92 83       	std	Z+2, r25	; 0x02
    1446:	81 83       	std	Z+1, r24	; 0x01
    1448:	b4 ce       	rjmp	.-664    	; 0x11b2 <main+0x156>

0000144a <__divmodsi4>:
    144a:	05 2e       	mov	r0, r21
    144c:	97 fb       	bst	r25, 7
    144e:	1e f4       	brtc	.+6      	; 0x1456 <__divmodsi4+0xc>
    1450:	00 94       	com	r0
    1452:	0e 94 3c 0a 	call	0x1478	; 0x1478 <__negsi2>
    1456:	57 fd       	sbrc	r21, 7
    1458:	07 d0       	rcall	.+14     	; 0x1468 <__divmodsi4_neg2>
    145a:	0e 94 57 0a 	call	0x14ae	; 0x14ae <__udivmodsi4>
    145e:	07 fc       	sbrc	r0, 7
    1460:	03 d0       	rcall	.+6      	; 0x1468 <__divmodsi4_neg2>
    1462:	4e f4       	brtc	.+18     	; 0x1476 <__divmodsi4_exit>
    1464:	0c 94 3c 0a 	jmp	0x1478	; 0x1478 <__negsi2>

00001468 <__divmodsi4_neg2>:
    1468:	50 95       	com	r21
    146a:	40 95       	com	r20
    146c:	30 95       	com	r19
    146e:	21 95       	neg	r18
    1470:	3f 4f       	sbci	r19, 0xFF	; 255
    1472:	4f 4f       	sbci	r20, 0xFF	; 255
    1474:	5f 4f       	sbci	r21, 0xFF	; 255

00001476 <__divmodsi4_exit>:
    1476:	08 95       	ret

00001478 <__negsi2>:
    1478:	90 95       	com	r25
    147a:	80 95       	com	r24
    147c:	70 95       	com	r23
    147e:	61 95       	neg	r22
    1480:	7f 4f       	sbci	r23, 0xFF	; 255
    1482:	8f 4f       	sbci	r24, 0xFF	; 255
    1484:	9f 4f       	sbci	r25, 0xFF	; 255
    1486:	08 95       	ret

00001488 <__muluhisi3>:
    1488:	0e 94 79 0a 	call	0x14f2	; 0x14f2 <__umulhisi3>
    148c:	a5 9f       	mul	r26, r21
    148e:	90 0d       	add	r25, r0
    1490:	b4 9f       	mul	r27, r20
    1492:	90 0d       	add	r25, r0
    1494:	a4 9f       	mul	r26, r20
    1496:	80 0d       	add	r24, r0
    1498:	91 1d       	adc	r25, r1
    149a:	11 24       	eor	r1, r1
    149c:	08 95       	ret

0000149e <__mulshisi3>:
    149e:	b7 ff       	sbrs	r27, 7
    14a0:	0c 94 44 0a 	jmp	0x1488	; 0x1488 <__muluhisi3>

000014a4 <__mulohisi3>:
    14a4:	0e 94 44 0a 	call	0x1488	; 0x1488 <__muluhisi3>
    14a8:	82 1b       	sub	r24, r18
    14aa:	93 0b       	sbc	r25, r19
    14ac:	08 95       	ret

000014ae <__udivmodsi4>:
    14ae:	a1 e2       	ldi	r26, 0x21	; 33
    14b0:	1a 2e       	mov	r1, r26
    14b2:	aa 1b       	sub	r26, r26
    14b4:	bb 1b       	sub	r27, r27
    14b6:	fd 01       	movw	r30, r26
    14b8:	0d c0       	rjmp	.+26     	; 0x14d4 <__udivmodsi4_ep>

000014ba <__udivmodsi4_loop>:
    14ba:	aa 1f       	adc	r26, r26
    14bc:	bb 1f       	adc	r27, r27
    14be:	ee 1f       	adc	r30, r30
    14c0:	ff 1f       	adc	r31, r31
    14c2:	a2 17       	cp	r26, r18
    14c4:	b3 07       	cpc	r27, r19
    14c6:	e4 07       	cpc	r30, r20
    14c8:	f5 07       	cpc	r31, r21
    14ca:	20 f0       	brcs	.+8      	; 0x14d4 <__udivmodsi4_ep>
    14cc:	a2 1b       	sub	r26, r18
    14ce:	b3 0b       	sbc	r27, r19
    14d0:	e4 0b       	sbc	r30, r20
    14d2:	f5 0b       	sbc	r31, r21

000014d4 <__udivmodsi4_ep>:
    14d4:	66 1f       	adc	r22, r22
    14d6:	77 1f       	adc	r23, r23
    14d8:	88 1f       	adc	r24, r24
    14da:	99 1f       	adc	r25, r25
    14dc:	1a 94       	dec	r1
    14de:	69 f7       	brne	.-38     	; 0x14ba <__udivmodsi4_loop>
    14e0:	60 95       	com	r22
    14e2:	70 95       	com	r23
    14e4:	80 95       	com	r24
    14e6:	90 95       	com	r25
    14e8:	9b 01       	movw	r18, r22
    14ea:	ac 01       	movw	r20, r24
    14ec:	bd 01       	movw	r22, r26
    14ee:	cf 01       	movw	r24, r30
    14f0:	08 95       	ret

000014f2 <__umulhisi3>:
    14f2:	a2 9f       	mul	r26, r18
    14f4:	b0 01       	movw	r22, r0
    14f6:	b3 9f       	mul	r27, r19
    14f8:	c0 01       	movw	r24, r0
    14fa:	a3 9f       	mul	r26, r19
    14fc:	70 0d       	add	r23, r0
    14fe:	81 1d       	adc	r24, r1
    1500:	11 24       	eor	r1, r1
    1502:	91 1d       	adc	r25, r1
    1504:	b2 9f       	mul	r27, r18
    1506:	70 0d       	add	r23, r0
    1508:	81 1d       	adc	r24, r1
    150a:	11 24       	eor	r1, r1
    150c:	91 1d       	adc	r25, r1
    150e:	08 95       	ret

00001510 <__udivmodqi4>:
    1510:	99 1b       	sub	r25, r25
    1512:	79 e0       	ldi	r23, 0x09	; 9
    1514:	04 c0       	rjmp	.+8      	; 0x151e <__udivmodqi4_ep>

00001516 <__udivmodqi4_loop>:
    1516:	99 1f       	adc	r25, r25
    1518:	96 17       	cp	r25, r22
    151a:	08 f0       	brcs	.+2      	; 0x151e <__udivmodqi4_ep>
    151c:	96 1b       	sub	r25, r22

0000151e <__udivmodqi4_ep>:
    151e:	88 1f       	adc	r24, r24
    1520:	7a 95       	dec	r23
    1522:	c9 f7       	brne	.-14     	; 0x1516 <__udivmodqi4_loop>
    1524:	80 95       	com	r24
    1526:	08 95       	ret

00001528 <__adddi3_s8>:
    1528:	00 24       	eor	r0, r0
    152a:	a7 fd       	sbrc	r26, 7
    152c:	00 94       	com	r0
    152e:	2a 0f       	add	r18, r26
    1530:	30 1d       	adc	r19, r0
    1532:	40 1d       	adc	r20, r0
    1534:	50 1d       	adc	r21, r0
    1536:	60 1d       	adc	r22, r0
    1538:	70 1d       	adc	r23, r0
    153a:	80 1d       	adc	r24, r0
    153c:	90 1d       	adc	r25, r0
    153e:	08 95       	ret

00001540 <__tablejump2__>:
    1540:	ee 0f       	add	r30, r30
    1542:	ff 1f       	adc	r31, r31
    1544:	05 90       	lpm	r0, Z+
    1546:	f4 91       	lpm	r31, Z
    1548:	e0 2d       	mov	r30, r0
    154a:	09 94       	ijmp

0000154c <snprintf>:
    154c:	ae e0       	ldi	r26, 0x0E	; 14
    154e:	b0 e0       	ldi	r27, 0x00	; 0
    1550:	ec ea       	ldi	r30, 0xAC	; 172
    1552:	fa e0       	ldi	r31, 0x0A	; 10
    1554:	0c 94 62 0d 	jmp	0x1ac4	; 0x1ac4 <__prologue_saves__+0x1c>
    1558:	0d 89       	ldd	r16, Y+21	; 0x15
    155a:	1e 89       	ldd	r17, Y+22	; 0x16
    155c:	8f 89       	ldd	r24, Y+23	; 0x17
    155e:	98 8d       	ldd	r25, Y+24	; 0x18
    1560:	26 e0       	ldi	r18, 0x06	; 6
    1562:	2c 83       	std	Y+4, r18	; 0x04
    1564:	1a 83       	std	Y+2, r17	; 0x02
    1566:	09 83       	std	Y+1, r16	; 0x01
    1568:	97 ff       	sbrs	r25, 7
    156a:	02 c0       	rjmp	.+4      	; 0x1570 <snprintf+0x24>
    156c:	80 e0       	ldi	r24, 0x00	; 0
    156e:	90 e8       	ldi	r25, 0x80	; 128
    1570:	01 97       	sbiw	r24, 0x01	; 1
    1572:	9e 83       	std	Y+6, r25	; 0x06
    1574:	8d 83       	std	Y+5, r24	; 0x05
    1576:	ae 01       	movw	r20, r28
    1578:	45 5e       	subi	r20, 0xE5	; 229
    157a:	5f 4f       	sbci	r21, 0xFF	; 255
    157c:	69 8d       	ldd	r22, Y+25	; 0x19
    157e:	7a 8d       	ldd	r23, Y+26	; 0x1a
    1580:	ce 01       	movw	r24, r28
    1582:	01 96       	adiw	r24, 0x01	; 1
    1584:	0e 94 d6 0a 	call	0x15ac	; 0x15ac <vfprintf>
    1588:	4d 81       	ldd	r20, Y+5	; 0x05
    158a:	5e 81       	ldd	r21, Y+6	; 0x06
    158c:	57 fd       	sbrc	r21, 7
    158e:	0a c0       	rjmp	.+20     	; 0x15a4 <snprintf+0x58>
    1590:	2f 81       	ldd	r18, Y+7	; 0x07
    1592:	38 85       	ldd	r19, Y+8	; 0x08
    1594:	42 17       	cp	r20, r18
    1596:	53 07       	cpc	r21, r19
    1598:	0c f4       	brge	.+2      	; 0x159c <snprintf+0x50>
    159a:	9a 01       	movw	r18, r20
    159c:	02 0f       	add	r16, r18
    159e:	13 1f       	adc	r17, r19
    15a0:	f8 01       	movw	r30, r16
    15a2:	10 82       	st	Z, r1
    15a4:	2e 96       	adiw	r28, 0x0e	; 14
    15a6:	e4 e0       	ldi	r30, 0x04	; 4
    15a8:	0c 94 7e 0d 	jmp	0x1afc	; 0x1afc <__epilogue_restores__+0x1c>

000015ac <vfprintf>:
    15ac:	ab e0       	ldi	r26, 0x0B	; 11
    15ae:	b0 e0       	ldi	r27, 0x00	; 0
    15b0:	ec ed       	ldi	r30, 0xDC	; 220
    15b2:	fa e0       	ldi	r31, 0x0A	; 10
    15b4:	0c 94 54 0d 	jmp	0x1aa8	; 0x1aa8 <__prologue_saves__>
    15b8:	7c 01       	movw	r14, r24
    15ba:	3b 01       	movw	r6, r22
    15bc:	8a 01       	movw	r16, r20
    15be:	fc 01       	movw	r30, r24
    15c0:	17 82       	std	Z+7, r1	; 0x07
    15c2:	16 82       	std	Z+6, r1	; 0x06
    15c4:	83 81       	ldd	r24, Z+3	; 0x03
    15c6:	81 ff       	sbrs	r24, 1
    15c8:	c8 c1       	rjmp	.+912    	; 0x195a <vfprintf+0x3ae>
    15ca:	ce 01       	movw	r24, r28
    15cc:	01 96       	adiw	r24, 0x01	; 1
    15ce:	5c 01       	movw	r10, r24
    15d0:	f7 01       	movw	r30, r14
    15d2:	93 81       	ldd	r25, Z+3	; 0x03
    15d4:	f3 01       	movw	r30, r6
    15d6:	93 fd       	sbrc	r25, 3
    15d8:	85 91       	lpm	r24, Z+
    15da:	93 ff       	sbrs	r25, 3
    15dc:	81 91       	ld	r24, Z+
    15de:	3f 01       	movw	r6, r30
    15e0:	88 23       	and	r24, r24
    15e2:	09 f4       	brne	.+2      	; 0x15e6 <vfprintf+0x3a>
    15e4:	53 c1       	rjmp	.+678    	; 0x188c <vfprintf+0x2e0>
    15e6:	85 32       	cpi	r24, 0x25	; 37
    15e8:	39 f4       	brne	.+14     	; 0x15f8 <vfprintf+0x4c>
    15ea:	93 fd       	sbrc	r25, 3
    15ec:	85 91       	lpm	r24, Z+
    15ee:	93 ff       	sbrs	r25, 3
    15f0:	81 91       	ld	r24, Z+
    15f2:	3f 01       	movw	r6, r30
    15f4:	85 32       	cpi	r24, 0x25	; 37
    15f6:	29 f4       	brne	.+10     	; 0x1602 <vfprintf+0x56>
    15f8:	b7 01       	movw	r22, r14
    15fa:	90 e0       	ldi	r25, 0x00	; 0
    15fc:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    1600:	e7 cf       	rjmp	.-50     	; 0x15d0 <vfprintf+0x24>
    1602:	91 2c       	mov	r9, r1
    1604:	21 2c       	mov	r2, r1
    1606:	31 2c       	mov	r3, r1
    1608:	ff e1       	ldi	r31, 0x1F	; 31
    160a:	f3 15       	cp	r31, r3
    160c:	38 f0       	brcs	.+14     	; 0x161c <vfprintf+0x70>
    160e:	8b 32       	cpi	r24, 0x2B	; 43
    1610:	11 f1       	breq	.+68     	; 0x1656 <vfprintf+0xaa>
    1612:	90 f4       	brcc	.+36     	; 0x1638 <vfprintf+0x8c>
    1614:	80 32       	cpi	r24, 0x20	; 32
    1616:	09 f1       	breq	.+66     	; 0x165a <vfprintf+0xae>
    1618:	83 32       	cpi	r24, 0x23	; 35
    161a:	29 f1       	breq	.+74     	; 0x1666 <vfprintf+0xba>
    161c:	37 fc       	sbrc	r3, 7
    161e:	3c c0       	rjmp	.+120    	; 0x1698 <vfprintf+0xec>
    1620:	20 ed       	ldi	r18, 0xD0	; 208
    1622:	28 0f       	add	r18, r24
    1624:	2a 30       	cpi	r18, 0x0A	; 10
    1626:	50 f5       	brcc	.+84     	; 0x167c <vfprintf+0xd0>
    1628:	36 fe       	sbrs	r3, 6
    162a:	20 c0       	rjmp	.+64     	; 0x166c <vfprintf+0xc0>
    162c:	8a e0       	ldi	r24, 0x0A	; 10
    162e:	98 9e       	mul	r9, r24
    1630:	20 0d       	add	r18, r0
    1632:	11 24       	eor	r1, r1
    1634:	92 2e       	mov	r9, r18
    1636:	06 c0       	rjmp	.+12     	; 0x1644 <vfprintf+0x98>
    1638:	8d 32       	cpi	r24, 0x2D	; 45
    163a:	91 f0       	breq	.+36     	; 0x1660 <vfprintf+0xb4>
    163c:	80 33       	cpi	r24, 0x30	; 48
    163e:	71 f7       	brne	.-36     	; 0x161c <vfprintf+0x70>
    1640:	68 94       	set
    1642:	30 f8       	bld	r3, 0
    1644:	f3 01       	movw	r30, r6
    1646:	93 fd       	sbrc	r25, 3
    1648:	85 91       	lpm	r24, Z+
    164a:	93 ff       	sbrs	r25, 3
    164c:	81 91       	ld	r24, Z+
    164e:	3f 01       	movw	r6, r30
    1650:	81 11       	cpse	r24, r1
    1652:	da cf       	rjmp	.-76     	; 0x1608 <vfprintf+0x5c>
    1654:	21 c0       	rjmp	.+66     	; 0x1698 <vfprintf+0xec>
    1656:	68 94       	set
    1658:	31 f8       	bld	r3, 1
    165a:	68 94       	set
    165c:	32 f8       	bld	r3, 2
    165e:	f2 cf       	rjmp	.-28     	; 0x1644 <vfprintf+0x98>
    1660:	68 94       	set
    1662:	33 f8       	bld	r3, 3
    1664:	ef cf       	rjmp	.-34     	; 0x1644 <vfprintf+0x98>
    1666:	68 94       	set
    1668:	34 f8       	bld	r3, 4
    166a:	ec cf       	rjmp	.-40     	; 0x1644 <vfprintf+0x98>
    166c:	ea e0       	ldi	r30, 0x0A	; 10
    166e:	2e 9e       	mul	r2, r30
    1670:	20 0d       	add	r18, r0
    1672:	11 24       	eor	r1, r1
    1674:	22 2e       	mov	r2, r18
    1676:	68 94       	set
    1678:	35 f8       	bld	r3, 5
    167a:	e4 cf       	rjmp	.-56     	; 0x1644 <vfprintf+0x98>
    167c:	8e 32       	cpi	r24, 0x2E	; 46
    167e:	29 f4       	brne	.+10     	; 0x168a <vfprintf+0xde>
    1680:	36 fc       	sbrc	r3, 6
    1682:	04 c1       	rjmp	.+520    	; 0x188c <vfprintf+0x2e0>
    1684:	68 94       	set
    1686:	36 f8       	bld	r3, 6
    1688:	dd cf       	rjmp	.-70     	; 0x1644 <vfprintf+0x98>
    168a:	8c 36       	cpi	r24, 0x6C	; 108
    168c:	19 f4       	brne	.+6      	; 0x1694 <vfprintf+0xe8>
    168e:	68 94       	set
    1690:	37 f8       	bld	r3, 7
    1692:	d8 cf       	rjmp	.-80     	; 0x1644 <vfprintf+0x98>
    1694:	88 36       	cpi	r24, 0x68	; 104
    1696:	b1 f2       	breq	.-84     	; 0x1644 <vfprintf+0x98>
    1698:	98 2f       	mov	r25, r24
    169a:	9f 7d       	andi	r25, 0xDF	; 223
    169c:	95 54       	subi	r25, 0x45	; 69
    169e:	93 30       	cpi	r25, 0x03	; 3
    16a0:	e0 f0       	brcs	.+56     	; 0x16da <vfprintf+0x12e>
    16a2:	83 36       	cpi	r24, 0x63	; 99
    16a4:	a1 f1       	breq	.+104    	; 0x170e <vfprintf+0x162>
    16a6:	83 37       	cpi	r24, 0x73	; 115
    16a8:	c1 f1       	breq	.+112    	; 0x171a <vfprintf+0x16e>
    16aa:	83 35       	cpi	r24, 0x53	; 83
    16ac:	09 f0       	breq	.+2      	; 0x16b0 <vfprintf+0x104>
    16ae:	63 c0       	rjmp	.+198    	; 0x1776 <vfprintf+0x1ca>
    16b0:	28 01       	movw	r4, r16
    16b2:	f2 e0       	ldi	r31, 0x02	; 2
    16b4:	4f 0e       	add	r4, r31
    16b6:	51 1c       	adc	r5, r1
    16b8:	f8 01       	movw	r30, r16
    16ba:	c0 80       	ld	r12, Z
    16bc:	d1 80       	ldd	r13, Z+1	; 0x01
    16be:	69 2d       	mov	r22, r9
    16c0:	70 e0       	ldi	r23, 0x00	; 0
    16c2:	36 fc       	sbrc	r3, 6
    16c4:	02 c0       	rjmp	.+4      	; 0x16ca <vfprintf+0x11e>
    16c6:	6f ef       	ldi	r22, 0xFF	; 255
    16c8:	7f ef       	ldi	r23, 0xFF	; 255
    16ca:	c6 01       	movw	r24, r12
    16cc:	0e 94 b0 0c 	call	0x1960	; 0x1960 <strnlen_P>
    16d0:	4c 01       	movw	r8, r24
    16d2:	68 94       	set
    16d4:	37 f8       	bld	r3, 7
    16d6:	82 01       	movw	r16, r4
    16d8:	0a c0       	rjmp	.+20     	; 0x16ee <vfprintf+0x142>
    16da:	0c 5f       	subi	r16, 0xFC	; 252
    16dc:	1f 4f       	sbci	r17, 0xFF	; 255
    16de:	ff e3       	ldi	r31, 0x3F	; 63
    16e0:	f9 83       	std	Y+1, r31	; 0x01
    16e2:	88 24       	eor	r8, r8
    16e4:	83 94       	inc	r8
    16e6:	91 2c       	mov	r9, r1
    16e8:	65 01       	movw	r12, r10
    16ea:	e8 94       	clt
    16ec:	37 f8       	bld	r3, 7
    16ee:	33 fe       	sbrs	r3, 3
    16f0:	2d c0       	rjmp	.+90     	; 0x174c <vfprintf+0x1a0>
    16f2:	52 2c       	mov	r5, r2
    16f4:	81 14       	cp	r8, r1
    16f6:	91 04       	cpc	r9, r1
    16f8:	71 f5       	brne	.+92     	; 0x1756 <vfprintf+0x1aa>
    16fa:	55 20       	and	r5, r5
    16fc:	09 f4       	brne	.+2      	; 0x1700 <vfprintf+0x154>
    16fe:	68 cf       	rjmp	.-304    	; 0x15d0 <vfprintf+0x24>
    1700:	b7 01       	movw	r22, r14
    1702:	80 e2       	ldi	r24, 0x20	; 32
    1704:	90 e0       	ldi	r25, 0x00	; 0
    1706:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    170a:	5a 94       	dec	r5
    170c:	f6 cf       	rjmp	.-20     	; 0x16fa <vfprintf+0x14e>
    170e:	f8 01       	movw	r30, r16
    1710:	80 81       	ld	r24, Z
    1712:	89 83       	std	Y+1, r24	; 0x01
    1714:	0e 5f       	subi	r16, 0xFE	; 254
    1716:	1f 4f       	sbci	r17, 0xFF	; 255
    1718:	e4 cf       	rjmp	.-56     	; 0x16e2 <vfprintf+0x136>
    171a:	28 01       	movw	r4, r16
    171c:	f2 e0       	ldi	r31, 0x02	; 2
    171e:	4f 0e       	add	r4, r31
    1720:	51 1c       	adc	r5, r1
    1722:	f8 01       	movw	r30, r16
    1724:	c0 80       	ld	r12, Z
    1726:	d1 80       	ldd	r13, Z+1	; 0x01
    1728:	69 2d       	mov	r22, r9
    172a:	70 e0       	ldi	r23, 0x00	; 0
    172c:	36 fc       	sbrc	r3, 6
    172e:	02 c0       	rjmp	.+4      	; 0x1734 <vfprintf+0x188>
    1730:	6f ef       	ldi	r22, 0xFF	; 255
    1732:	7f ef       	ldi	r23, 0xFF	; 255
    1734:	c6 01       	movw	r24, r12
    1736:	0e 94 bb 0c 	call	0x1976	; 0x1976 <strnlen>
    173a:	4c 01       	movw	r8, r24
    173c:	82 01       	movw	r16, r4
    173e:	d5 cf       	rjmp	.-86     	; 0x16ea <vfprintf+0x13e>
    1740:	b7 01       	movw	r22, r14
    1742:	80 e2       	ldi	r24, 0x20	; 32
    1744:	90 e0       	ldi	r25, 0x00	; 0
    1746:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    174a:	2a 94       	dec	r2
    174c:	28 14       	cp	r2, r8
    174e:	19 04       	cpc	r1, r9
    1750:	09 f0       	breq	.+2      	; 0x1754 <vfprintf+0x1a8>
    1752:	b0 f7       	brcc	.-20     	; 0x1740 <vfprintf+0x194>
    1754:	ce cf       	rjmp	.-100    	; 0x16f2 <vfprintf+0x146>
    1756:	f6 01       	movw	r30, r12
    1758:	37 fc       	sbrc	r3, 7
    175a:	85 91       	lpm	r24, Z+
    175c:	37 fe       	sbrs	r3, 7
    175e:	81 91       	ld	r24, Z+
    1760:	6f 01       	movw	r12, r30
    1762:	b7 01       	movw	r22, r14
    1764:	90 e0       	ldi	r25, 0x00	; 0
    1766:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    176a:	51 10       	cpse	r5, r1
    176c:	5a 94       	dec	r5
    176e:	f1 e0       	ldi	r31, 0x01	; 1
    1770:	8f 1a       	sub	r8, r31
    1772:	91 08       	sbc	r9, r1
    1774:	bf cf       	rjmp	.-130    	; 0x16f4 <vfprintf+0x148>
    1776:	84 36       	cpi	r24, 0x64	; 100
    1778:	19 f0       	breq	.+6      	; 0x1780 <vfprintf+0x1d4>
    177a:	89 36       	cpi	r24, 0x69	; 105
    177c:	09 f0       	breq	.+2      	; 0x1780 <vfprintf+0x1d4>
    177e:	77 c0       	rjmp	.+238    	; 0x186e <vfprintf+0x2c2>
    1780:	f8 01       	movw	r30, r16
    1782:	37 fe       	sbrs	r3, 7
    1784:	6b c0       	rjmp	.+214    	; 0x185c <vfprintf+0x2b0>
    1786:	60 81       	ld	r22, Z
    1788:	71 81       	ldd	r23, Z+1	; 0x01
    178a:	82 81       	ldd	r24, Z+2	; 0x02
    178c:	93 81       	ldd	r25, Z+3	; 0x03
    178e:	0c 5f       	subi	r16, 0xFC	; 252
    1790:	1f 4f       	sbci	r17, 0xFF	; 255
    1792:	f3 2d       	mov	r31, r3
    1794:	ff 76       	andi	r31, 0x6F	; 111
    1796:	3f 2e       	mov	r3, r31
    1798:	97 ff       	sbrs	r25, 7
    179a:	09 c0       	rjmp	.+18     	; 0x17ae <vfprintf+0x202>
    179c:	90 95       	com	r25
    179e:	80 95       	com	r24
    17a0:	70 95       	com	r23
    17a2:	61 95       	neg	r22
    17a4:	7f 4f       	sbci	r23, 0xFF	; 255
    17a6:	8f 4f       	sbci	r24, 0xFF	; 255
    17a8:	9f 4f       	sbci	r25, 0xFF	; 255
    17aa:	68 94       	set
    17ac:	37 f8       	bld	r3, 7
    17ae:	2a e0       	ldi	r18, 0x0A	; 10
    17b0:	30 e0       	ldi	r19, 0x00	; 0
    17b2:	a5 01       	movw	r20, r10
    17b4:	0e 94 f6 0c 	call	0x19ec	; 0x19ec <__ultoa_invert>
    17b8:	c8 2e       	mov	r12, r24
    17ba:	ca 18       	sub	r12, r10
    17bc:	8c 2c       	mov	r8, r12
    17be:	43 2c       	mov	r4, r3
    17c0:	36 fe       	sbrs	r3, 6
    17c2:	0c c0       	rjmp	.+24     	; 0x17dc <vfprintf+0x230>
    17c4:	e8 94       	clt
    17c6:	40 f8       	bld	r4, 0
    17c8:	c9 14       	cp	r12, r9
    17ca:	40 f4       	brcc	.+16     	; 0x17dc <vfprintf+0x230>
    17cc:	34 fe       	sbrs	r3, 4
    17ce:	05 c0       	rjmp	.+10     	; 0x17da <vfprintf+0x22e>
    17d0:	32 fc       	sbrc	r3, 2
    17d2:	03 c0       	rjmp	.+6      	; 0x17da <vfprintf+0x22e>
    17d4:	f3 2d       	mov	r31, r3
    17d6:	fe 7e       	andi	r31, 0xEE	; 238
    17d8:	4f 2e       	mov	r4, r31
    17da:	89 2c       	mov	r8, r9
    17dc:	44 fe       	sbrs	r4, 4
    17de:	95 c0       	rjmp	.+298    	; 0x190a <vfprintf+0x35e>
    17e0:	fe 01       	movw	r30, r28
    17e2:	ec 0d       	add	r30, r12
    17e4:	f1 1d       	adc	r31, r1
    17e6:	80 81       	ld	r24, Z
    17e8:	80 33       	cpi	r24, 0x30	; 48
    17ea:	09 f0       	breq	.+2      	; 0x17ee <vfprintf+0x242>
    17ec:	87 c0       	rjmp	.+270    	; 0x18fc <vfprintf+0x350>
    17ee:	24 2d       	mov	r18, r4
    17f0:	29 7e       	andi	r18, 0xE9	; 233
    17f2:	42 2e       	mov	r4, r18
    17f4:	84 2d       	mov	r24, r4
    17f6:	88 70       	andi	r24, 0x08	; 8
    17f8:	58 2e       	mov	r5, r24
    17fa:	43 fc       	sbrc	r4, 3
    17fc:	95 c0       	rjmp	.+298    	; 0x1928 <vfprintf+0x37c>
    17fe:	40 fe       	sbrs	r4, 0
    1800:	8f c0       	rjmp	.+286    	; 0x1920 <vfprintf+0x374>
    1802:	9c 2c       	mov	r9, r12
    1804:	82 14       	cp	r8, r2
    1806:	18 f4       	brcc	.+6      	; 0x180e <vfprintf+0x262>
    1808:	2c 0c       	add	r2, r12
    180a:	92 2c       	mov	r9, r2
    180c:	98 18       	sub	r9, r8
    180e:	44 fe       	sbrs	r4, 4
    1810:	91 c0       	rjmp	.+290    	; 0x1934 <vfprintf+0x388>
    1812:	b7 01       	movw	r22, r14
    1814:	80 e3       	ldi	r24, 0x30	; 48
    1816:	90 e0       	ldi	r25, 0x00	; 0
    1818:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    181c:	42 fe       	sbrs	r4, 2
    181e:	09 c0       	rjmp	.+18     	; 0x1832 <vfprintf+0x286>
    1820:	88 e7       	ldi	r24, 0x78	; 120
    1822:	90 e0       	ldi	r25, 0x00	; 0
    1824:	41 fe       	sbrs	r4, 1
    1826:	02 c0       	rjmp	.+4      	; 0x182c <vfprintf+0x280>
    1828:	88 e5       	ldi	r24, 0x58	; 88
    182a:	90 e0       	ldi	r25, 0x00	; 0
    182c:	b7 01       	movw	r22, r14
    182e:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    1832:	c9 14       	cp	r12, r9
    1834:	08 f4       	brcc	.+2      	; 0x1838 <vfprintf+0x28c>
    1836:	8a c0       	rjmp	.+276    	; 0x194c <vfprintf+0x3a0>
    1838:	ca 94       	dec	r12
    183a:	d1 2c       	mov	r13, r1
    183c:	9f ef       	ldi	r25, 0xFF	; 255
    183e:	c9 1a       	sub	r12, r25
    1840:	d9 0a       	sbc	r13, r25
    1842:	ca 0c       	add	r12, r10
    1844:	db 1c       	adc	r13, r11
    1846:	f6 01       	movw	r30, r12
    1848:	82 91       	ld	r24, -Z
    184a:	6f 01       	movw	r12, r30
    184c:	b7 01       	movw	r22, r14
    184e:	90 e0       	ldi	r25, 0x00	; 0
    1850:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    1854:	ac 14       	cp	r10, r12
    1856:	bd 04       	cpc	r11, r13
    1858:	b1 f7       	brne	.-20     	; 0x1846 <vfprintf+0x29a>
    185a:	4f cf       	rjmp	.-354    	; 0x16fa <vfprintf+0x14e>
    185c:	60 81       	ld	r22, Z
    185e:	71 81       	ldd	r23, Z+1	; 0x01
    1860:	07 2e       	mov	r0, r23
    1862:	00 0c       	add	r0, r0
    1864:	88 0b       	sbc	r24, r24
    1866:	99 0b       	sbc	r25, r25
    1868:	0e 5f       	subi	r16, 0xFE	; 254
    186a:	1f 4f       	sbci	r17, 0xFF	; 255
    186c:	92 cf       	rjmp	.-220    	; 0x1792 <vfprintf+0x1e6>
    186e:	d3 2c       	mov	r13, r3
    1870:	e8 94       	clt
    1872:	d4 f8       	bld	r13, 4
    1874:	2a e0       	ldi	r18, 0x0A	; 10
    1876:	30 e0       	ldi	r19, 0x00	; 0
    1878:	85 37       	cpi	r24, 0x75	; 117
    187a:	39 f1       	breq	.+78     	; 0x18ca <vfprintf+0x31e>
    187c:	23 2d       	mov	r18, r3
    187e:	29 7f       	andi	r18, 0xF9	; 249
    1880:	d2 2e       	mov	r13, r18
    1882:	8f 36       	cpi	r24, 0x6F	; 111
    1884:	01 f1       	breq	.+64     	; 0x18c6 <vfprintf+0x31a>
    1886:	48 f4       	brcc	.+18     	; 0x189a <vfprintf+0x2ee>
    1888:	88 35       	cpi	r24, 0x58	; 88
    188a:	a9 f0       	breq	.+42     	; 0x18b6 <vfprintf+0x30a>
    188c:	f7 01       	movw	r30, r14
    188e:	86 81       	ldd	r24, Z+6	; 0x06
    1890:	97 81       	ldd	r25, Z+7	; 0x07
    1892:	2b 96       	adiw	r28, 0x0b	; 11
    1894:	e2 e1       	ldi	r30, 0x12	; 18
    1896:	0c 94 70 0d 	jmp	0x1ae0	; 0x1ae0 <__epilogue_restores__>
    189a:	80 37       	cpi	r24, 0x70	; 112
    189c:	49 f0       	breq	.+18     	; 0x18b0 <vfprintf+0x304>
    189e:	88 37       	cpi	r24, 0x78	; 120
    18a0:	a9 f7       	brne	.-22     	; 0x188c <vfprintf+0x2e0>
    18a2:	d4 fe       	sbrs	r13, 4
    18a4:	02 c0       	rjmp	.+4      	; 0x18aa <vfprintf+0x2fe>
    18a6:	68 94       	set
    18a8:	d2 f8       	bld	r13, 2
    18aa:	20 e1       	ldi	r18, 0x10	; 16
    18ac:	30 e0       	ldi	r19, 0x00	; 0
    18ae:	0d c0       	rjmp	.+26     	; 0x18ca <vfprintf+0x31e>
    18b0:	68 94       	set
    18b2:	d4 f8       	bld	r13, 4
    18b4:	f6 cf       	rjmp	.-20     	; 0x18a2 <vfprintf+0x2f6>
    18b6:	34 fe       	sbrs	r3, 4
    18b8:	03 c0       	rjmp	.+6      	; 0x18c0 <vfprintf+0x314>
    18ba:	82 2f       	mov	r24, r18
    18bc:	86 60       	ori	r24, 0x06	; 6
    18be:	d8 2e       	mov	r13, r24
    18c0:	20 e1       	ldi	r18, 0x10	; 16
    18c2:	32 e0       	ldi	r19, 0x02	; 2
    18c4:	02 c0       	rjmp	.+4      	; 0x18ca <vfprintf+0x31e>
    18c6:	28 e0       	ldi	r18, 0x08	; 8
    18c8:	30 e0       	ldi	r19, 0x00	; 0
    18ca:	f8 01       	movw	r30, r16
    18cc:	d7 fe       	sbrs	r13, 7
    18ce:	0f c0       	rjmp	.+30     	; 0x18ee <vfprintf+0x342>
    18d0:	60 81       	ld	r22, Z
    18d2:	71 81       	ldd	r23, Z+1	; 0x01
    18d4:	82 81       	ldd	r24, Z+2	; 0x02
    18d6:	93 81       	ldd	r25, Z+3	; 0x03
    18d8:	0c 5f       	subi	r16, 0xFC	; 252
    18da:	1f 4f       	sbci	r17, 0xFF	; 255
    18dc:	a5 01       	movw	r20, r10
    18de:	0e 94 f6 0c 	call	0x19ec	; 0x19ec <__ultoa_invert>
    18e2:	c8 2e       	mov	r12, r24
    18e4:	ca 18       	sub	r12, r10
    18e6:	3d 2c       	mov	r3, r13
    18e8:	e8 94       	clt
    18ea:	37 f8       	bld	r3, 7
    18ec:	67 cf       	rjmp	.-306    	; 0x17bc <vfprintf+0x210>
    18ee:	60 81       	ld	r22, Z
    18f0:	71 81       	ldd	r23, Z+1	; 0x01
    18f2:	90 e0       	ldi	r25, 0x00	; 0
    18f4:	80 e0       	ldi	r24, 0x00	; 0
    18f6:	0e 5f       	subi	r16, 0xFE	; 254
    18f8:	1f 4f       	sbci	r17, 0xFF	; 255
    18fa:	f0 cf       	rjmp	.-32     	; 0x18dc <vfprintf+0x330>
    18fc:	42 fc       	sbrc	r4, 2
    18fe:	02 c0       	rjmp	.+4      	; 0x1904 <vfprintf+0x358>
    1900:	83 94       	inc	r8
    1902:	78 cf       	rjmp	.-272    	; 0x17f4 <vfprintf+0x248>
    1904:	83 94       	inc	r8
    1906:	83 94       	inc	r8
    1908:	75 cf       	rjmp	.-278    	; 0x17f4 <vfprintf+0x248>
    190a:	84 2d       	mov	r24, r4
    190c:	86 78       	andi	r24, 0x86	; 134
    190e:	09 f4       	brne	.+2      	; 0x1912 <vfprintf+0x366>
    1910:	71 cf       	rjmp	.-286    	; 0x17f4 <vfprintf+0x248>
    1912:	f6 cf       	rjmp	.-20     	; 0x1900 <vfprintf+0x354>
    1914:	b7 01       	movw	r22, r14
    1916:	80 e2       	ldi	r24, 0x20	; 32
    1918:	90 e0       	ldi	r25, 0x00	; 0
    191a:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    191e:	83 94       	inc	r8
    1920:	82 14       	cp	r8, r2
    1922:	c0 f3       	brcs	.-16     	; 0x1914 <vfprintf+0x368>
    1924:	51 2c       	mov	r5, r1
    1926:	73 cf       	rjmp	.-282    	; 0x180e <vfprintf+0x262>
    1928:	52 2c       	mov	r5, r2
    192a:	58 18       	sub	r5, r8
    192c:	82 14       	cp	r8, r2
    192e:	08 f4       	brcc	.+2      	; 0x1932 <vfprintf+0x386>
    1930:	6e cf       	rjmp	.-292    	; 0x180e <vfprintf+0x262>
    1932:	f8 cf       	rjmp	.-16     	; 0x1924 <vfprintf+0x378>
    1934:	84 2d       	mov	r24, r4
    1936:	86 78       	andi	r24, 0x86	; 134
    1938:	09 f4       	brne	.+2      	; 0x193c <vfprintf+0x390>
    193a:	7b cf       	rjmp	.-266    	; 0x1832 <vfprintf+0x286>
    193c:	8b e2       	ldi	r24, 0x2B	; 43
    193e:	41 fe       	sbrs	r4, 1
    1940:	80 e2       	ldi	r24, 0x20	; 32
    1942:	47 fc       	sbrc	r4, 7
    1944:	8d e2       	ldi	r24, 0x2D	; 45
    1946:	b7 01       	movw	r22, r14
    1948:	90 e0       	ldi	r25, 0x00	; 0
    194a:	71 cf       	rjmp	.-286    	; 0x182e <vfprintf+0x282>
    194c:	b7 01       	movw	r22, r14
    194e:	80 e3       	ldi	r24, 0x30	; 48
    1950:	90 e0       	ldi	r25, 0x00	; 0
    1952:	0e 94 c6 0c 	call	0x198c	; 0x198c <fputc>
    1956:	9a 94       	dec	r9
    1958:	6c cf       	rjmp	.-296    	; 0x1832 <vfprintf+0x286>
    195a:	8f ef       	ldi	r24, 0xFF	; 255
    195c:	9f ef       	ldi	r25, 0xFF	; 255
    195e:	99 cf       	rjmp	.-206    	; 0x1892 <vfprintf+0x2e6>

00001960 <strnlen_P>:
    1960:	fc 01       	movw	r30, r24
    1962:	05 90       	lpm	r0, Z+
    1964:	61 50       	subi	r22, 0x01	; 1
    1966:	70 40       	sbci	r23, 0x00	; 0
    1968:	01 10       	cpse	r0, r1
    196a:	d8 f7       	brcc	.-10     	; 0x1962 <strnlen_P+0x2>
    196c:	80 95       	com	r24
    196e:	90 95       	com	r25
    1970:	8e 0f       	add	r24, r30
    1972:	9f 1f       	adc	r25, r31
    1974:	08 95       	ret

00001976 <strnlen>:
    1976:	fc 01       	movw	r30, r24
    1978:	61 50       	subi	r22, 0x01	; 1
    197a:	70 40       	sbci	r23, 0x00	; 0
    197c:	01 90       	ld	r0, Z+
    197e:	01 10       	cpse	r0, r1
    1980:	d8 f7       	brcc	.-10     	; 0x1978 <strnlen+0x2>
    1982:	80 95       	com	r24
    1984:	90 95       	com	r25
    1986:	8e 0f       	add	r24, r30
    1988:	9f 1f       	adc	r25, r31
    198a:	08 95       	ret

0000198c <fputc>:
    198c:	0f 93       	push	r16
    198e:	1f 93       	push	r17
    1990:	cf 93       	push	r28
    1992:	df 93       	push	r29
    1994:	18 2f       	mov	r17, r24
    1996:	09 2f       	mov	r16, r25
    1998:	eb 01       	movw	r28, r22
    199a:	8b 81       	ldd	r24, Y+3	; 0x03
    199c:	81 fd       	sbrc	r24, 1
    199e:	09 c0       	rjmp	.+18     	; 0x19b2 <fputc+0x26>
    19a0:	1f ef       	ldi	r17, 0xFF	; 255
    19a2:	0f ef       	ldi	r16, 0xFF	; 255
    19a4:	81 2f       	mov	r24, r17
    19a6:	90 2f       	mov	r25, r16
    19a8:	df 91       	pop	r29
    19aa:	cf 91       	pop	r28
    19ac:	1f 91       	pop	r17
    19ae:	0f 91       	pop	r16
    19b0:	08 95       	ret
    19b2:	82 ff       	sbrs	r24, 2
    19b4:	14 c0       	rjmp	.+40     	; 0x19de <fputc+0x52>
    19b6:	2e 81       	ldd	r18, Y+6	; 0x06
    19b8:	3f 81       	ldd	r19, Y+7	; 0x07
    19ba:	8c 81       	ldd	r24, Y+4	; 0x04
    19bc:	9d 81       	ldd	r25, Y+5	; 0x05
    19be:	28 17       	cp	r18, r24
    19c0:	39 07       	cpc	r19, r25
    19c2:	3c f4       	brge	.+14     	; 0x19d2 <fputc+0x46>
    19c4:	e8 81       	ld	r30, Y
    19c6:	f9 81       	ldd	r31, Y+1	; 0x01
    19c8:	cf 01       	movw	r24, r30
    19ca:	01 96       	adiw	r24, 0x01	; 1
    19cc:	99 83       	std	Y+1, r25	; 0x01
    19ce:	88 83       	st	Y, r24
    19d0:	10 83       	st	Z, r17
    19d2:	8e 81       	ldd	r24, Y+6	; 0x06
    19d4:	9f 81       	ldd	r25, Y+7	; 0x07
    19d6:	01 96       	adiw	r24, 0x01	; 1
    19d8:	9f 83       	std	Y+7, r25	; 0x07
    19da:	8e 83       	std	Y+6, r24	; 0x06
    19dc:	e3 cf       	rjmp	.-58     	; 0x19a4 <fputc+0x18>
    19de:	e8 85       	ldd	r30, Y+8	; 0x08
    19e0:	f9 85       	ldd	r31, Y+9	; 0x09
    19e2:	81 2f       	mov	r24, r17
    19e4:	09 95       	icall
    19e6:	89 2b       	or	r24, r25
    19e8:	a1 f3       	breq	.-24     	; 0x19d2 <fputc+0x46>
    19ea:	da cf       	rjmp	.-76     	; 0x19a0 <fputc+0x14>

000019ec <__ultoa_invert>:
    19ec:	fa 01       	movw	r30, r20
    19ee:	aa 27       	eor	r26, r26
    19f0:	28 30       	cpi	r18, 0x08	; 8
    19f2:	51 f1       	breq	.+84     	; 0x1a48 <__ultoa_invert+0x5c>
    19f4:	20 31       	cpi	r18, 0x10	; 16
    19f6:	81 f1       	breq	.+96     	; 0x1a58 <__ultoa_invert+0x6c>
    19f8:	e8 94       	clt
    19fa:	6f 93       	push	r22
    19fc:	6e 7f       	andi	r22, 0xFE	; 254
    19fe:	6e 5f       	subi	r22, 0xFE	; 254
    1a00:	7f 4f       	sbci	r23, 0xFF	; 255
    1a02:	8f 4f       	sbci	r24, 0xFF	; 255
    1a04:	9f 4f       	sbci	r25, 0xFF	; 255
    1a06:	af 4f       	sbci	r26, 0xFF	; 255
    1a08:	b1 e0       	ldi	r27, 0x01	; 1
    1a0a:	3e d0       	rcall	.+124    	; 0x1a88 <__ultoa_invert+0x9c>
    1a0c:	b4 e0       	ldi	r27, 0x04	; 4
    1a0e:	3c d0       	rcall	.+120    	; 0x1a88 <__ultoa_invert+0x9c>
    1a10:	67 0f       	add	r22, r23
    1a12:	78 1f       	adc	r23, r24
    1a14:	89 1f       	adc	r24, r25
    1a16:	9a 1f       	adc	r25, r26
    1a18:	a1 1d       	adc	r26, r1
    1a1a:	68 0f       	add	r22, r24
    1a1c:	79 1f       	adc	r23, r25
    1a1e:	8a 1f       	adc	r24, r26
    1a20:	91 1d       	adc	r25, r1
    1a22:	a1 1d       	adc	r26, r1
    1a24:	6a 0f       	add	r22, r26
    1a26:	71 1d       	adc	r23, r1
    1a28:	81 1d       	adc	r24, r1
    1a2a:	91 1d       	adc	r25, r1
    1a2c:	a1 1d       	adc	r26, r1
    1a2e:	20 d0       	rcall	.+64     	; 0x1a70 <__ultoa_invert+0x84>
    1a30:	09 f4       	brne	.+2      	; 0x1a34 <__ultoa_invert+0x48>
    1a32:	68 94       	set
    1a34:	3f 91       	pop	r19
    1a36:	2a e0       	ldi	r18, 0x0A	; 10
    1a38:	26 9f       	mul	r18, r22
    1a3a:	11 24       	eor	r1, r1
    1a3c:	30 19       	sub	r19, r0
    1a3e:	30 5d       	subi	r19, 0xD0	; 208
    1a40:	31 93       	st	Z+, r19
    1a42:	de f6       	brtc	.-74     	; 0x19fa <__ultoa_invert+0xe>
    1a44:	cf 01       	movw	r24, r30
    1a46:	08 95       	ret
    1a48:	46 2f       	mov	r20, r22
    1a4a:	47 70       	andi	r20, 0x07	; 7
    1a4c:	40 5d       	subi	r20, 0xD0	; 208
    1a4e:	41 93       	st	Z+, r20
    1a50:	b3 e0       	ldi	r27, 0x03	; 3
    1a52:	0f d0       	rcall	.+30     	; 0x1a72 <__ultoa_invert+0x86>
    1a54:	c9 f7       	brne	.-14     	; 0x1a48 <__ultoa_invert+0x5c>
    1a56:	f6 cf       	rjmp	.-20     	; 0x1a44 <__ultoa_invert+0x58>
    1a58:	46 2f       	mov	r20, r22
    1a5a:	4f 70       	andi	r20, 0x0F	; 15
    1a5c:	40 5d       	subi	r20, 0xD0	; 208
    1a5e:	4a 33       	cpi	r20, 0x3A	; 58
    1a60:	18 f0       	brcs	.+6      	; 0x1a68 <__ultoa_invert+0x7c>
    1a62:	49 5d       	subi	r20, 0xD9	; 217
    1a64:	31 fd       	sbrc	r19, 1
    1a66:	40 52       	subi	r20, 0x20	; 32
    1a68:	41 93       	st	Z+, r20
    1a6a:	02 d0       	rcall	.+4      	; 0x1a70 <__ultoa_invert+0x84>
    1a6c:	a9 f7       	brne	.-22     	; 0x1a58 <__ultoa_invert+0x6c>
    1a6e:	ea cf       	rjmp	.-44     	; 0x1a44 <__ultoa_invert+0x58>
    1a70:	b4 e0       	ldi	r27, 0x04	; 4
    1a72:	a6 95       	lsr	r26
    1a74:	97 95       	ror	r25
    1a76:	87 95       	ror	r24
    1a78:	77 95       	ror	r23
    1a7a:	67 95       	ror	r22
    1a7c:	ba 95       	dec	r27
    1a7e:	c9 f7       	brne	.-14     	; 0x1a72 <__ultoa_invert+0x86>
    1a80:	00 97       	sbiw	r24, 0x00	; 0
    1a82:	61 05       	cpc	r22, r1
    1a84:	71 05       	cpc	r23, r1
    1a86:	08 95       	ret
    1a88:	9b 01       	movw	r18, r22
    1a8a:	ac 01       	movw	r20, r24
    1a8c:	0a 2e       	mov	r0, r26
    1a8e:	06 94       	lsr	r0
    1a90:	57 95       	ror	r21
    1a92:	47 95       	ror	r20
    1a94:	37 95       	ror	r19
    1a96:	27 95       	ror	r18
    1a98:	ba 95       	dec	r27
    1a9a:	c9 f7       	brne	.-14     	; 0x1a8e <__ultoa_invert+0xa2>
    1a9c:	62 0f       	add	r22, r18
    1a9e:	73 1f       	adc	r23, r19
    1aa0:	84 1f       	adc	r24, r20
    1aa2:	95 1f       	adc	r25, r21
    1aa4:	a0 1d       	adc	r26, r0
    1aa6:	08 95       	ret

00001aa8 <__prologue_saves__>:
    1aa8:	2f 92       	push	r2
    1aaa:	3f 92       	push	r3
    1aac:	4f 92       	push	r4
    1aae:	5f 92       	push	r5
    1ab0:	6f 92       	push	r6
    1ab2:	7f 92       	push	r7
    1ab4:	8f 92       	push	r8
    1ab6:	9f 92       	push	r9
    1ab8:	af 92       	push	r10
    1aba:	bf 92       	push	r11
    1abc:	cf 92       	push	r12
    1abe:	df 92       	push	r13
    1ac0:	ef 92       	push	r14
    1ac2:	ff 92       	push	r15
    1ac4:	0f 93       	push	r16
    1ac6:	1f 93       	push	r17
    1ac8:	cf 93       	push	r28
    1aca:	df 93       	push	r29
    1acc:	cd b7       	in	r28, 0x3d	; 61
    1ace:	de b7       	in	r29, 0x3e	; 62
    1ad0:	ca 1b       	sub	r28, r26
    1ad2:	db 0b       	sbc	r29, r27
    1ad4:	0f b6       	in	r0, 0x3f	; 63
    1ad6:	f8 94       	cli
    1ad8:	de bf       	out	0x3e, r29	; 62
    1ada:	0f be       	out	0x3f, r0	; 63
    1adc:	cd bf       	out	0x3d, r28	; 61
    1ade:	09 94       	ijmp

00001ae0 <__epilogue_restores__>:
    1ae0:	2a 88       	ldd	r2, Y+18	; 0x12
    1ae2:	39 88       	ldd	r3, Y+17	; 0x11
    1ae4:	48 88       	ldd	r4, Y+16	; 0x10
    1ae6:	5f 84       	ldd	r5, Y+15	; 0x0f
    1ae8:	6e 84       	ldd	r6, Y+14	; 0x0e
    1aea:	7d 84       	ldd	r7, Y+13	; 0x0d
    1aec:	8c 84       	ldd	r8, Y+12	; 0x0c
    1aee:	9b 84       	ldd	r9, Y+11	; 0x0b
    1af0:	aa 84       	ldd	r10, Y+10	; 0x0a
    1af2:	b9 84       	ldd	r11, Y+9	; 0x09
    1af4:	c8 84       	ldd	r12, Y+8	; 0x08
    1af6:	df 80       	ldd	r13, Y+7	; 0x07
    1af8:	ee 80       	ldd	r14, Y+6	; 0x06
    1afa:	fd 80       	ldd	r15, Y+5	; 0x05
    1afc:	0c 81       	ldd	r16, Y+4	; 0x04
    1afe:	1b 81       	ldd	r17, Y+3	; 0x03
    1b00:	aa 81       	ldd	r26, Y+2	; 0x02
    1b02:	b9 81       	ldd	r27, Y+1	; 0x01
    1b04:	ce 0f       	add	r28, r30
    1b06:	d1 1d       	adc	r29, r1
    1b08:	0f b6       	in	r0, 0x3f	; 63
    1b0a:	f8 94       	cli
    1b0c:	de bf       	out	0x3e, r29	; 62
    1b0e:	0f be       	out	0x3f, r0	; 63
    1b10:	cd bf       	out	0x3d, r28	; 61
    1b12:	ed 01       	movw	r28, r26
    1b14:	08 95       	ret

00001b16 <_exit>:
    1b16:	f8 94       	cli

00001b18 <__stop_program>:
    1b18:	ff cf       	rjmp	.-2      	; 0x1b18 <__stop_program>
