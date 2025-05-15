
test1/build/arduino.avr.uno/test1.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 5d 00 	jmp	0xba	; 0xba <__ctors_end>
       4:	0c 94 db 03 	jmp	0x7b6	; 0x7b6 <__vector_1>
       8:	0c 94 b6 03 	jmp	0x76c	; 0x76c <__vector_2>
       c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      10:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      14:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      18:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      1c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      20:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      24:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      28:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      2c:	0c 94 fa 02 	jmp	0x5f4	; 0x5f4 <__vector_11>
      30:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      34:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      38:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      3c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      40:	0c 94 58 02 	jmp	0x4b0	; 0x4b0 <__vector_16>
      44:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      48:	0c 94 c8 02 	jmp	0x590	; 0x590 <__vector_18>
      4c:	0c 94 a2 02 	jmp	0x544	; 0x544 <__vector_19>
      50:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      54:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      58:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      5c:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
      60:	0c 94 85 00 	jmp	0x10a	; 0x10a <__bad_interrupt>
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
      b8:	00 04       	cpc	r0, r0

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
      cc:	e8 e2       	ldi	r30, 0x28	; 40
      ce:	f2 e1       	ldi	r31, 0x12	; 18
      d0:	02 c0       	rjmp	.+4      	; 0xd6 <__do_copy_data+0x10>
      d2:	05 90       	lpm	r0, Z+
      d4:	0d 92       	st	X+, r0
      d6:	a4 32       	cpi	r26, 0x24	; 36
      d8:	b1 07       	cpc	r27, r17
      da:	d9 f7       	brne	.-10     	; 0xd2 <__do_copy_data+0xc>

000000dc <__do_clear_bss>:
      dc:	21 e0       	ldi	r18, 0x01	; 1
      de:	a4 e2       	ldi	r26, 0x24	; 36
      e0:	b1 e0       	ldi	r27, 0x01	; 1
      e2:	01 c0       	rjmp	.+2      	; 0xe6 <.do_clear_bss_start>

000000e4 <.do_clear_bss_loop>:
      e4:	1d 92       	st	X+, r1

000000e6 <.do_clear_bss_start>:
      e6:	a8 3f       	cpi	r26, 0xF8	; 248
      e8:	b2 07       	cpc	r27, r18
      ea:	e1 f7       	brne	.-8      	; 0xe4 <.do_clear_bss_loop>

000000ec <__do_global_ctors>:
      ec:	10 e0       	ldi	r17, 0x00	; 0
      ee:	cd e5       	ldi	r28, 0x5D	; 93
      f0:	d0 e0       	ldi	r29, 0x00	; 0
      f2:	04 c0       	rjmp	.+8      	; 0xfc <__do_global_ctors+0x10>
      f4:	21 97       	sbiw	r28, 0x01	; 1
      f6:	fe 01       	movw	r30, r28
      f8:	0e 94 27 06 	call	0xc4e	; 0xc4e <__tablejump2__>
      fc:	cc 35       	cpi	r28, 0x5C	; 92
      fe:	d1 07       	cpc	r29, r17
     100:	c9 f7       	brne	.-14     	; 0xf4 <__do_global_ctors+0x8>
     102:	0e 94 2d 04 	call	0x85a	; 0x85a <main>
     106:	0c 94 12 09 	jmp	0x1224	; 0x1224 <_exit>

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

000001a6 <_ZN5Print5writeEPKhj>:
     1a6:	af 92       	push	r10
     1a8:	bf 92       	push	r11
     1aa:	cf 92       	push	r12
     1ac:	df 92       	push	r13
     1ae:	ef 92       	push	r14
     1b0:	ff 92       	push	r15
     1b2:	0f 93       	push	r16
     1b4:	1f 93       	push	r17
     1b6:	cf 93       	push	r28
     1b8:	df 93       	push	r29
     1ba:	6c 01       	movw	r12, r24
     1bc:	7b 01       	movw	r14, r22
     1be:	8b 01       	movw	r16, r22
     1c0:	04 0f       	add	r16, r20
     1c2:	15 1f       	adc	r17, r21
     1c4:	eb 01       	movw	r28, r22
     1c6:	5e 01       	movw	r10, r28
     1c8:	ae 18       	sub	r10, r14
     1ca:	bf 08       	sbc	r11, r15
     1cc:	c0 17       	cp	r28, r16
     1ce:	d1 07       	cpc	r29, r17
     1d0:	59 f0       	breq	.+22     	; 0x1e8 <_ZN5Print5writeEPKhj+0x42>
     1d2:	69 91       	ld	r22, Y+
     1d4:	d6 01       	movw	r26, r12
     1d6:	ed 91       	ld	r30, X+
     1d8:	fc 91       	ld	r31, X
     1da:	01 90       	ld	r0, Z+
     1dc:	f0 81       	ld	r31, Z
     1de:	e0 2d       	mov	r30, r0
     1e0:	c6 01       	movw	r24, r12
     1e2:	09 95       	icall
     1e4:	89 2b       	or	r24, r25
     1e6:	79 f7       	brne	.-34     	; 0x1c6 <_ZN5Print5writeEPKhj+0x20>
     1e8:	c5 01       	movw	r24, r10
     1ea:	df 91       	pop	r29
     1ec:	cf 91       	pop	r28
     1ee:	1f 91       	pop	r17
     1f0:	0f 91       	pop	r16
     1f2:	ff 90       	pop	r15
     1f4:	ef 90       	pop	r14
     1f6:	df 90       	pop	r13
     1f8:	cf 90       	pop	r12
     1fa:	bf 90       	pop	r11
     1fc:	af 90       	pop	r10
     1fe:	08 95       	ret

00000200 <_ZN14HardwareSerial17availableForWriteEv>:
     200:	fc 01       	movw	r30, r24
     202:	53 8d       	ldd	r21, Z+27	; 0x1b
     204:	44 8d       	ldd	r20, Z+28	; 0x1c
     206:	25 2f       	mov	r18, r21
     208:	30 e0       	ldi	r19, 0x00	; 0
     20a:	84 2f       	mov	r24, r20
     20c:	90 e0       	ldi	r25, 0x00	; 0
     20e:	82 1b       	sub	r24, r18
     210:	93 0b       	sbc	r25, r19
     212:	54 17       	cp	r21, r20
     214:	10 f0       	brcs	.+4      	; 0x21a <_ZN14HardwareSerial17availableForWriteEv+0x1a>
     216:	cf 96       	adiw	r24, 0x3f	; 63
     218:	08 95       	ret
     21a:	01 97       	sbiw	r24, 0x01	; 1
     21c:	08 95       	ret

0000021e <_ZN14HardwareSerial4readEv>:
     21e:	fc 01       	movw	r30, r24
     220:	91 8d       	ldd	r25, Z+25	; 0x19
     222:	82 8d       	ldd	r24, Z+26	; 0x1a
     224:	98 17       	cp	r25, r24
     226:	61 f0       	breq	.+24     	; 0x240 <_ZN14HardwareSerial4readEv+0x22>
     228:	a2 8d       	ldd	r26, Z+26	; 0x1a
     22a:	ae 0f       	add	r26, r30
     22c:	bf 2f       	mov	r27, r31
     22e:	b1 1d       	adc	r27, r1
     230:	5d 96       	adiw	r26, 0x1d	; 29
     232:	8c 91       	ld	r24, X
     234:	92 8d       	ldd	r25, Z+26	; 0x1a
     236:	9f 5f       	subi	r25, 0xFF	; 255
     238:	9f 73       	andi	r25, 0x3F	; 63
     23a:	92 8f       	std	Z+26, r25	; 0x1a
     23c:	90 e0       	ldi	r25, 0x00	; 0
     23e:	08 95       	ret
     240:	8f ef       	ldi	r24, 0xFF	; 255
     242:	9f ef       	ldi	r25, 0xFF	; 255
     244:	08 95       	ret

00000246 <_ZN14HardwareSerial4peekEv>:
     246:	fc 01       	movw	r30, r24
     248:	91 8d       	ldd	r25, Z+25	; 0x19
     24a:	82 8d       	ldd	r24, Z+26	; 0x1a
     24c:	98 17       	cp	r25, r24
     24e:	31 f0       	breq	.+12     	; 0x25c <_ZN14HardwareSerial4peekEv+0x16>
     250:	82 8d       	ldd	r24, Z+26	; 0x1a
     252:	e8 0f       	add	r30, r24
     254:	f1 1d       	adc	r31, r1
     256:	85 8d       	ldd	r24, Z+29	; 0x1d
     258:	90 e0       	ldi	r25, 0x00	; 0
     25a:	08 95       	ret
     25c:	8f ef       	ldi	r24, 0xFF	; 255
     25e:	9f ef       	ldi	r25, 0xFF	; 255
     260:	08 95       	ret

00000262 <_ZN14HardwareSerial9availableEv>:
     262:	fc 01       	movw	r30, r24
     264:	91 8d       	ldd	r25, Z+25	; 0x19
     266:	22 8d       	ldd	r18, Z+26	; 0x1a
     268:	89 2f       	mov	r24, r25
     26a:	90 e0       	ldi	r25, 0x00	; 0
     26c:	80 5c       	subi	r24, 0xC0	; 192
     26e:	9f 4f       	sbci	r25, 0xFF	; 255
     270:	82 1b       	sub	r24, r18
     272:	91 09       	sbc	r25, r1
     274:	8f 73       	andi	r24, 0x3F	; 63
     276:	99 27       	eor	r25, r25
     278:	08 95       	ret

0000027a <_Z17Serial0_availablev>:
     27a:	82 e5       	ldi	r24, 0x52	; 82
     27c:	91 e0       	ldi	r25, 0x01	; 1
     27e:	0e 94 31 01 	call	0x262	; 0x262 <_ZN14HardwareSerial9availableEv>
     282:	21 e0       	ldi	r18, 0x01	; 1
     284:	89 2b       	or	r24, r25
     286:	09 f4       	brne	.+2      	; 0x28a <_Z17Serial0_availablev+0x10>
     288:	20 e0       	ldi	r18, 0x00	; 0
     28a:	82 2f       	mov	r24, r18
     28c:	08 95       	ret

0000028e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>:
     28e:	fc 01       	movw	r30, r24
     290:	a4 8d       	ldd	r26, Z+28	; 0x1c
     292:	a8 0f       	add	r26, r24
     294:	b9 2f       	mov	r27, r25
     296:	b1 1d       	adc	r27, r1
     298:	a3 5a       	subi	r26, 0xA3	; 163
     29a:	bf 4f       	sbci	r27, 0xFF	; 255
     29c:	2c 91       	ld	r18, X
     29e:	84 8d       	ldd	r24, Z+28	; 0x1c
     2a0:	90 e0       	ldi	r25, 0x00	; 0
     2a2:	01 96       	adiw	r24, 0x01	; 1
     2a4:	8f 73       	andi	r24, 0x3F	; 63
     2a6:	99 27       	eor	r25, r25
     2a8:	84 8f       	std	Z+28, r24	; 0x1c
     2aa:	a6 89       	ldd	r26, Z+22	; 0x16
     2ac:	b7 89       	ldd	r27, Z+23	; 0x17
     2ae:	2c 93       	st	X, r18
     2b0:	a0 89       	ldd	r26, Z+16	; 0x10
     2b2:	b1 89       	ldd	r27, Z+17	; 0x11
     2b4:	8c 91       	ld	r24, X
     2b6:	83 70       	andi	r24, 0x03	; 3
     2b8:	80 64       	ori	r24, 0x40	; 64
     2ba:	8c 93       	st	X, r24
     2bc:	93 8d       	ldd	r25, Z+27	; 0x1b
     2be:	84 8d       	ldd	r24, Z+28	; 0x1c
     2c0:	98 13       	cpse	r25, r24
     2c2:	06 c0       	rjmp	.+12     	; 0x2d0 <_ZN14HardwareSerial17_tx_udr_empty_irqEv+0x42>
     2c4:	02 88       	ldd	r0, Z+18	; 0x12
     2c6:	f3 89       	ldd	r31, Z+19	; 0x13
     2c8:	e0 2d       	mov	r30, r0
     2ca:	80 81       	ld	r24, Z
     2cc:	8f 7d       	andi	r24, 0xDF	; 223
     2ce:	80 83       	st	Z, r24
     2d0:	08 95       	ret

000002d2 <_ZN14HardwareSerial5writeEh>:
     2d2:	ef 92       	push	r14
     2d4:	ff 92       	push	r15
     2d6:	0f 93       	push	r16
     2d8:	1f 93       	push	r17
     2da:	cf 93       	push	r28
     2dc:	df 93       	push	r29
     2de:	ec 01       	movw	r28, r24
     2e0:	81 e0       	ldi	r24, 0x01	; 1
     2e2:	88 8f       	std	Y+24, r24	; 0x18
     2e4:	9b 8d       	ldd	r25, Y+27	; 0x1b
     2e6:	8c 8d       	ldd	r24, Y+28	; 0x1c
     2e8:	98 13       	cpse	r25, r24
     2ea:	1a c0       	rjmp	.+52     	; 0x320 <_ZN14HardwareSerial5writeEh+0x4e>
     2ec:	e8 89       	ldd	r30, Y+16	; 0x10
     2ee:	f9 89       	ldd	r31, Y+17	; 0x11
     2f0:	80 81       	ld	r24, Z
     2f2:	85 ff       	sbrs	r24, 5
     2f4:	15 c0       	rjmp	.+42     	; 0x320 <_ZN14HardwareSerial5writeEh+0x4e>
     2f6:	9f b7       	in	r25, 0x3f	; 63
     2f8:	f8 94       	cli
     2fa:	ee 89       	ldd	r30, Y+22	; 0x16
     2fc:	ff 89       	ldd	r31, Y+23	; 0x17
     2fe:	60 83       	st	Z, r22
     300:	e8 89       	ldd	r30, Y+16	; 0x10
     302:	f9 89       	ldd	r31, Y+17	; 0x11
     304:	80 81       	ld	r24, Z
     306:	83 70       	andi	r24, 0x03	; 3
     308:	80 64       	ori	r24, 0x40	; 64
     30a:	80 83       	st	Z, r24
     30c:	9f bf       	out	0x3f, r25	; 63
     30e:	81 e0       	ldi	r24, 0x01	; 1
     310:	90 e0       	ldi	r25, 0x00	; 0
     312:	df 91       	pop	r29
     314:	cf 91       	pop	r28
     316:	1f 91       	pop	r17
     318:	0f 91       	pop	r16
     31a:	ff 90       	pop	r15
     31c:	ef 90       	pop	r14
     31e:	08 95       	ret
     320:	f6 2e       	mov	r15, r22
     322:	0b 8d       	ldd	r16, Y+27	; 0x1b
     324:	10 e0       	ldi	r17, 0x00	; 0
     326:	0f 5f       	subi	r16, 0xFF	; 255
     328:	1f 4f       	sbci	r17, 0xFF	; 255
     32a:	0f 73       	andi	r16, 0x3F	; 63
     32c:	11 27       	eor	r17, r17
     32e:	e0 2e       	mov	r14, r16
     330:	8c 8d       	ldd	r24, Y+28	; 0x1c
     332:	8e 11       	cpse	r24, r14
     334:	0c c0       	rjmp	.+24     	; 0x34e <_ZN14HardwareSerial5writeEh+0x7c>
     336:	0f b6       	in	r0, 0x3f	; 63
     338:	07 fc       	sbrc	r0, 7
     33a:	fa cf       	rjmp	.-12     	; 0x330 <_ZN14HardwareSerial5writeEh+0x5e>
     33c:	e8 89       	ldd	r30, Y+16	; 0x10
     33e:	f9 89       	ldd	r31, Y+17	; 0x11
     340:	80 81       	ld	r24, Z
     342:	85 ff       	sbrs	r24, 5
     344:	f5 cf       	rjmp	.-22     	; 0x330 <_ZN14HardwareSerial5writeEh+0x5e>
     346:	ce 01       	movw	r24, r28
     348:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     34c:	f1 cf       	rjmp	.-30     	; 0x330 <_ZN14HardwareSerial5writeEh+0x5e>
     34e:	eb 8d       	ldd	r30, Y+27	; 0x1b
     350:	ec 0f       	add	r30, r28
     352:	fd 2f       	mov	r31, r29
     354:	f1 1d       	adc	r31, r1
     356:	e3 5a       	subi	r30, 0xA3	; 163
     358:	ff 4f       	sbci	r31, 0xFF	; 255
     35a:	f0 82       	st	Z, r15
     35c:	9f b7       	in	r25, 0x3f	; 63
     35e:	f8 94       	cli
     360:	0b 8f       	std	Y+27, r16	; 0x1b
     362:	ea 89       	ldd	r30, Y+18	; 0x12
     364:	fb 89       	ldd	r31, Y+19	; 0x13
     366:	80 81       	ld	r24, Z
     368:	80 62       	ori	r24, 0x20	; 32
     36a:	cf cf       	rjmp	.-98     	; 0x30a <_ZN14HardwareSerial5writeEh+0x38>

0000036c <_ZN14HardwareSerial5flushEv>:
     36c:	cf 93       	push	r28
     36e:	df 93       	push	r29
     370:	ec 01       	movw	r28, r24
     372:	88 8d       	ldd	r24, Y+24	; 0x18
     374:	88 23       	and	r24, r24
     376:	b9 f0       	breq	.+46     	; 0x3a6 <_ZN14HardwareSerial5flushEv+0x3a>
     378:	aa 89       	ldd	r26, Y+18	; 0x12
     37a:	bb 89       	ldd	r27, Y+19	; 0x13
     37c:	e8 89       	ldd	r30, Y+16	; 0x10
     37e:	f9 89       	ldd	r31, Y+17	; 0x11
     380:	8c 91       	ld	r24, X
     382:	85 fd       	sbrc	r24, 5
     384:	03 c0       	rjmp	.+6      	; 0x38c <_ZN14HardwareSerial5flushEv+0x20>
     386:	80 81       	ld	r24, Z
     388:	86 fd       	sbrc	r24, 6
     38a:	0d c0       	rjmp	.+26     	; 0x3a6 <_ZN14HardwareSerial5flushEv+0x3a>
     38c:	0f b6       	in	r0, 0x3f	; 63
     38e:	07 fc       	sbrc	r0, 7
     390:	f7 cf       	rjmp	.-18     	; 0x380 <_ZN14HardwareSerial5flushEv+0x14>
     392:	8c 91       	ld	r24, X
     394:	85 ff       	sbrs	r24, 5
     396:	f2 cf       	rjmp	.-28     	; 0x37c <_ZN14HardwareSerial5flushEv+0x10>
     398:	80 81       	ld	r24, Z
     39a:	85 ff       	sbrs	r24, 5
     39c:	ed cf       	rjmp	.-38     	; 0x378 <_ZN14HardwareSerial5flushEv+0xc>
     39e:	ce 01       	movw	r24, r28
     3a0:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     3a4:	e9 cf       	rjmp	.-46     	; 0x378 <_ZN14HardwareSerial5flushEv+0xc>
     3a6:	df 91       	pop	r29
     3a8:	cf 91       	pop	r28
     3aa:	08 95       	ret

000003ac <_Z14serialEventRunv>:
     3ac:	80 e0       	ldi	r24, 0x00	; 0
     3ae:	90 e0       	ldi	r25, 0x00	; 0
     3b0:	89 2b       	or	r24, r25
     3b2:	29 f0       	breq	.+10     	; 0x3be <_Z14serialEventRunv+0x12>
     3b4:	0e 94 3d 01 	call	0x27a	; 0x27a <_Z17Serial0_availablev>
     3b8:	81 11       	cpse	r24, r1
     3ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
     3be:	08 95       	ret

000003c0 <_ZN5Servo6attachEi>:
     3c0:	cf 93       	push	r28
     3c2:	df 93       	push	r29
     3c4:	dc 01       	movw	r26, r24
     3c6:	8c 91       	ld	r24, X
     3c8:	8c 30       	cpi	r24, 0x0C	; 12
     3ca:	08 f0       	brcs	.+2      	; 0x3ce <_ZN5Servo6attachEi+0xe>
     3cc:	6d c0       	rjmp	.+218    	; 0x4a8 <__LOCK_REGION_LENGTH__+0xa8>
     3ce:	cb 01       	movw	r24, r22
     3d0:	fb 01       	movw	r30, r22
     3d2:	e0 57       	subi	r30, 0x70	; 112
     3d4:	ff 4f       	sbci	r31, 0xFF	; 255
     3d6:	24 91       	lpm	r18, Z
     3d8:	84 58       	subi	r24, 0x84	; 132
     3da:	9f 4f       	sbci	r25, 0xFF	; 255
     3dc:	fc 01       	movw	r30, r24
     3de:	84 91       	lpm	r24, Z
     3e0:	88 23       	and	r24, r24
     3e2:	99 f0       	breq	.+38     	; 0x40a <__LOCK_REGION_LENGTH__+0xa>
     3e4:	90 e0       	ldi	r25, 0x00	; 0
     3e6:	88 0f       	add	r24, r24
     3e8:	99 1f       	adc	r25, r25
     3ea:	fc 01       	movw	r30, r24
     3ec:	e8 59       	subi	r30, 0x98	; 152
     3ee:	ff 4f       	sbci	r31, 0xFF	; 255
     3f0:	c5 91       	lpm	r28, Z+
     3f2:	d4 91       	lpm	r29, Z
     3f4:	fc 01       	movw	r30, r24
     3f6:	ee 58       	subi	r30, 0x8E	; 142
     3f8:	ff 4f       	sbci	r31, 0xFF	; 255
     3fa:	85 91       	lpm	r24, Z+
     3fc:	94 91       	lpm	r25, Z
     3fe:	8f b7       	in	r24, 0x3f	; 63
     400:	f8 94       	cli
     402:	e8 81       	ld	r30, Y
     404:	e2 2b       	or	r30, r18
     406:	e8 83       	st	Y, r30
     408:	8f bf       	out	0x3f, r24	; 63
     40a:	8c 91       	ld	r24, X
     40c:	28 2f       	mov	r18, r24
     40e:	30 e0       	ldi	r19, 0x00	; 0
     410:	f9 01       	movw	r30, r18
     412:	ee 0f       	add	r30, r30
     414:	ff 1f       	adc	r31, r31
     416:	e2 0f       	add	r30, r18
     418:	f3 1f       	adc	r31, r19
     41a:	e2 5d       	subi	r30, 0xD2	; 210
     41c:	fe 4f       	sbci	r31, 0xFE	; 254
     41e:	96 2f       	mov	r25, r22
     420:	9f 73       	andi	r25, 0x3F	; 63
     422:	60 81       	ld	r22, Z
     424:	60 7c       	andi	r22, 0xC0	; 192
     426:	69 2b       	or	r22, r25
     428:	60 83       	st	Z, r22
     42a:	11 96       	adiw	r26, 0x01	; 1
     42c:	1c 92       	st	X, r1
     42e:	11 97       	sbiw	r26, 0x01	; 1
     430:	12 96       	adiw	r26, 0x02	; 2
     432:	1c 92       	st	X, r1
     434:	12 97       	sbiw	r26, 0x02	; 2
     436:	2c e0       	ldi	r18, 0x0C	; 12
     438:	62 2f       	mov	r22, r18
     43a:	0e 94 0f 06 	call	0xc1e	; 0xc1e <__udivmodqi4>
     43e:	82 9f       	mul	r24, r18
     440:	b0 01       	movw	r22, r0
     442:	11 24       	eor	r1, r1
     444:	30 e0       	ldi	r19, 0x00	; 0
     446:	20 e0       	ldi	r18, 0x00	; 0
     448:	ab 01       	movw	r20, r22
     44a:	42 0f       	add	r20, r18
     44c:	53 1f       	adc	r21, r19
     44e:	fa 01       	movw	r30, r20
     450:	ee 0f       	add	r30, r30
     452:	ff 1f       	adc	r31, r31
     454:	e4 0f       	add	r30, r20
     456:	f5 1f       	adc	r31, r21
     458:	e2 5d       	subi	r30, 0xD2	; 210
     45a:	fe 4f       	sbci	r31, 0xFE	; 254
     45c:	90 81       	ld	r25, Z
     45e:	96 fd       	sbrc	r25, 6
     460:	16 c0       	rjmp	.+44     	; 0x48e <__LOCK_REGION_LENGTH__+0x8e>
     462:	2f 5f       	subi	r18, 0xFF	; 255
     464:	3f 4f       	sbci	r19, 0xFF	; 255
     466:	2c 30       	cpi	r18, 0x0C	; 12
     468:	31 05       	cpc	r19, r1
     46a:	71 f7       	brne	.-36     	; 0x448 <__LOCK_REGION_LENGTH__+0x48>
     46c:	81 11       	cpse	r24, r1
     46e:	0f c0       	rjmp	.+30     	; 0x48e <__LOCK_REGION_LENGTH__+0x8e>
     470:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     474:	82 e0       	ldi	r24, 0x02	; 2
     476:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     47a:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     47e:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     482:	b1 9a       	sbi	0x16, 1	; 22
     484:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     488:	82 60       	ori	r24, 0x02	; 2
     48a:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
     48e:	ec 91       	ld	r30, X
     490:	8e 2f       	mov	r24, r30
     492:	90 e0       	ldi	r25, 0x00	; 0
     494:	fc 01       	movw	r30, r24
     496:	ee 0f       	add	r30, r30
     498:	ff 1f       	adc	r31, r31
     49a:	e8 0f       	add	r30, r24
     49c:	f9 1f       	adc	r31, r25
     49e:	e2 5d       	subi	r30, 0xD2	; 210
     4a0:	fe 4f       	sbci	r31, 0xFE	; 254
     4a2:	80 81       	ld	r24, Z
     4a4:	80 64       	ori	r24, 0x40	; 64
     4a6:	80 83       	st	Z, r24
     4a8:	8c 91       	ld	r24, X
     4aa:	df 91       	pop	r29
     4ac:	cf 91       	pop	r28
     4ae:	08 95       	ret

000004b0 <__vector_16>:
     4b0:	1f 92       	push	r1
     4b2:	0f 92       	push	r0
     4b4:	0f b6       	in	r0, 0x3f	; 63
     4b6:	0f 92       	push	r0
     4b8:	11 24       	eor	r1, r1
     4ba:	2f 93       	push	r18
     4bc:	3f 93       	push	r19
     4be:	8f 93       	push	r24
     4c0:	9f 93       	push	r25
     4c2:	af 93       	push	r26
     4c4:	bf 93       	push	r27
     4c6:	80 91 f4 01 	lds	r24, 0x01F4	; 0x8001f4 <timer0_millis>
     4ca:	90 91 f5 01 	lds	r25, 0x01F5	; 0x8001f5 <timer0_millis+0x1>
     4ce:	a0 91 f6 01 	lds	r26, 0x01F6	; 0x8001f6 <timer0_millis+0x2>
     4d2:	b0 91 f7 01 	lds	r27, 0x01F7	; 0x8001f7 <timer0_millis+0x3>
     4d6:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <timer0_fract>
     4da:	23 e0       	ldi	r18, 0x03	; 3
     4dc:	23 0f       	add	r18, r19
     4de:	2d 37       	cpi	r18, 0x7D	; 125
     4e0:	58 f5       	brcc	.+86     	; 0x538 <__vector_16+0x88>
     4e2:	01 96       	adiw	r24, 0x01	; 1
     4e4:	a1 1d       	adc	r26, r1
     4e6:	b1 1d       	adc	r27, r1
     4e8:	20 93 f3 01 	sts	0x01F3, r18	; 0x8001f3 <timer0_fract>
     4ec:	80 93 f4 01 	sts	0x01F4, r24	; 0x8001f4 <timer0_millis>
     4f0:	90 93 f5 01 	sts	0x01F5, r25	; 0x8001f5 <timer0_millis+0x1>
     4f4:	a0 93 f6 01 	sts	0x01F6, r26	; 0x8001f6 <timer0_millis+0x2>
     4f8:	b0 93 f7 01 	sts	0x01F7, r27	; 0x8001f7 <timer0_millis+0x3>
     4fc:	80 91 ef 01 	lds	r24, 0x01EF	; 0x8001ef <timer0_overflow_count>
     500:	90 91 f0 01 	lds	r25, 0x01F0	; 0x8001f0 <timer0_overflow_count+0x1>
     504:	a0 91 f1 01 	lds	r26, 0x01F1	; 0x8001f1 <timer0_overflow_count+0x2>
     508:	b0 91 f2 01 	lds	r27, 0x01F2	; 0x8001f2 <timer0_overflow_count+0x3>
     50c:	01 96       	adiw	r24, 0x01	; 1
     50e:	a1 1d       	adc	r26, r1
     510:	b1 1d       	adc	r27, r1
     512:	80 93 ef 01 	sts	0x01EF, r24	; 0x8001ef <timer0_overflow_count>
     516:	90 93 f0 01 	sts	0x01F0, r25	; 0x8001f0 <timer0_overflow_count+0x1>
     51a:	a0 93 f1 01 	sts	0x01F1, r26	; 0x8001f1 <timer0_overflow_count+0x2>
     51e:	b0 93 f2 01 	sts	0x01F2, r27	; 0x8001f2 <timer0_overflow_count+0x3>
     522:	bf 91       	pop	r27
     524:	af 91       	pop	r26
     526:	9f 91       	pop	r25
     528:	8f 91       	pop	r24
     52a:	3f 91       	pop	r19
     52c:	2f 91       	pop	r18
     52e:	0f 90       	pop	r0
     530:	0f be       	out	0x3f, r0	; 63
     532:	0f 90       	pop	r0
     534:	1f 90       	pop	r1
     536:	18 95       	reti
     538:	26 e8       	ldi	r18, 0x86	; 134
     53a:	23 0f       	add	r18, r19
     53c:	02 96       	adiw	r24, 0x02	; 2
     53e:	a1 1d       	adc	r26, r1
     540:	b1 1d       	adc	r27, r1
     542:	d2 cf       	rjmp	.-92     	; 0x4e8 <__vector_16+0x38>

00000544 <__vector_19>:
     544:	1f 92       	push	r1
     546:	0f 92       	push	r0
     548:	0f b6       	in	r0, 0x3f	; 63
     54a:	0f 92       	push	r0
     54c:	11 24       	eor	r1, r1
     54e:	2f 93       	push	r18
     550:	3f 93       	push	r19
     552:	4f 93       	push	r20
     554:	5f 93       	push	r21
     556:	6f 93       	push	r22
     558:	7f 93       	push	r23
     55a:	8f 93       	push	r24
     55c:	9f 93       	push	r25
     55e:	af 93       	push	r26
     560:	bf 93       	push	r27
     562:	ef 93       	push	r30
     564:	ff 93       	push	r31
     566:	82 e5       	ldi	r24, 0x52	; 82
     568:	91 e0       	ldi	r25, 0x01	; 1
     56a:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
     56e:	ff 91       	pop	r31
     570:	ef 91       	pop	r30
     572:	bf 91       	pop	r27
     574:	af 91       	pop	r26
     576:	9f 91       	pop	r25
     578:	8f 91       	pop	r24
     57a:	7f 91       	pop	r23
     57c:	6f 91       	pop	r22
     57e:	5f 91       	pop	r21
     580:	4f 91       	pop	r20
     582:	3f 91       	pop	r19
     584:	2f 91       	pop	r18
     586:	0f 90       	pop	r0
     588:	0f be       	out	0x3f, r0	; 63
     58a:	0f 90       	pop	r0
     58c:	1f 90       	pop	r1
     58e:	18 95       	reti

00000590 <__vector_18>:
     590:	1f 92       	push	r1
     592:	0f 92       	push	r0
     594:	0f b6       	in	r0, 0x3f	; 63
     596:	0f 92       	push	r0
     598:	11 24       	eor	r1, r1
     59a:	2f 93       	push	r18
     59c:	8f 93       	push	r24
     59e:	9f 93       	push	r25
     5a0:	ef 93       	push	r30
     5a2:	ff 93       	push	r31
     5a4:	e0 91 62 01 	lds	r30, 0x0162	; 0x800162 <Serial+0x10>
     5a8:	f0 91 63 01 	lds	r31, 0x0163	; 0x800163 <Serial+0x11>
     5ac:	80 81       	ld	r24, Z
     5ae:	e0 91 68 01 	lds	r30, 0x0168	; 0x800168 <Serial+0x16>
     5b2:	f0 91 69 01 	lds	r31, 0x0169	; 0x800169 <Serial+0x17>
     5b6:	82 fd       	sbrc	r24, 2
     5b8:	1b c0       	rjmp	.+54     	; 0x5f0 <__vector_18+0x60>
     5ba:	90 81       	ld	r25, Z
     5bc:	80 91 6b 01 	lds	r24, 0x016B	; 0x80016b <Serial+0x19>
     5c0:	8f 5f       	subi	r24, 0xFF	; 255
     5c2:	8f 73       	andi	r24, 0x3F	; 63
     5c4:	20 91 6c 01 	lds	r18, 0x016C	; 0x80016c <Serial+0x1a>
     5c8:	82 17       	cp	r24, r18
     5ca:	41 f0       	breq	.+16     	; 0x5dc <__vector_18+0x4c>
     5cc:	e0 91 6b 01 	lds	r30, 0x016B	; 0x80016b <Serial+0x19>
     5d0:	f0 e0       	ldi	r31, 0x00	; 0
     5d2:	ee 5a       	subi	r30, 0xAE	; 174
     5d4:	fe 4f       	sbci	r31, 0xFE	; 254
     5d6:	95 8f       	std	Z+29, r25	; 0x1d
     5d8:	80 93 6b 01 	sts	0x016B, r24	; 0x80016b <Serial+0x19>
     5dc:	ff 91       	pop	r31
     5de:	ef 91       	pop	r30
     5e0:	9f 91       	pop	r25
     5e2:	8f 91       	pop	r24
     5e4:	2f 91       	pop	r18
     5e6:	0f 90       	pop	r0
     5e8:	0f be       	out	0x3f, r0	; 63
     5ea:	0f 90       	pop	r0
     5ec:	1f 90       	pop	r1
     5ee:	18 95       	reti
     5f0:	80 81       	ld	r24, Z
     5f2:	f4 cf       	rjmp	.-24     	; 0x5dc <__vector_18+0x4c>

000005f4 <__vector_11>:
     5f4:	1f 92       	push	r1
     5f6:	0f 92       	push	r0
     5f8:	0f b6       	in	r0, 0x3f	; 63
     5fa:	0f 92       	push	r0
     5fc:	11 24       	eor	r1, r1
     5fe:	2f 93       	push	r18
     600:	3f 93       	push	r19
     602:	4f 93       	push	r20
     604:	5f 93       	push	r21
     606:	6f 93       	push	r22
     608:	7f 93       	push	r23
     60a:	8f 93       	push	r24
     60c:	9f 93       	push	r25
     60e:	af 93       	push	r26
     610:	bf 93       	push	r27
     612:	cf 93       	push	r28
     614:	df 93       	push	r29
     616:	ef 93       	push	r30
     618:	ff 93       	push	r31
     61a:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL7Channel>
     61e:	c0 91 2c 01 	lds	r28, 0x012C	; 0x80012c <ServoCount>
     622:	d0 e0       	ldi	r29, 0x00	; 0
     624:	87 ff       	sbrs	r24, 7
     626:	24 c0       	rjmp	.+72     	; 0x670 <__vector_11+0x7c>
     628:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     62c:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     630:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL7Channel>
     634:	8f 5f       	subi	r24, 0xFF	; 255
     636:	80 93 2d 01 	sts	0x012D, r24	; 0x80012d <_ZL7Channel>
     63a:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL7Channel>
     63e:	08 2e       	mov	r0, r24
     640:	00 0c       	add	r0, r0
     642:	99 0b       	sbc	r25, r25
     644:	8c 17       	cp	r24, r28
     646:	9d 07       	cpc	r25, r29
     648:	24 f4       	brge	.+8      	; 0x652 <__vector_11+0x5e>
     64a:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL7Channel>
     64e:	8c 30       	cpi	r24, 0x0C	; 12
     650:	c4 f1       	brlt	.+112    	; 0x6c2 <__vector_11+0xce>
     652:	80 91 84 00 	lds	r24, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     656:	90 91 85 00 	lds	r25, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     65a:	04 96       	adiw	r24, 0x04	; 4
     65c:	80 34       	cpi	r24, 0x40	; 64
     65e:	9c 49       	sbci	r25, 0x9C	; 156
     660:	08 f4       	brcc	.+2      	; 0x664 <__vector_11+0x70>
     662:	7a c0       	rjmp	.+244    	; 0x758 <__vector_11+0x164>
     664:	80 91 84 00 	lds	r24, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     668:	90 91 85 00 	lds	r25, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     66c:	04 96       	adiw	r24, 0x04	; 4
     66e:	76 c0       	rjmp	.+236    	; 0x75c <__vector_11+0x168>
     670:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL7Channel>
     674:	08 2e       	mov	r0, r24
     676:	00 0c       	add	r0, r0
     678:	99 0b       	sbc	r25, r25
     67a:	8c 17       	cp	r24, r28
     67c:	9d 07       	cpc	r25, r29
     67e:	c4 f6       	brge	.-80     	; 0x630 <__vector_11+0x3c>
     680:	e0 91 2d 01 	lds	r30, 0x012D	; 0x80012d <_ZL7Channel>
     684:	8e 2f       	mov	r24, r30
     686:	ee 0f       	add	r30, r30
     688:	99 0b       	sbc	r25, r25
     68a:	fc 01       	movw	r30, r24
     68c:	ee 0f       	add	r30, r30
     68e:	ff 1f       	adc	r31, r31
     690:	e8 0f       	add	r30, r24
     692:	f9 1f       	adc	r31, r25
     694:	e2 5d       	subi	r30, 0xD2	; 210
     696:	fe 4f       	sbci	r31, 0xFE	; 254
     698:	80 81       	ld	r24, Z
     69a:	86 ff       	sbrs	r24, 6
     69c:	c9 cf       	rjmp	.-110    	; 0x630 <__vector_11+0x3c>
     69e:	e0 91 2d 01 	lds	r30, 0x012D	; 0x80012d <_ZL7Channel>
     6a2:	8e 2f       	mov	r24, r30
     6a4:	ee 0f       	add	r30, r30
     6a6:	99 0b       	sbc	r25, r25
     6a8:	fc 01       	movw	r30, r24
     6aa:	ee 0f       	add	r30, r30
     6ac:	ff 1f       	adc	r31, r31
     6ae:	e8 0f       	add	r30, r24
     6b0:	f9 1f       	adc	r31, r25
     6b2:	e2 5d       	subi	r30, 0xD2	; 210
     6b4:	fe 4f       	sbci	r31, 0xFE	; 254
     6b6:	80 81       	ld	r24, Z
     6b8:	60 e0       	ldi	r22, 0x00	; 0
     6ba:	8f 73       	andi	r24, 0x3F	; 63
     6bc:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     6c0:	b7 cf       	rjmp	.-146    	; 0x630 <__vector_11+0x3c>
     6c2:	20 91 84 00 	lds	r18, 0x0084	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
     6c6:	30 91 85 00 	lds	r19, 0x0085	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
     6ca:	e0 91 2d 01 	lds	r30, 0x012D	; 0x80012d <_ZL7Channel>
     6ce:	8e 2f       	mov	r24, r30
     6d0:	ee 0f       	add	r30, r30
     6d2:	99 0b       	sbc	r25, r25
     6d4:	fc 01       	movw	r30, r24
     6d6:	ee 0f       	add	r30, r30
     6d8:	ff 1f       	adc	r31, r31
     6da:	e8 0f       	add	r30, r24
     6dc:	f9 1f       	adc	r31, r25
     6de:	e2 5d       	subi	r30, 0xD2	; 210
     6e0:	fe 4f       	sbci	r31, 0xFE	; 254
     6e2:	81 81       	ldd	r24, Z+1	; 0x01
     6e4:	92 81       	ldd	r25, Z+2	; 0x02
     6e6:	82 0f       	add	r24, r18
     6e8:	93 1f       	adc	r25, r19
     6ea:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
     6ee:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
     6f2:	e0 91 2d 01 	lds	r30, 0x012D	; 0x80012d <_ZL7Channel>
     6f6:	8e 2f       	mov	r24, r30
     6f8:	ee 0f       	add	r30, r30
     6fa:	99 0b       	sbc	r25, r25
     6fc:	fc 01       	movw	r30, r24
     6fe:	ee 0f       	add	r30, r30
     700:	ff 1f       	adc	r31, r31
     702:	e8 0f       	add	r30, r24
     704:	f9 1f       	adc	r31, r25
     706:	e2 5d       	subi	r30, 0xD2	; 210
     708:	fe 4f       	sbci	r31, 0xFE	; 254
     70a:	80 81       	ld	r24, Z
     70c:	86 ff       	sbrs	r24, 6
     70e:	11 c0       	rjmp	.+34     	; 0x732 <__vector_11+0x13e>
     710:	e0 91 2d 01 	lds	r30, 0x012D	; 0x80012d <_ZL7Channel>
     714:	8e 2f       	mov	r24, r30
     716:	ee 0f       	add	r30, r30
     718:	99 0b       	sbc	r25, r25
     71a:	fc 01       	movw	r30, r24
     71c:	ee 0f       	add	r30, r30
     71e:	ff 1f       	adc	r31, r31
     720:	e8 0f       	add	r30, r24
     722:	f9 1f       	adc	r31, r25
     724:	e2 5d       	subi	r30, 0xD2	; 210
     726:	fe 4f       	sbci	r31, 0xFE	; 254
     728:	80 81       	ld	r24, Z
     72a:	61 e0       	ldi	r22, 0x01	; 1
     72c:	8f 73       	andi	r24, 0x3F	; 63
     72e:	0e 94 87 00 	call	0x10e	; 0x10e <digitalWrite>
     732:	ff 91       	pop	r31
     734:	ef 91       	pop	r30
     736:	df 91       	pop	r29
     738:	cf 91       	pop	r28
     73a:	bf 91       	pop	r27
     73c:	af 91       	pop	r26
     73e:	9f 91       	pop	r25
     740:	8f 91       	pop	r24
     742:	7f 91       	pop	r23
     744:	6f 91       	pop	r22
     746:	5f 91       	pop	r21
     748:	4f 91       	pop	r20
     74a:	3f 91       	pop	r19
     74c:	2f 91       	pop	r18
     74e:	0f 90       	pop	r0
     750:	0f be       	out	0x3f, r0	; 63
     752:	0f 90       	pop	r0
     754:	1f 90       	pop	r1
     756:	18 95       	reti
     758:	80 e4       	ldi	r24, 0x40	; 64
     75a:	9c e9       	ldi	r25, 0x9C	; 156
     75c:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
     760:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
     764:	8f ef       	ldi	r24, 0xFF	; 255
     766:	80 93 2d 01 	sts	0x012D, r24	; 0x80012d <_ZL7Channel>
     76a:	e3 cf       	rjmp	.-58     	; 0x732 <__vector_11+0x13e>

0000076c <__vector_2>:
     76c:	1f 92       	push	r1
     76e:	0f 92       	push	r0
     770:	0f b6       	in	r0, 0x3f	; 63
     772:	0f 92       	push	r0
     774:	11 24       	eor	r1, r1
     776:	8f 93       	push	r24
     778:	9f 93       	push	r25
     77a:	af 93       	push	r26
     77c:	bf 93       	push	r27
     77e:	80 91 28 01 	lds	r24, 0x0128	; 0x800128 <dummy2>
     782:	90 91 29 01 	lds	r25, 0x0129	; 0x800129 <dummy2+0x1>
     786:	a0 91 2a 01 	lds	r26, 0x012A	; 0x80012a <dummy2+0x2>
     78a:	b0 91 2b 01 	lds	r27, 0x012B	; 0x80012b <dummy2+0x3>
     78e:	01 96       	adiw	r24, 0x01	; 1
     790:	a1 1d       	adc	r26, r1
     792:	b1 1d       	adc	r27, r1
     794:	80 93 28 01 	sts	0x0128, r24	; 0x800128 <dummy2>
     798:	90 93 29 01 	sts	0x0129, r25	; 0x800129 <dummy2+0x1>
     79c:	a0 93 2a 01 	sts	0x012A, r26	; 0x80012a <dummy2+0x2>
     7a0:	b0 93 2b 01 	sts	0x012B, r27	; 0x80012b <dummy2+0x3>
     7a4:	bf 91       	pop	r27
     7a6:	af 91       	pop	r26
     7a8:	9f 91       	pop	r25
     7aa:	8f 91       	pop	r24
     7ac:	0f 90       	pop	r0
     7ae:	0f be       	out	0x3f, r0	; 63
     7b0:	0f 90       	pop	r0
     7b2:	1f 90       	pop	r1
     7b4:	18 95       	reti

000007b6 <__vector_1>:
     7b6:	1f 92       	push	r1
     7b8:	0f 92       	push	r0
     7ba:	0f b6       	in	r0, 0x3f	; 63
     7bc:	0f 92       	push	r0
     7be:	11 24       	eor	r1, r1
     7c0:	8f 93       	push	r24
     7c2:	9f 93       	push	r25
     7c4:	af 93       	push	r26
     7c6:	bf 93       	push	r27
     7c8:	80 91 24 01 	lds	r24, 0x0124	; 0x800124 <__data_end>
     7cc:	90 91 25 01 	lds	r25, 0x0125	; 0x800125 <__data_end+0x1>
     7d0:	a0 91 26 01 	lds	r26, 0x0126	; 0x800126 <__data_end+0x2>
     7d4:	b0 91 27 01 	lds	r27, 0x0127	; 0x800127 <__data_end+0x3>
     7d8:	01 96       	adiw	r24, 0x01	; 1
     7da:	a1 1d       	adc	r26, r1
     7dc:	b1 1d       	adc	r27, r1
     7de:	80 93 24 01 	sts	0x0124, r24	; 0x800124 <__data_end>
     7e2:	90 93 25 01 	sts	0x0125, r25	; 0x800125 <__data_end+0x1>
     7e6:	a0 93 26 01 	sts	0x0126, r26	; 0x800126 <__data_end+0x2>
     7ea:	b0 93 27 01 	sts	0x0127, r27	; 0x800127 <__data_end+0x3>
     7ee:	bf 91       	pop	r27
     7f0:	af 91       	pop	r26
     7f2:	9f 91       	pop	r25
     7f4:	8f 91       	pop	r24
     7f6:	0f 90       	pop	r0
     7f8:	0f be       	out	0x3f, r0	; 63
     7fa:	0f 90       	pop	r0
     7fc:	1f 90       	pop	r1
     7fe:	18 95       	reti

00000800 <_GLOBAL__sub_I___vector_18>:
     800:	e2 e5       	ldi	r30, 0x52	; 82
     802:	f1 e0       	ldi	r31, 0x01	; 1
     804:	13 82       	std	Z+3, r1	; 0x03
     806:	12 82       	std	Z+2, r1	; 0x02
     808:	88 ee       	ldi	r24, 0xE8	; 232
     80a:	93 e0       	ldi	r25, 0x03	; 3
     80c:	a0 e0       	ldi	r26, 0x00	; 0
     80e:	b0 e0       	ldi	r27, 0x00	; 0
     810:	84 83       	std	Z+4, r24	; 0x04
     812:	95 83       	std	Z+5, r25	; 0x05
     814:	a6 83       	std	Z+6, r26	; 0x06
     816:	b7 83       	std	Z+7, r27	; 0x07
     818:	84 e0       	ldi	r24, 0x04	; 4
     81a:	91 e0       	ldi	r25, 0x01	; 1
     81c:	91 83       	std	Z+1, r25	; 0x01
     81e:	80 83       	st	Z, r24
     820:	85 ec       	ldi	r24, 0xC5	; 197
     822:	90 e0       	ldi	r25, 0x00	; 0
     824:	95 87       	std	Z+13, r25	; 0x0d
     826:	84 87       	std	Z+12, r24	; 0x0c
     828:	84 ec       	ldi	r24, 0xC4	; 196
     82a:	90 e0       	ldi	r25, 0x00	; 0
     82c:	97 87       	std	Z+15, r25	; 0x0f
     82e:	86 87       	std	Z+14, r24	; 0x0e
     830:	80 ec       	ldi	r24, 0xC0	; 192
     832:	90 e0       	ldi	r25, 0x00	; 0
     834:	91 8b       	std	Z+17, r25	; 0x11
     836:	80 8b       	std	Z+16, r24	; 0x10
     838:	81 ec       	ldi	r24, 0xC1	; 193
     83a:	90 e0       	ldi	r25, 0x00	; 0
     83c:	93 8b       	std	Z+19, r25	; 0x13
     83e:	82 8b       	std	Z+18, r24	; 0x12
     840:	82 ec       	ldi	r24, 0xC2	; 194
     842:	90 e0       	ldi	r25, 0x00	; 0
     844:	95 8b       	std	Z+21, r25	; 0x15
     846:	84 8b       	std	Z+20, r24	; 0x14
     848:	86 ec       	ldi	r24, 0xC6	; 198
     84a:	90 e0       	ldi	r25, 0x00	; 0
     84c:	97 8b       	std	Z+23, r25	; 0x17
     84e:	86 8b       	std	Z+22, r24	; 0x16
     850:	11 8e       	std	Z+25, r1	; 0x19
     852:	12 8e       	std	Z+26, r1	; 0x1a
     854:	13 8e       	std	Z+27, r1	; 0x1b
     856:	14 8e       	std	Z+28, r1	; 0x1c
     858:	08 95       	ret

0000085a <main>:
     85a:	cf 93       	push	r28
     85c:	df 93       	push	r29
     85e:	cd b7       	in	r28, 0x3d	; 61
     860:	de b7       	in	r29, 0x3e	; 62
     862:	c0 51       	subi	r28, 0x10	; 16
     864:	d1 40       	sbci	r29, 0x01	; 1
     866:	0f b6       	in	r0, 0x3f	; 63
     868:	f8 94       	cli
     86a:	de bf       	out	0x3e, r29	; 62
     86c:	0f be       	out	0x3f, r0	; 63
     86e:	cd bf       	out	0x3d, r28	; 61
     870:	0f b6       	in	r0, 0x3f	; 63
     872:	f8 94       	cli
     874:	a8 95       	wdr
     876:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     87a:	88 61       	ori	r24, 0x18	; 24
     87c:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     880:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
     884:	0f be       	out	0x3f, r0	; 63
     886:	78 94       	sei
     888:	84 b5       	in	r24, 0x24	; 36
     88a:	82 60       	ori	r24, 0x02	; 2
     88c:	84 bd       	out	0x24, r24	; 36
     88e:	84 b5       	in	r24, 0x24	; 36
     890:	81 60       	ori	r24, 0x01	; 1
     892:	84 bd       	out	0x24, r24	; 36
     894:	85 b5       	in	r24, 0x25	; 37
     896:	82 60       	ori	r24, 0x02	; 2
     898:	85 bd       	out	0x25, r24	; 37
     89a:	85 b5       	in	r24, 0x25	; 37
     89c:	81 60       	ori	r24, 0x01	; 1
     89e:	85 bd       	out	0x25, r24	; 37
     8a0:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     8a4:	81 60       	ori	r24, 0x01	; 1
     8a6:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
     8aa:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     8ae:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     8b2:	82 60       	ori	r24, 0x02	; 2
     8b4:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     8b8:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     8bc:	81 60       	ori	r24, 0x01	; 1
     8be:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
     8c2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     8c6:	81 60       	ori	r24, 0x01	; 1
     8c8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
     8cc:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     8d0:	84 60       	ori	r24, 0x04	; 4
     8d2:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
     8d6:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     8da:	81 60       	ori	r24, 0x01	; 1
     8dc:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
     8e0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8e4:	84 60       	ori	r24, 0x04	; 4
     8e6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8ea:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8ee:	82 60       	ori	r24, 0x02	; 2
     8f0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8f4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8f8:	81 60       	ori	r24, 0x01	; 1
     8fa:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     8fe:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     902:	80 68       	ori	r24, 0x80	; 128
     904:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
     908:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
     90c:	80 91 69 00 	lds	r24, 0x0069	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
     910:	83 60       	ori	r24, 0x03	; 3
     912:	80 93 69 00 	sts	0x0069, r24	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
     916:	80 91 69 00 	lds	r24, 0x0069	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
     91a:	88 60       	ori	r24, 0x08	; 8
     91c:	80 93 69 00 	sts	0x0069, r24	; 0x800069 <__DATA_REGION_ORIGIN__+0x9>
     920:	8d b3       	in	r24, 0x1d	; 29
     922:	83 60       	ori	r24, 0x03	; 3
     924:	8d bb       	out	0x1d, r24	; 29
     926:	78 94       	sei
     928:	c1 5f       	subi	r28, 0xF1	; 241
     92a:	de 4f       	sbci	r29, 0xFE	; 254
     92c:	19 82       	std	Y+1, r1	; 0x01
     92e:	18 82       	st	Y, r1
     930:	cf 50       	subi	r28, 0x0F	; 15
     932:	d1 40       	sbci	r29, 0x01	; 1
     934:	cf 5f       	subi	r28, 0xFF	; 255
     936:	de 4f       	sbci	r29, 0xFE	; 254
     938:	18 82       	st	Y, r1
     93a:	c1 50       	subi	r28, 0x01	; 1
     93c:	d1 40       	sbci	r29, 0x01	; 1
     93e:	ce 5f       	subi	r28, 0xFE	; 254
     940:	de 4f       	sbci	r29, 0xFE	; 254
     942:	18 82       	st	Y, r1
     944:	c2 50       	subi	r28, 0x02	; 2
     946:	d1 40       	sbci	r29, 0x01	; 1
     948:	cd 5f       	subi	r28, 0xFD	; 253
     94a:	de 4f       	sbci	r29, 0xFE	; 254
     94c:	18 82       	st	Y, r1
     94e:	c3 50       	subi	r28, 0x03	; 3
     950:	d1 40       	sbci	r29, 0x01	; 1
     952:	cc 5f       	subi	r28, 0xFC	; 252
     954:	de 4f       	sbci	r29, 0xFE	; 254
     956:	18 82       	st	Y, r1
     958:	c4 50       	subi	r28, 0x04	; 4
     95a:	d1 40       	sbci	r29, 0x01	; 1
     95c:	cb 5f       	subi	r28, 0xFB	; 251
     95e:	de 4f       	sbci	r29, 0xFE	; 254
     960:	18 82       	st	Y, r1
     962:	c5 50       	subi	r28, 0x05	; 5
     964:	d1 40       	sbci	r29, 0x01	; 1
     966:	ca 5f       	subi	r28, 0xFA	; 250
     968:	de 4f       	sbci	r29, 0xFE	; 254
     96a:	18 82       	st	Y, r1
     96c:	c6 50       	subi	r28, 0x06	; 6
     96e:	d1 40       	sbci	r29, 0x01	; 1
     970:	c9 5f       	subi	r28, 0xF9	; 249
     972:	de 4f       	sbci	r29, 0xFE	; 254
     974:	18 82       	st	Y, r1
     976:	c7 50       	subi	r28, 0x07	; 7
     978:	d1 40       	sbci	r29, 0x01	; 1
     97a:	c8 5f       	subi	r28, 0xF8	; 248
     97c:	de 4f       	sbci	r29, 0xFE	; 254
     97e:	18 82       	st	Y, r1
     980:	c8 50       	subi	r28, 0x08	; 8
     982:	d1 40       	sbci	r29, 0x01	; 1
     984:	80 91 2c 01 	lds	r24, 0x012C	; 0x80012c <ServoCount>
     988:	8c 30       	cpi	r24, 0x0C	; 12
     98a:	08 f4       	brcc	.+2      	; 0x98e <__stack+0x8f>
     98c:	1c c1       	rjmp	.+568    	; 0xbc6 <__stack+0x2c7>
     98e:	8f ef       	ldi	r24, 0xFF	; 255
     990:	c7 5f       	subi	r28, 0xF7	; 247
     992:	de 4f       	sbci	r29, 0xFE	; 254
     994:	88 83       	st	Y, r24
     996:	c9 50       	subi	r28, 0x09	; 9
     998:	d1 40       	sbci	r29, 0x01	; 1
     99a:	80 91 2c 01 	lds	r24, 0x012C	; 0x80012c <ServoCount>
     99e:	8c 30       	cpi	r24, 0x0C	; 12
     9a0:	08 f4       	brcc	.+2      	; 0x9a4 <__stack+0xa5>
     9a2:	27 c1       	rjmp	.+590    	; 0xbf2 <__stack+0x2f3>
     9a4:	8f ef       	ldi	r24, 0xFF	; 255
     9a6:	c4 5f       	subi	r28, 0xF4	; 244
     9a8:	de 4f       	sbci	r29, 0xFE	; 254
     9aa:	88 83       	st	Y, r24
     9ac:	cc 50       	subi	r28, 0x0C	; 12
     9ae:	d1 40       	sbci	r29, 0x01	; 1
     9b0:	e0 91 62 01 	lds	r30, 0x0162	; 0x800162 <Serial+0x10>
     9b4:	f0 91 63 01 	lds	r31, 0x0163	; 0x800163 <Serial+0x11>
     9b8:	82 e0       	ldi	r24, 0x02	; 2
     9ba:	80 83       	st	Z, r24
     9bc:	e0 91 5e 01 	lds	r30, 0x015E	; 0x80015e <Serial+0xc>
     9c0:	f0 91 5f 01 	lds	r31, 0x015F	; 0x80015f <Serial+0xd>
     9c4:	10 82       	st	Z, r1
     9c6:	e0 91 60 01 	lds	r30, 0x0160	; 0x800160 <Serial+0xe>
     9ca:	f0 91 61 01 	lds	r31, 0x0161	; 0x800161 <Serial+0xf>
     9ce:	8f ec       	ldi	r24, 0xCF	; 207
     9d0:	80 83       	st	Z, r24
     9d2:	10 92 6a 01 	sts	0x016A, r1	; 0x80016a <Serial+0x18>
     9d6:	e0 91 66 01 	lds	r30, 0x0166	; 0x800166 <Serial+0x14>
     9da:	f0 91 67 01 	lds	r31, 0x0167	; 0x800167 <Serial+0x15>
     9de:	86 e0       	ldi	r24, 0x06	; 6
     9e0:	80 83       	st	Z, r24
     9e2:	e0 91 64 01 	lds	r30, 0x0164	; 0x800164 <Serial+0x12>
     9e6:	f0 91 65 01 	lds	r31, 0x0165	; 0x800165 <Serial+0x13>
     9ea:	80 81       	ld	r24, Z
     9ec:	80 61       	ori	r24, 0x10	; 16
     9ee:	80 83       	st	Z, r24
     9f0:	e0 91 64 01 	lds	r30, 0x0164	; 0x800164 <Serial+0x12>
     9f4:	f0 91 65 01 	lds	r31, 0x0165	; 0x800165 <Serial+0x13>
     9f8:	80 81       	ld	r24, Z
     9fa:	88 60       	ori	r24, 0x08	; 8
     9fc:	80 83       	st	Z, r24
     9fe:	e0 91 64 01 	lds	r30, 0x0164	; 0x800164 <Serial+0x12>
     a02:	f0 91 65 01 	lds	r31, 0x0165	; 0x800165 <Serial+0x13>
     a06:	80 81       	ld	r24, Z
     a08:	80 68       	ori	r24, 0x80	; 128
     a0a:	80 83       	st	Z, r24
     a0c:	e0 91 64 01 	lds	r30, 0x0164	; 0x800164 <Serial+0x12>
     a10:	f0 91 65 01 	lds	r31, 0x0165	; 0x800165 <Serial+0x13>
     a14:	80 81       	ld	r24, Z
     a16:	8f 7d       	andi	r24, 0xDF	; 223
     a18:	80 83       	st	Z, r24
     a1a:	68 e0       	ldi	r22, 0x08	; 8
     a1c:	70 e0       	ldi	r23, 0x00	; 0
     a1e:	ce 01       	movw	r24, r28
     a20:	87 5f       	subi	r24, 0xF7	; 247
     a22:	9e 4f       	sbci	r25, 0xFE	; 254
     a24:	0e 94 e0 01 	call	0x3c0	; 0x3c0 <_ZN5Servo6attachEi>
     a28:	69 e0       	ldi	r22, 0x09	; 9
     a2a:	70 e0       	ldi	r23, 0x00	; 0
     a2c:	89 e0       	ldi	r24, 0x09	; 9
     a2e:	91 e0       	ldi	r25, 0x01	; 1
     a30:	8c 0f       	add	r24, r28
     a32:	9d 1f       	adc	r25, r29
     a34:	03 96       	adiw	r24, 0x03	; 3
     a36:	0e 94 e0 01 	call	0x3c0	; 0x3c0 <_ZN5Servo6attachEi>
     a3a:	82 e1       	ldi	r24, 0x12	; 18
     a3c:	e8 2e       	mov	r14, r24
     a3e:	81 e0       	ldi	r24, 0x01	; 1
     a40:	f8 2e       	mov	r15, r24
     a42:	8e 01       	movw	r16, r28
     a44:	0f 5f       	subi	r16, 0xFF	; 255
     a46:	1f 4f       	sbci	r17, 0xFF	; 255
     a48:	90 e0       	ldi	r25, 0x00	; 0
     a4a:	c9 2e       	mov	r12, r25
     a4c:	90 e0       	ldi	r25, 0x00	; 0
     a4e:	d9 2e       	mov	r13, r25
     a50:	f0 e0       	ldi	r31, 0x00	; 0
     a52:	e0 e0       	ldi	r30, 0x00	; 0
     a54:	cf 5f       	subi	r28, 0xFF	; 255
     a56:	de 4f       	sbci	r29, 0xFE	; 254
     a58:	28 81       	ld	r18, Y
     a5a:	c1 50       	subi	r28, 0x01	; 1
     a5c:	d1 40       	sbci	r29, 0x01	; 1
     a5e:	ce 5f       	subi	r28, 0xFE	; 254
     a60:	de 4f       	sbci	r29, 0xFE	; 254
     a62:	38 81       	ld	r19, Y
     a64:	c2 50       	subi	r28, 0x02	; 2
     a66:	d1 40       	sbci	r29, 0x01	; 1
     a68:	cd 5f       	subi	r28, 0xFD	; 253
     a6a:	de 4f       	sbci	r29, 0xFE	; 254
     a6c:	48 81       	ld	r20, Y
     a6e:	c3 50       	subi	r28, 0x03	; 3
     a70:	d1 40       	sbci	r29, 0x01	; 1
     a72:	cc 5f       	subi	r28, 0xFC	; 252
     a74:	de 4f       	sbci	r29, 0xFE	; 254
     a76:	58 81       	ld	r21, Y
     a78:	c4 50       	subi	r28, 0x04	; 4
     a7a:	d1 40       	sbci	r29, 0x01	; 1
     a7c:	cb 5f       	subi	r28, 0xFB	; 251
     a7e:	de 4f       	sbci	r29, 0xFE	; 254
     a80:	68 81       	ld	r22, Y
     a82:	c5 50       	subi	r28, 0x05	; 5
     a84:	d1 40       	sbci	r29, 0x01	; 1
     a86:	ca 5f       	subi	r28, 0xFA	; 250
     a88:	de 4f       	sbci	r29, 0xFE	; 254
     a8a:	78 81       	ld	r23, Y
     a8c:	c6 50       	subi	r28, 0x06	; 6
     a8e:	d1 40       	sbci	r29, 0x01	; 1
     a90:	c9 5f       	subi	r28, 0xF9	; 249
     a92:	de 4f       	sbci	r29, 0xFE	; 254
     a94:	88 81       	ld	r24, Y
     a96:	c7 50       	subi	r28, 0x07	; 7
     a98:	d1 40       	sbci	r29, 0x01	; 1
     a9a:	c8 5f       	subi	r28, 0xF8	; 248
     a9c:	de 4f       	sbci	r29, 0xFE	; 254
     a9e:	98 81       	ld	r25, Y
     aa0:	c8 50       	subi	r28, 0x08	; 8
     aa2:	d1 40       	sbci	r29, 0x01	; 1
     aa4:	a1 e0       	ldi	r26, 0x01	; 1
     aa6:	0e 94 1b 06 	call	0xc36	; 0xc36 <__adddi3_s8>
     aaa:	cf 5f       	subi	r28, 0xFF	; 255
     aac:	de 4f       	sbci	r29, 0xFE	; 254
     aae:	28 83       	st	Y, r18
     ab0:	c1 50       	subi	r28, 0x01	; 1
     ab2:	d1 40       	sbci	r29, 0x01	; 1
     ab4:	ce 5f       	subi	r28, 0xFE	; 254
     ab6:	de 4f       	sbci	r29, 0xFE	; 254
     ab8:	38 83       	st	Y, r19
     aba:	c2 50       	subi	r28, 0x02	; 2
     abc:	d1 40       	sbci	r29, 0x01	; 1
     abe:	cd 5f       	subi	r28, 0xFD	; 253
     ac0:	de 4f       	sbci	r29, 0xFE	; 254
     ac2:	48 83       	st	Y, r20
     ac4:	c3 50       	subi	r28, 0x03	; 3
     ac6:	d1 40       	sbci	r29, 0x01	; 1
     ac8:	cc 5f       	subi	r28, 0xFC	; 252
     aca:	de 4f       	sbci	r29, 0xFE	; 254
     acc:	58 83       	st	Y, r21
     ace:	c4 50       	subi	r28, 0x04	; 4
     ad0:	d1 40       	sbci	r29, 0x01	; 1
     ad2:	cb 5f       	subi	r28, 0xFB	; 251
     ad4:	de 4f       	sbci	r29, 0xFE	; 254
     ad6:	68 83       	st	Y, r22
     ad8:	c5 50       	subi	r28, 0x05	; 5
     ada:	d1 40       	sbci	r29, 0x01	; 1
     adc:	ca 5f       	subi	r28, 0xFA	; 250
     ade:	de 4f       	sbci	r29, 0xFE	; 254
     ae0:	78 83       	st	Y, r23
     ae2:	c6 50       	subi	r28, 0x06	; 6
     ae4:	d1 40       	sbci	r29, 0x01	; 1
     ae6:	c9 5f       	subi	r28, 0xF9	; 249
     ae8:	de 4f       	sbci	r29, 0xFE	; 254
     aea:	88 83       	st	Y, r24
     aec:	c7 50       	subi	r28, 0x07	; 7
     aee:	d1 40       	sbci	r29, 0x01	; 1
     af0:	c8 5f       	subi	r28, 0xF8	; 248
     af2:	de 4f       	sbci	r29, 0xFE	; 254
     af4:	98 83       	st	Y, r25
     af6:	c8 50       	subi	r28, 0x08	; 8
     af8:	d1 40       	sbci	r29, 0x01	; 1
     afa:	31 97       	sbiw	r30, 0x01	; 1
     afc:	09 f0       	breq	.+2      	; 0xb00 <__stack+0x201>
     afe:	aa cf       	rjmp	.-172    	; 0xa54 <__stack+0x155>
     b00:	c1 5f       	subi	r28, 0xF1	; 241
     b02:	de 4f       	sbci	r29, 0xFE	; 254
     b04:	88 81       	ld	r24, Y
     b06:	99 81       	ldd	r25, Y+1	; 0x01
     b08:	cf 50       	subi	r28, 0x0F	; 15
     b0a:	d1 40       	sbci	r29, 0x01	; 1
     b0c:	01 96       	adiw	r24, 0x01	; 1
     b0e:	c1 5f       	subi	r28, 0xF1	; 241
     b10:	de 4f       	sbci	r29, 0xFE	; 254
     b12:	99 83       	std	Y+1, r25	; 0x01
     b14:	88 83       	st	Y, r24
     b16:	cf 50       	subi	r28, 0x0F	; 15
     b18:	d1 40       	sbci	r29, 0x01	; 1
     b1a:	80 90 28 01 	lds	r8, 0x0128	; 0x800128 <dummy2>
     b1e:	90 90 29 01 	lds	r9, 0x0129	; 0x800129 <dummy2+0x1>
     b22:	a0 90 2a 01 	lds	r10, 0x012A	; 0x80012a <dummy2+0x2>
     b26:	b0 90 2b 01 	lds	r11, 0x012B	; 0x80012b <dummy2+0x3>
     b2a:	40 91 24 01 	lds	r20, 0x0124	; 0x800124 <__data_end>
     b2e:	50 91 25 01 	lds	r21, 0x0125	; 0x800125 <__data_end+0x1>
     b32:	60 91 26 01 	lds	r22, 0x0126	; 0x800126 <__data_end+0x2>
     b36:	70 91 27 01 	lds	r23, 0x0127	; 0x800127 <__data_end+0x3>
     b3a:	c1 5f       	subi	r28, 0xF1	; 241
     b3c:	de 4f       	sbci	r29, 0xFE	; 254
     b3e:	28 81       	ld	r18, Y
     b40:	39 81       	ldd	r19, Y+1	; 0x01
     b42:	cf 50       	subi	r28, 0x0F	; 15
     b44:	d1 40       	sbci	r29, 0x01	; 1
     b46:	ef b7       	in	r30, 0x3f	; 63
     b48:	f8 94       	cli
     b4a:	80 91 f4 01 	lds	r24, 0x01F4	; 0x8001f4 <timer0_millis>
     b4e:	90 91 f5 01 	lds	r25, 0x01F5	; 0x8001f5 <timer0_millis+0x1>
     b52:	a0 91 f6 01 	lds	r26, 0x01F6	; 0x8001f6 <timer0_millis+0x2>
     b56:	b0 91 f7 01 	lds	r27, 0x01F7	; 0x8001f7 <timer0_millis+0x3>
     b5a:	ef bf       	out	0x3f, r30	; 63
     b5c:	bf 92       	push	r11
     b5e:	af 92       	push	r10
     b60:	9f 92       	push	r9
     b62:	8f 92       	push	r8
     b64:	7f 93       	push	r23
     b66:	6f 93       	push	r22
     b68:	5f 93       	push	r21
     b6a:	4f 93       	push	r20
     b6c:	3f 93       	push	r19
     b6e:	2f 93       	push	r18
     b70:	bf 93       	push	r27
     b72:	af 93       	push	r26
     b74:	9f 93       	push	r25
     b76:	8f 93       	push	r24
     b78:	ff 92       	push	r15
     b7a:	ef 92       	push	r14
     b7c:	81 e0       	ldi	r24, 0x01	; 1
     b7e:	8f 93       	push	r24
     b80:	1f 92       	push	r1
     b82:	1f 93       	push	r17
     b84:	0f 93       	push	r16
     b86:	0e 94 2d 06 	call	0xc5a	; 0xc5a <snprintf>
     b8a:	f8 01       	movw	r30, r16
     b8c:	01 90       	ld	r0, Z+
     b8e:	00 20       	and	r0, r0
     b90:	e9 f7       	brne	.-6      	; 0xb8c <__stack+0x28d>
     b92:	31 97       	sbiw	r30, 0x01	; 1
     b94:	af 01       	movw	r20, r30
     b96:	40 1b       	sub	r20, r16
     b98:	51 0b       	sbc	r21, r17
     b9a:	b8 01       	movw	r22, r16
     b9c:	82 e5       	ldi	r24, 0x52	; 82
     b9e:	91 e0       	ldi	r25, 0x01	; 1
     ba0:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <_ZN5Print5writeEPKhj>
     ba4:	0f b6       	in	r0, 0x3f	; 63
     ba6:	f8 94       	cli
     ba8:	de bf       	out	0x3e, r29	; 62
     baa:	0f be       	out	0x3f, r0	; 63
     bac:	cd bf       	out	0x3d, r28	; 61
     bae:	c1 14       	cp	r12, r1
     bb0:	d1 04       	cpc	r13, r1
     bb2:	09 f4       	brne	.+2      	; 0xbb6 <__stack+0x2b7>
     bb4:	4d cf       	rjmp	.-358    	; 0xa50 <__stack+0x151>
     bb6:	0e 94 3d 01 	call	0x27a	; 0x27a <_Z17Serial0_availablev>
     bba:	88 23       	and	r24, r24
     bbc:	09 f4       	brne	.+2      	; 0xbc0 <__stack+0x2c1>
     bbe:	48 cf       	rjmp	.-368    	; 0xa50 <__stack+0x151>
     bc0:	0e 94 00 00 	call	0	; 0x0 <__vectors>
     bc4:	45 cf       	rjmp	.-374    	; 0xa50 <__stack+0x151>
     bc6:	91 e0       	ldi	r25, 0x01	; 1
     bc8:	98 0f       	add	r25, r24
     bca:	90 93 2c 01 	sts	0x012C, r25	; 0x80012c <ServoCount>
     bce:	c7 5f       	subi	r28, 0xF7	; 247
     bd0:	de 4f       	sbci	r29, 0xFE	; 254
     bd2:	88 83       	st	Y, r24
     bd4:	c9 50       	subi	r28, 0x09	; 9
     bd6:	d1 40       	sbci	r29, 0x01	; 1
     bd8:	90 e0       	ldi	r25, 0x00	; 0
     bda:	fc 01       	movw	r30, r24
     bdc:	ee 0f       	add	r30, r30
     bde:	ff 1f       	adc	r31, r31
     be0:	e8 0f       	add	r30, r24
     be2:	f9 1f       	adc	r31, r25
     be4:	e2 5d       	subi	r30, 0xD2	; 210
     be6:	fe 4f       	sbci	r31, 0xFE	; 254
     be8:	88 eb       	ldi	r24, 0xB8	; 184
     bea:	9b e0       	ldi	r25, 0x0B	; 11
     bec:	92 83       	std	Z+2, r25	; 0x02
     bee:	81 83       	std	Z+1, r24	; 0x01
     bf0:	d4 ce       	rjmp	.-600    	; 0x99a <__stack+0x9b>
     bf2:	91 e0       	ldi	r25, 0x01	; 1
     bf4:	98 0f       	add	r25, r24
     bf6:	90 93 2c 01 	sts	0x012C, r25	; 0x80012c <ServoCount>
     bfa:	c4 5f       	subi	r28, 0xF4	; 244
     bfc:	de 4f       	sbci	r29, 0xFE	; 254
     bfe:	88 83       	st	Y, r24
     c00:	cc 50       	subi	r28, 0x0C	; 12
     c02:	d1 40       	sbci	r29, 0x01	; 1
     c04:	90 e0       	ldi	r25, 0x00	; 0
     c06:	fc 01       	movw	r30, r24
     c08:	ee 0f       	add	r30, r30
     c0a:	ff 1f       	adc	r31, r31
     c0c:	e8 0f       	add	r30, r24
     c0e:	f9 1f       	adc	r31, r25
     c10:	e2 5d       	subi	r30, 0xD2	; 210
     c12:	fe 4f       	sbci	r31, 0xFE	; 254
     c14:	88 eb       	ldi	r24, 0xB8	; 184
     c16:	9b e0       	ldi	r25, 0x0B	; 11
     c18:	92 83       	std	Z+2, r25	; 0x02
     c1a:	81 83       	std	Z+1, r24	; 0x01
     c1c:	c9 ce       	rjmp	.-622    	; 0x9b0 <__stack+0xb1>

00000c1e <__udivmodqi4>:
     c1e:	99 1b       	sub	r25, r25
     c20:	79 e0       	ldi	r23, 0x09	; 9
     c22:	04 c0       	rjmp	.+8      	; 0xc2c <__udivmodqi4_ep>

00000c24 <__udivmodqi4_loop>:
     c24:	99 1f       	adc	r25, r25
     c26:	96 17       	cp	r25, r22
     c28:	08 f0       	brcs	.+2      	; 0xc2c <__udivmodqi4_ep>
     c2a:	96 1b       	sub	r25, r22

00000c2c <__udivmodqi4_ep>:
     c2c:	88 1f       	adc	r24, r24
     c2e:	7a 95       	dec	r23
     c30:	c9 f7       	brne	.-14     	; 0xc24 <__udivmodqi4_loop>
     c32:	80 95       	com	r24
     c34:	08 95       	ret

00000c36 <__adddi3_s8>:
     c36:	00 24       	eor	r0, r0
     c38:	a7 fd       	sbrc	r26, 7
     c3a:	00 94       	com	r0
     c3c:	2a 0f       	add	r18, r26
     c3e:	30 1d       	adc	r19, r0
     c40:	40 1d       	adc	r20, r0
     c42:	50 1d       	adc	r21, r0
     c44:	60 1d       	adc	r22, r0
     c46:	70 1d       	adc	r23, r0
     c48:	80 1d       	adc	r24, r0
     c4a:	90 1d       	adc	r25, r0
     c4c:	08 95       	ret

00000c4e <__tablejump2__>:
     c4e:	ee 0f       	add	r30, r30
     c50:	ff 1f       	adc	r31, r31
     c52:	05 90       	lpm	r0, Z+
     c54:	f4 91       	lpm	r31, Z
     c56:	e0 2d       	mov	r30, r0
     c58:	09 94       	ijmp

00000c5a <snprintf>:
     c5a:	ae e0       	ldi	r26, 0x0E	; 14
     c5c:	b0 e0       	ldi	r27, 0x00	; 0
     c5e:	e3 e3       	ldi	r30, 0x33	; 51
     c60:	f6 e0       	ldi	r31, 0x06	; 6
     c62:	0c 94 e9 08 	jmp	0x11d2	; 0x11d2 <__prologue_saves__+0x1c>
     c66:	0d 89       	ldd	r16, Y+21	; 0x15
     c68:	1e 89       	ldd	r17, Y+22	; 0x16
     c6a:	8f 89       	ldd	r24, Y+23	; 0x17
     c6c:	98 8d       	ldd	r25, Y+24	; 0x18
     c6e:	26 e0       	ldi	r18, 0x06	; 6
     c70:	2c 83       	std	Y+4, r18	; 0x04
     c72:	1a 83       	std	Y+2, r17	; 0x02
     c74:	09 83       	std	Y+1, r16	; 0x01
     c76:	97 ff       	sbrs	r25, 7
     c78:	02 c0       	rjmp	.+4      	; 0xc7e <snprintf+0x24>
     c7a:	80 e0       	ldi	r24, 0x00	; 0
     c7c:	90 e8       	ldi	r25, 0x80	; 128
     c7e:	01 97       	sbiw	r24, 0x01	; 1
     c80:	9e 83       	std	Y+6, r25	; 0x06
     c82:	8d 83       	std	Y+5, r24	; 0x05
     c84:	ae 01       	movw	r20, r28
     c86:	45 5e       	subi	r20, 0xE5	; 229
     c88:	5f 4f       	sbci	r21, 0xFF	; 255
     c8a:	69 8d       	ldd	r22, Y+25	; 0x19
     c8c:	7a 8d       	ldd	r23, Y+26	; 0x1a
     c8e:	ce 01       	movw	r24, r28
     c90:	01 96       	adiw	r24, 0x01	; 1
     c92:	0e 94 5d 06 	call	0xcba	; 0xcba <vfprintf>
     c96:	4d 81       	ldd	r20, Y+5	; 0x05
     c98:	5e 81       	ldd	r21, Y+6	; 0x06
     c9a:	57 fd       	sbrc	r21, 7
     c9c:	0a c0       	rjmp	.+20     	; 0xcb2 <snprintf+0x58>
     c9e:	2f 81       	ldd	r18, Y+7	; 0x07
     ca0:	38 85       	ldd	r19, Y+8	; 0x08
     ca2:	42 17       	cp	r20, r18
     ca4:	53 07       	cpc	r21, r19
     ca6:	0c f4       	brge	.+2      	; 0xcaa <snprintf+0x50>
     ca8:	9a 01       	movw	r18, r20
     caa:	02 0f       	add	r16, r18
     cac:	13 1f       	adc	r17, r19
     cae:	f8 01       	movw	r30, r16
     cb0:	10 82       	st	Z, r1
     cb2:	2e 96       	adiw	r28, 0x0e	; 14
     cb4:	e4 e0       	ldi	r30, 0x04	; 4
     cb6:	0c 94 05 09 	jmp	0x120a	; 0x120a <__epilogue_restores__+0x1c>

00000cba <vfprintf>:
     cba:	ab e0       	ldi	r26, 0x0B	; 11
     cbc:	b0 e0       	ldi	r27, 0x00	; 0
     cbe:	e3 e6       	ldi	r30, 0x63	; 99
     cc0:	f6 e0       	ldi	r31, 0x06	; 6
     cc2:	0c 94 db 08 	jmp	0x11b6	; 0x11b6 <__prologue_saves__>
     cc6:	7c 01       	movw	r14, r24
     cc8:	3b 01       	movw	r6, r22
     cca:	8a 01       	movw	r16, r20
     ccc:	fc 01       	movw	r30, r24
     cce:	17 82       	std	Z+7, r1	; 0x07
     cd0:	16 82       	std	Z+6, r1	; 0x06
     cd2:	83 81       	ldd	r24, Z+3	; 0x03
     cd4:	81 ff       	sbrs	r24, 1
     cd6:	c8 c1       	rjmp	.+912    	; 0x1068 <vfprintf+0x3ae>
     cd8:	ce 01       	movw	r24, r28
     cda:	01 96       	adiw	r24, 0x01	; 1
     cdc:	5c 01       	movw	r10, r24
     cde:	f7 01       	movw	r30, r14
     ce0:	93 81       	ldd	r25, Z+3	; 0x03
     ce2:	f3 01       	movw	r30, r6
     ce4:	93 fd       	sbrc	r25, 3
     ce6:	85 91       	lpm	r24, Z+
     ce8:	93 ff       	sbrs	r25, 3
     cea:	81 91       	ld	r24, Z+
     cec:	3f 01       	movw	r6, r30
     cee:	88 23       	and	r24, r24
     cf0:	09 f4       	brne	.+2      	; 0xcf4 <vfprintf+0x3a>
     cf2:	53 c1       	rjmp	.+678    	; 0xf9a <vfprintf+0x2e0>
     cf4:	85 32       	cpi	r24, 0x25	; 37
     cf6:	39 f4       	brne	.+14     	; 0xd06 <vfprintf+0x4c>
     cf8:	93 fd       	sbrc	r25, 3
     cfa:	85 91       	lpm	r24, Z+
     cfc:	93 ff       	sbrs	r25, 3
     cfe:	81 91       	ld	r24, Z+
     d00:	3f 01       	movw	r6, r30
     d02:	85 32       	cpi	r24, 0x25	; 37
     d04:	29 f4       	brne	.+10     	; 0xd10 <vfprintf+0x56>
     d06:	b7 01       	movw	r22, r14
     d08:	90 e0       	ldi	r25, 0x00	; 0
     d0a:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     d0e:	e7 cf       	rjmp	.-50     	; 0xcde <vfprintf+0x24>
     d10:	91 2c       	mov	r9, r1
     d12:	21 2c       	mov	r2, r1
     d14:	31 2c       	mov	r3, r1
     d16:	ff e1       	ldi	r31, 0x1F	; 31
     d18:	f3 15       	cp	r31, r3
     d1a:	38 f0       	brcs	.+14     	; 0xd2a <vfprintf+0x70>
     d1c:	8b 32       	cpi	r24, 0x2B	; 43
     d1e:	11 f1       	breq	.+68     	; 0xd64 <vfprintf+0xaa>
     d20:	90 f4       	brcc	.+36     	; 0xd46 <vfprintf+0x8c>
     d22:	80 32       	cpi	r24, 0x20	; 32
     d24:	09 f1       	breq	.+66     	; 0xd68 <vfprintf+0xae>
     d26:	83 32       	cpi	r24, 0x23	; 35
     d28:	29 f1       	breq	.+74     	; 0xd74 <vfprintf+0xba>
     d2a:	37 fc       	sbrc	r3, 7
     d2c:	3c c0       	rjmp	.+120    	; 0xda6 <vfprintf+0xec>
     d2e:	20 ed       	ldi	r18, 0xD0	; 208
     d30:	28 0f       	add	r18, r24
     d32:	2a 30       	cpi	r18, 0x0A	; 10
     d34:	50 f5       	brcc	.+84     	; 0xd8a <vfprintf+0xd0>
     d36:	36 fe       	sbrs	r3, 6
     d38:	20 c0       	rjmp	.+64     	; 0xd7a <vfprintf+0xc0>
     d3a:	8a e0       	ldi	r24, 0x0A	; 10
     d3c:	98 9e       	mul	r9, r24
     d3e:	20 0d       	add	r18, r0
     d40:	11 24       	eor	r1, r1
     d42:	92 2e       	mov	r9, r18
     d44:	06 c0       	rjmp	.+12     	; 0xd52 <vfprintf+0x98>
     d46:	8d 32       	cpi	r24, 0x2D	; 45
     d48:	91 f0       	breq	.+36     	; 0xd6e <vfprintf+0xb4>
     d4a:	80 33       	cpi	r24, 0x30	; 48
     d4c:	71 f7       	brne	.-36     	; 0xd2a <vfprintf+0x70>
     d4e:	68 94       	set
     d50:	30 f8       	bld	r3, 0
     d52:	f3 01       	movw	r30, r6
     d54:	93 fd       	sbrc	r25, 3
     d56:	85 91       	lpm	r24, Z+
     d58:	93 ff       	sbrs	r25, 3
     d5a:	81 91       	ld	r24, Z+
     d5c:	3f 01       	movw	r6, r30
     d5e:	81 11       	cpse	r24, r1
     d60:	da cf       	rjmp	.-76     	; 0xd16 <vfprintf+0x5c>
     d62:	21 c0       	rjmp	.+66     	; 0xda6 <vfprintf+0xec>
     d64:	68 94       	set
     d66:	31 f8       	bld	r3, 1
     d68:	68 94       	set
     d6a:	32 f8       	bld	r3, 2
     d6c:	f2 cf       	rjmp	.-28     	; 0xd52 <vfprintf+0x98>
     d6e:	68 94       	set
     d70:	33 f8       	bld	r3, 3
     d72:	ef cf       	rjmp	.-34     	; 0xd52 <vfprintf+0x98>
     d74:	68 94       	set
     d76:	34 f8       	bld	r3, 4
     d78:	ec cf       	rjmp	.-40     	; 0xd52 <vfprintf+0x98>
     d7a:	ea e0       	ldi	r30, 0x0A	; 10
     d7c:	2e 9e       	mul	r2, r30
     d7e:	20 0d       	add	r18, r0
     d80:	11 24       	eor	r1, r1
     d82:	22 2e       	mov	r2, r18
     d84:	68 94       	set
     d86:	35 f8       	bld	r3, 5
     d88:	e4 cf       	rjmp	.-56     	; 0xd52 <vfprintf+0x98>
     d8a:	8e 32       	cpi	r24, 0x2E	; 46
     d8c:	29 f4       	brne	.+10     	; 0xd98 <vfprintf+0xde>
     d8e:	36 fc       	sbrc	r3, 6
     d90:	04 c1       	rjmp	.+520    	; 0xf9a <vfprintf+0x2e0>
     d92:	68 94       	set
     d94:	36 f8       	bld	r3, 6
     d96:	dd cf       	rjmp	.-70     	; 0xd52 <vfprintf+0x98>
     d98:	8c 36       	cpi	r24, 0x6C	; 108
     d9a:	19 f4       	brne	.+6      	; 0xda2 <vfprintf+0xe8>
     d9c:	68 94       	set
     d9e:	37 f8       	bld	r3, 7
     da0:	d8 cf       	rjmp	.-80     	; 0xd52 <vfprintf+0x98>
     da2:	88 36       	cpi	r24, 0x68	; 104
     da4:	b1 f2       	breq	.-84     	; 0xd52 <vfprintf+0x98>
     da6:	98 2f       	mov	r25, r24
     da8:	9f 7d       	andi	r25, 0xDF	; 223
     daa:	95 54       	subi	r25, 0x45	; 69
     dac:	93 30       	cpi	r25, 0x03	; 3
     dae:	e0 f0       	brcs	.+56     	; 0xde8 <vfprintf+0x12e>
     db0:	83 36       	cpi	r24, 0x63	; 99
     db2:	a1 f1       	breq	.+104    	; 0xe1c <vfprintf+0x162>
     db4:	83 37       	cpi	r24, 0x73	; 115
     db6:	c1 f1       	breq	.+112    	; 0xe28 <vfprintf+0x16e>
     db8:	83 35       	cpi	r24, 0x53	; 83
     dba:	09 f0       	breq	.+2      	; 0xdbe <vfprintf+0x104>
     dbc:	63 c0       	rjmp	.+198    	; 0xe84 <vfprintf+0x1ca>
     dbe:	28 01       	movw	r4, r16
     dc0:	f2 e0       	ldi	r31, 0x02	; 2
     dc2:	4f 0e       	add	r4, r31
     dc4:	51 1c       	adc	r5, r1
     dc6:	f8 01       	movw	r30, r16
     dc8:	c0 80       	ld	r12, Z
     dca:	d1 80       	ldd	r13, Z+1	; 0x01
     dcc:	69 2d       	mov	r22, r9
     dce:	70 e0       	ldi	r23, 0x00	; 0
     dd0:	36 fc       	sbrc	r3, 6
     dd2:	02 c0       	rjmp	.+4      	; 0xdd8 <vfprintf+0x11e>
     dd4:	6f ef       	ldi	r22, 0xFF	; 255
     dd6:	7f ef       	ldi	r23, 0xFF	; 255
     dd8:	c6 01       	movw	r24, r12
     dda:	0e 94 37 08 	call	0x106e	; 0x106e <strnlen_P>
     dde:	4c 01       	movw	r8, r24
     de0:	68 94       	set
     de2:	37 f8       	bld	r3, 7
     de4:	82 01       	movw	r16, r4
     de6:	0a c0       	rjmp	.+20     	; 0xdfc <vfprintf+0x142>
     de8:	0c 5f       	subi	r16, 0xFC	; 252
     dea:	1f 4f       	sbci	r17, 0xFF	; 255
     dec:	ff e3       	ldi	r31, 0x3F	; 63
     dee:	f9 83       	std	Y+1, r31	; 0x01
     df0:	88 24       	eor	r8, r8
     df2:	83 94       	inc	r8
     df4:	91 2c       	mov	r9, r1
     df6:	65 01       	movw	r12, r10
     df8:	e8 94       	clt
     dfa:	37 f8       	bld	r3, 7
     dfc:	33 fe       	sbrs	r3, 3
     dfe:	2d c0       	rjmp	.+90     	; 0xe5a <vfprintf+0x1a0>
     e00:	52 2c       	mov	r5, r2
     e02:	81 14       	cp	r8, r1
     e04:	91 04       	cpc	r9, r1
     e06:	71 f5       	brne	.+92     	; 0xe64 <vfprintf+0x1aa>
     e08:	55 20       	and	r5, r5
     e0a:	09 f4       	brne	.+2      	; 0xe0e <vfprintf+0x154>
     e0c:	68 cf       	rjmp	.-304    	; 0xcde <vfprintf+0x24>
     e0e:	b7 01       	movw	r22, r14
     e10:	80 e2       	ldi	r24, 0x20	; 32
     e12:	90 e0       	ldi	r25, 0x00	; 0
     e14:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     e18:	5a 94       	dec	r5
     e1a:	f6 cf       	rjmp	.-20     	; 0xe08 <vfprintf+0x14e>
     e1c:	f8 01       	movw	r30, r16
     e1e:	80 81       	ld	r24, Z
     e20:	89 83       	std	Y+1, r24	; 0x01
     e22:	0e 5f       	subi	r16, 0xFE	; 254
     e24:	1f 4f       	sbci	r17, 0xFF	; 255
     e26:	e4 cf       	rjmp	.-56     	; 0xdf0 <vfprintf+0x136>
     e28:	28 01       	movw	r4, r16
     e2a:	f2 e0       	ldi	r31, 0x02	; 2
     e2c:	4f 0e       	add	r4, r31
     e2e:	51 1c       	adc	r5, r1
     e30:	f8 01       	movw	r30, r16
     e32:	c0 80       	ld	r12, Z
     e34:	d1 80       	ldd	r13, Z+1	; 0x01
     e36:	69 2d       	mov	r22, r9
     e38:	70 e0       	ldi	r23, 0x00	; 0
     e3a:	36 fc       	sbrc	r3, 6
     e3c:	02 c0       	rjmp	.+4      	; 0xe42 <vfprintf+0x188>
     e3e:	6f ef       	ldi	r22, 0xFF	; 255
     e40:	7f ef       	ldi	r23, 0xFF	; 255
     e42:	c6 01       	movw	r24, r12
     e44:	0e 94 42 08 	call	0x1084	; 0x1084 <strnlen>
     e48:	4c 01       	movw	r8, r24
     e4a:	82 01       	movw	r16, r4
     e4c:	d5 cf       	rjmp	.-86     	; 0xdf8 <vfprintf+0x13e>
     e4e:	b7 01       	movw	r22, r14
     e50:	80 e2       	ldi	r24, 0x20	; 32
     e52:	90 e0       	ldi	r25, 0x00	; 0
     e54:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     e58:	2a 94       	dec	r2
     e5a:	28 14       	cp	r2, r8
     e5c:	19 04       	cpc	r1, r9
     e5e:	09 f0       	breq	.+2      	; 0xe62 <vfprintf+0x1a8>
     e60:	b0 f7       	brcc	.-20     	; 0xe4e <vfprintf+0x194>
     e62:	ce cf       	rjmp	.-100    	; 0xe00 <vfprintf+0x146>
     e64:	f6 01       	movw	r30, r12
     e66:	37 fc       	sbrc	r3, 7
     e68:	85 91       	lpm	r24, Z+
     e6a:	37 fe       	sbrs	r3, 7
     e6c:	81 91       	ld	r24, Z+
     e6e:	6f 01       	movw	r12, r30
     e70:	b7 01       	movw	r22, r14
     e72:	90 e0       	ldi	r25, 0x00	; 0
     e74:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     e78:	51 10       	cpse	r5, r1
     e7a:	5a 94       	dec	r5
     e7c:	f1 e0       	ldi	r31, 0x01	; 1
     e7e:	8f 1a       	sub	r8, r31
     e80:	91 08       	sbc	r9, r1
     e82:	bf cf       	rjmp	.-130    	; 0xe02 <vfprintf+0x148>
     e84:	84 36       	cpi	r24, 0x64	; 100
     e86:	19 f0       	breq	.+6      	; 0xe8e <vfprintf+0x1d4>
     e88:	89 36       	cpi	r24, 0x69	; 105
     e8a:	09 f0       	breq	.+2      	; 0xe8e <vfprintf+0x1d4>
     e8c:	77 c0       	rjmp	.+238    	; 0xf7c <vfprintf+0x2c2>
     e8e:	f8 01       	movw	r30, r16
     e90:	37 fe       	sbrs	r3, 7
     e92:	6b c0       	rjmp	.+214    	; 0xf6a <vfprintf+0x2b0>
     e94:	60 81       	ld	r22, Z
     e96:	71 81       	ldd	r23, Z+1	; 0x01
     e98:	82 81       	ldd	r24, Z+2	; 0x02
     e9a:	93 81       	ldd	r25, Z+3	; 0x03
     e9c:	0c 5f       	subi	r16, 0xFC	; 252
     e9e:	1f 4f       	sbci	r17, 0xFF	; 255
     ea0:	f3 2d       	mov	r31, r3
     ea2:	ff 76       	andi	r31, 0x6F	; 111
     ea4:	3f 2e       	mov	r3, r31
     ea6:	97 ff       	sbrs	r25, 7
     ea8:	09 c0       	rjmp	.+18     	; 0xebc <vfprintf+0x202>
     eaa:	90 95       	com	r25
     eac:	80 95       	com	r24
     eae:	70 95       	com	r23
     eb0:	61 95       	neg	r22
     eb2:	7f 4f       	sbci	r23, 0xFF	; 255
     eb4:	8f 4f       	sbci	r24, 0xFF	; 255
     eb6:	9f 4f       	sbci	r25, 0xFF	; 255
     eb8:	68 94       	set
     eba:	37 f8       	bld	r3, 7
     ebc:	2a e0       	ldi	r18, 0x0A	; 10
     ebe:	30 e0       	ldi	r19, 0x00	; 0
     ec0:	a5 01       	movw	r20, r10
     ec2:	0e 94 7d 08 	call	0x10fa	; 0x10fa <__ultoa_invert>
     ec6:	c8 2e       	mov	r12, r24
     ec8:	ca 18       	sub	r12, r10
     eca:	8c 2c       	mov	r8, r12
     ecc:	43 2c       	mov	r4, r3
     ece:	36 fe       	sbrs	r3, 6
     ed0:	0c c0       	rjmp	.+24     	; 0xeea <vfprintf+0x230>
     ed2:	e8 94       	clt
     ed4:	40 f8       	bld	r4, 0
     ed6:	c9 14       	cp	r12, r9
     ed8:	40 f4       	brcc	.+16     	; 0xeea <vfprintf+0x230>
     eda:	34 fe       	sbrs	r3, 4
     edc:	05 c0       	rjmp	.+10     	; 0xee8 <vfprintf+0x22e>
     ede:	32 fc       	sbrc	r3, 2
     ee0:	03 c0       	rjmp	.+6      	; 0xee8 <vfprintf+0x22e>
     ee2:	f3 2d       	mov	r31, r3
     ee4:	fe 7e       	andi	r31, 0xEE	; 238
     ee6:	4f 2e       	mov	r4, r31
     ee8:	89 2c       	mov	r8, r9
     eea:	44 fe       	sbrs	r4, 4
     eec:	95 c0       	rjmp	.+298    	; 0x1018 <vfprintf+0x35e>
     eee:	fe 01       	movw	r30, r28
     ef0:	ec 0d       	add	r30, r12
     ef2:	f1 1d       	adc	r31, r1
     ef4:	80 81       	ld	r24, Z
     ef6:	80 33       	cpi	r24, 0x30	; 48
     ef8:	09 f0       	breq	.+2      	; 0xefc <vfprintf+0x242>
     efa:	87 c0       	rjmp	.+270    	; 0x100a <vfprintf+0x350>
     efc:	24 2d       	mov	r18, r4
     efe:	29 7e       	andi	r18, 0xE9	; 233
     f00:	42 2e       	mov	r4, r18
     f02:	84 2d       	mov	r24, r4
     f04:	88 70       	andi	r24, 0x08	; 8
     f06:	58 2e       	mov	r5, r24
     f08:	43 fc       	sbrc	r4, 3
     f0a:	95 c0       	rjmp	.+298    	; 0x1036 <vfprintf+0x37c>
     f0c:	40 fe       	sbrs	r4, 0
     f0e:	8f c0       	rjmp	.+286    	; 0x102e <vfprintf+0x374>
     f10:	9c 2c       	mov	r9, r12
     f12:	82 14       	cp	r8, r2
     f14:	18 f4       	brcc	.+6      	; 0xf1c <vfprintf+0x262>
     f16:	2c 0c       	add	r2, r12
     f18:	92 2c       	mov	r9, r2
     f1a:	98 18       	sub	r9, r8
     f1c:	44 fe       	sbrs	r4, 4
     f1e:	91 c0       	rjmp	.+290    	; 0x1042 <vfprintf+0x388>
     f20:	b7 01       	movw	r22, r14
     f22:	80 e3       	ldi	r24, 0x30	; 48
     f24:	90 e0       	ldi	r25, 0x00	; 0
     f26:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     f2a:	42 fe       	sbrs	r4, 2
     f2c:	09 c0       	rjmp	.+18     	; 0xf40 <vfprintf+0x286>
     f2e:	88 e7       	ldi	r24, 0x78	; 120
     f30:	90 e0       	ldi	r25, 0x00	; 0
     f32:	41 fe       	sbrs	r4, 1
     f34:	02 c0       	rjmp	.+4      	; 0xf3a <vfprintf+0x280>
     f36:	88 e5       	ldi	r24, 0x58	; 88
     f38:	90 e0       	ldi	r25, 0x00	; 0
     f3a:	b7 01       	movw	r22, r14
     f3c:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     f40:	c9 14       	cp	r12, r9
     f42:	08 f4       	brcc	.+2      	; 0xf46 <vfprintf+0x28c>
     f44:	8a c0       	rjmp	.+276    	; 0x105a <vfprintf+0x3a0>
     f46:	ca 94       	dec	r12
     f48:	d1 2c       	mov	r13, r1
     f4a:	9f ef       	ldi	r25, 0xFF	; 255
     f4c:	c9 1a       	sub	r12, r25
     f4e:	d9 0a       	sbc	r13, r25
     f50:	ca 0c       	add	r12, r10
     f52:	db 1c       	adc	r13, r11
     f54:	f6 01       	movw	r30, r12
     f56:	82 91       	ld	r24, -Z
     f58:	6f 01       	movw	r12, r30
     f5a:	b7 01       	movw	r22, r14
     f5c:	90 e0       	ldi	r25, 0x00	; 0
     f5e:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
     f62:	ac 14       	cp	r10, r12
     f64:	bd 04       	cpc	r11, r13
     f66:	b1 f7       	brne	.-20     	; 0xf54 <vfprintf+0x29a>
     f68:	4f cf       	rjmp	.-354    	; 0xe08 <vfprintf+0x14e>
     f6a:	60 81       	ld	r22, Z
     f6c:	71 81       	ldd	r23, Z+1	; 0x01
     f6e:	07 2e       	mov	r0, r23
     f70:	00 0c       	add	r0, r0
     f72:	88 0b       	sbc	r24, r24
     f74:	99 0b       	sbc	r25, r25
     f76:	0e 5f       	subi	r16, 0xFE	; 254
     f78:	1f 4f       	sbci	r17, 0xFF	; 255
     f7a:	92 cf       	rjmp	.-220    	; 0xea0 <vfprintf+0x1e6>
     f7c:	d3 2c       	mov	r13, r3
     f7e:	e8 94       	clt
     f80:	d4 f8       	bld	r13, 4
     f82:	2a e0       	ldi	r18, 0x0A	; 10
     f84:	30 e0       	ldi	r19, 0x00	; 0
     f86:	85 37       	cpi	r24, 0x75	; 117
     f88:	39 f1       	breq	.+78     	; 0xfd8 <vfprintf+0x31e>
     f8a:	23 2d       	mov	r18, r3
     f8c:	29 7f       	andi	r18, 0xF9	; 249
     f8e:	d2 2e       	mov	r13, r18
     f90:	8f 36       	cpi	r24, 0x6F	; 111
     f92:	01 f1       	breq	.+64     	; 0xfd4 <vfprintf+0x31a>
     f94:	48 f4       	brcc	.+18     	; 0xfa8 <vfprintf+0x2ee>
     f96:	88 35       	cpi	r24, 0x58	; 88
     f98:	a9 f0       	breq	.+42     	; 0xfc4 <vfprintf+0x30a>
     f9a:	f7 01       	movw	r30, r14
     f9c:	86 81       	ldd	r24, Z+6	; 0x06
     f9e:	97 81       	ldd	r25, Z+7	; 0x07
     fa0:	2b 96       	adiw	r28, 0x0b	; 11
     fa2:	e2 e1       	ldi	r30, 0x12	; 18
     fa4:	0c 94 f7 08 	jmp	0x11ee	; 0x11ee <__epilogue_restores__>
     fa8:	80 37       	cpi	r24, 0x70	; 112
     faa:	49 f0       	breq	.+18     	; 0xfbe <vfprintf+0x304>
     fac:	88 37       	cpi	r24, 0x78	; 120
     fae:	a9 f7       	brne	.-22     	; 0xf9a <vfprintf+0x2e0>
     fb0:	d4 fe       	sbrs	r13, 4
     fb2:	02 c0       	rjmp	.+4      	; 0xfb8 <vfprintf+0x2fe>
     fb4:	68 94       	set
     fb6:	d2 f8       	bld	r13, 2
     fb8:	20 e1       	ldi	r18, 0x10	; 16
     fba:	30 e0       	ldi	r19, 0x00	; 0
     fbc:	0d c0       	rjmp	.+26     	; 0xfd8 <vfprintf+0x31e>
     fbe:	68 94       	set
     fc0:	d4 f8       	bld	r13, 4
     fc2:	f6 cf       	rjmp	.-20     	; 0xfb0 <vfprintf+0x2f6>
     fc4:	34 fe       	sbrs	r3, 4
     fc6:	03 c0       	rjmp	.+6      	; 0xfce <vfprintf+0x314>
     fc8:	82 2f       	mov	r24, r18
     fca:	86 60       	ori	r24, 0x06	; 6
     fcc:	d8 2e       	mov	r13, r24
     fce:	20 e1       	ldi	r18, 0x10	; 16
     fd0:	32 e0       	ldi	r19, 0x02	; 2
     fd2:	02 c0       	rjmp	.+4      	; 0xfd8 <vfprintf+0x31e>
     fd4:	28 e0       	ldi	r18, 0x08	; 8
     fd6:	30 e0       	ldi	r19, 0x00	; 0
     fd8:	f8 01       	movw	r30, r16
     fda:	d7 fe       	sbrs	r13, 7
     fdc:	0f c0       	rjmp	.+30     	; 0xffc <vfprintf+0x342>
     fde:	60 81       	ld	r22, Z
     fe0:	71 81       	ldd	r23, Z+1	; 0x01
     fe2:	82 81       	ldd	r24, Z+2	; 0x02
     fe4:	93 81       	ldd	r25, Z+3	; 0x03
     fe6:	0c 5f       	subi	r16, 0xFC	; 252
     fe8:	1f 4f       	sbci	r17, 0xFF	; 255
     fea:	a5 01       	movw	r20, r10
     fec:	0e 94 7d 08 	call	0x10fa	; 0x10fa <__ultoa_invert>
     ff0:	c8 2e       	mov	r12, r24
     ff2:	ca 18       	sub	r12, r10
     ff4:	3d 2c       	mov	r3, r13
     ff6:	e8 94       	clt
     ff8:	37 f8       	bld	r3, 7
     ffa:	67 cf       	rjmp	.-306    	; 0xeca <vfprintf+0x210>
     ffc:	60 81       	ld	r22, Z
     ffe:	71 81       	ldd	r23, Z+1	; 0x01
    1000:	90 e0       	ldi	r25, 0x00	; 0
    1002:	80 e0       	ldi	r24, 0x00	; 0
    1004:	0e 5f       	subi	r16, 0xFE	; 254
    1006:	1f 4f       	sbci	r17, 0xFF	; 255
    1008:	f0 cf       	rjmp	.-32     	; 0xfea <vfprintf+0x330>
    100a:	42 fc       	sbrc	r4, 2
    100c:	02 c0       	rjmp	.+4      	; 0x1012 <vfprintf+0x358>
    100e:	83 94       	inc	r8
    1010:	78 cf       	rjmp	.-272    	; 0xf02 <vfprintf+0x248>
    1012:	83 94       	inc	r8
    1014:	83 94       	inc	r8
    1016:	75 cf       	rjmp	.-278    	; 0xf02 <vfprintf+0x248>
    1018:	84 2d       	mov	r24, r4
    101a:	86 78       	andi	r24, 0x86	; 134
    101c:	09 f4       	brne	.+2      	; 0x1020 <vfprintf+0x366>
    101e:	71 cf       	rjmp	.-286    	; 0xf02 <vfprintf+0x248>
    1020:	f6 cf       	rjmp	.-20     	; 0x100e <vfprintf+0x354>
    1022:	b7 01       	movw	r22, r14
    1024:	80 e2       	ldi	r24, 0x20	; 32
    1026:	90 e0       	ldi	r25, 0x00	; 0
    1028:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
    102c:	83 94       	inc	r8
    102e:	82 14       	cp	r8, r2
    1030:	c0 f3       	brcs	.-16     	; 0x1022 <vfprintf+0x368>
    1032:	51 2c       	mov	r5, r1
    1034:	73 cf       	rjmp	.-282    	; 0xf1c <vfprintf+0x262>
    1036:	52 2c       	mov	r5, r2
    1038:	58 18       	sub	r5, r8
    103a:	82 14       	cp	r8, r2
    103c:	08 f4       	brcc	.+2      	; 0x1040 <vfprintf+0x386>
    103e:	6e cf       	rjmp	.-292    	; 0xf1c <vfprintf+0x262>
    1040:	f8 cf       	rjmp	.-16     	; 0x1032 <vfprintf+0x378>
    1042:	84 2d       	mov	r24, r4
    1044:	86 78       	andi	r24, 0x86	; 134
    1046:	09 f4       	brne	.+2      	; 0x104a <vfprintf+0x390>
    1048:	7b cf       	rjmp	.-266    	; 0xf40 <vfprintf+0x286>
    104a:	8b e2       	ldi	r24, 0x2B	; 43
    104c:	41 fe       	sbrs	r4, 1
    104e:	80 e2       	ldi	r24, 0x20	; 32
    1050:	47 fc       	sbrc	r4, 7
    1052:	8d e2       	ldi	r24, 0x2D	; 45
    1054:	b7 01       	movw	r22, r14
    1056:	90 e0       	ldi	r25, 0x00	; 0
    1058:	71 cf       	rjmp	.-286    	; 0xf3c <vfprintf+0x282>
    105a:	b7 01       	movw	r22, r14
    105c:	80 e3       	ldi	r24, 0x30	; 48
    105e:	90 e0       	ldi	r25, 0x00	; 0
    1060:	0e 94 4d 08 	call	0x109a	; 0x109a <fputc>
    1064:	9a 94       	dec	r9
    1066:	6c cf       	rjmp	.-296    	; 0xf40 <vfprintf+0x286>
    1068:	8f ef       	ldi	r24, 0xFF	; 255
    106a:	9f ef       	ldi	r25, 0xFF	; 255
    106c:	99 cf       	rjmp	.-206    	; 0xfa0 <vfprintf+0x2e6>

0000106e <strnlen_P>:
    106e:	fc 01       	movw	r30, r24
    1070:	05 90       	lpm	r0, Z+
    1072:	61 50       	subi	r22, 0x01	; 1
    1074:	70 40       	sbci	r23, 0x00	; 0
    1076:	01 10       	cpse	r0, r1
    1078:	d8 f7       	brcc	.-10     	; 0x1070 <strnlen_P+0x2>
    107a:	80 95       	com	r24
    107c:	90 95       	com	r25
    107e:	8e 0f       	add	r24, r30
    1080:	9f 1f       	adc	r25, r31
    1082:	08 95       	ret

00001084 <strnlen>:
    1084:	fc 01       	movw	r30, r24
    1086:	61 50       	subi	r22, 0x01	; 1
    1088:	70 40       	sbci	r23, 0x00	; 0
    108a:	01 90       	ld	r0, Z+
    108c:	01 10       	cpse	r0, r1
    108e:	d8 f7       	brcc	.-10     	; 0x1086 <strnlen+0x2>
    1090:	80 95       	com	r24
    1092:	90 95       	com	r25
    1094:	8e 0f       	add	r24, r30
    1096:	9f 1f       	adc	r25, r31
    1098:	08 95       	ret

0000109a <fputc>:
    109a:	0f 93       	push	r16
    109c:	1f 93       	push	r17
    109e:	cf 93       	push	r28
    10a0:	df 93       	push	r29
    10a2:	18 2f       	mov	r17, r24
    10a4:	09 2f       	mov	r16, r25
    10a6:	eb 01       	movw	r28, r22
    10a8:	8b 81       	ldd	r24, Y+3	; 0x03
    10aa:	81 fd       	sbrc	r24, 1
    10ac:	09 c0       	rjmp	.+18     	; 0x10c0 <fputc+0x26>
    10ae:	1f ef       	ldi	r17, 0xFF	; 255
    10b0:	0f ef       	ldi	r16, 0xFF	; 255
    10b2:	81 2f       	mov	r24, r17
    10b4:	90 2f       	mov	r25, r16
    10b6:	df 91       	pop	r29
    10b8:	cf 91       	pop	r28
    10ba:	1f 91       	pop	r17
    10bc:	0f 91       	pop	r16
    10be:	08 95       	ret
    10c0:	82 ff       	sbrs	r24, 2
    10c2:	14 c0       	rjmp	.+40     	; 0x10ec <fputc+0x52>
    10c4:	2e 81       	ldd	r18, Y+6	; 0x06
    10c6:	3f 81       	ldd	r19, Y+7	; 0x07
    10c8:	8c 81       	ldd	r24, Y+4	; 0x04
    10ca:	9d 81       	ldd	r25, Y+5	; 0x05
    10cc:	28 17       	cp	r18, r24
    10ce:	39 07       	cpc	r19, r25
    10d0:	3c f4       	brge	.+14     	; 0x10e0 <fputc+0x46>
    10d2:	e8 81       	ld	r30, Y
    10d4:	f9 81       	ldd	r31, Y+1	; 0x01
    10d6:	cf 01       	movw	r24, r30
    10d8:	01 96       	adiw	r24, 0x01	; 1
    10da:	99 83       	std	Y+1, r25	; 0x01
    10dc:	88 83       	st	Y, r24
    10de:	10 83       	st	Z, r17
    10e0:	8e 81       	ldd	r24, Y+6	; 0x06
    10e2:	9f 81       	ldd	r25, Y+7	; 0x07
    10e4:	01 96       	adiw	r24, 0x01	; 1
    10e6:	9f 83       	std	Y+7, r25	; 0x07
    10e8:	8e 83       	std	Y+6, r24	; 0x06
    10ea:	e3 cf       	rjmp	.-58     	; 0x10b2 <fputc+0x18>
    10ec:	e8 85       	ldd	r30, Y+8	; 0x08
    10ee:	f9 85       	ldd	r31, Y+9	; 0x09
    10f0:	81 2f       	mov	r24, r17
    10f2:	09 95       	icall
    10f4:	89 2b       	or	r24, r25
    10f6:	a1 f3       	breq	.-24     	; 0x10e0 <fputc+0x46>
    10f8:	da cf       	rjmp	.-76     	; 0x10ae <fputc+0x14>

000010fa <__ultoa_invert>:
    10fa:	fa 01       	movw	r30, r20
    10fc:	aa 27       	eor	r26, r26
    10fe:	28 30       	cpi	r18, 0x08	; 8
    1100:	51 f1       	breq	.+84     	; 0x1156 <__ultoa_invert+0x5c>
    1102:	20 31       	cpi	r18, 0x10	; 16
    1104:	81 f1       	breq	.+96     	; 0x1166 <__ultoa_invert+0x6c>
    1106:	e8 94       	clt
    1108:	6f 93       	push	r22
    110a:	6e 7f       	andi	r22, 0xFE	; 254
    110c:	6e 5f       	subi	r22, 0xFE	; 254
    110e:	7f 4f       	sbci	r23, 0xFF	; 255
    1110:	8f 4f       	sbci	r24, 0xFF	; 255
    1112:	9f 4f       	sbci	r25, 0xFF	; 255
    1114:	af 4f       	sbci	r26, 0xFF	; 255
    1116:	b1 e0       	ldi	r27, 0x01	; 1
    1118:	3e d0       	rcall	.+124    	; 0x1196 <__ultoa_invert+0x9c>
    111a:	b4 e0       	ldi	r27, 0x04	; 4
    111c:	3c d0       	rcall	.+120    	; 0x1196 <__ultoa_invert+0x9c>
    111e:	67 0f       	add	r22, r23
    1120:	78 1f       	adc	r23, r24
    1122:	89 1f       	adc	r24, r25
    1124:	9a 1f       	adc	r25, r26
    1126:	a1 1d       	adc	r26, r1
    1128:	68 0f       	add	r22, r24
    112a:	79 1f       	adc	r23, r25
    112c:	8a 1f       	adc	r24, r26
    112e:	91 1d       	adc	r25, r1
    1130:	a1 1d       	adc	r26, r1
    1132:	6a 0f       	add	r22, r26
    1134:	71 1d       	adc	r23, r1
    1136:	81 1d       	adc	r24, r1
    1138:	91 1d       	adc	r25, r1
    113a:	a1 1d       	adc	r26, r1
    113c:	20 d0       	rcall	.+64     	; 0x117e <__ultoa_invert+0x84>
    113e:	09 f4       	brne	.+2      	; 0x1142 <__ultoa_invert+0x48>
    1140:	68 94       	set
    1142:	3f 91       	pop	r19
    1144:	2a e0       	ldi	r18, 0x0A	; 10
    1146:	26 9f       	mul	r18, r22
    1148:	11 24       	eor	r1, r1
    114a:	30 19       	sub	r19, r0
    114c:	30 5d       	subi	r19, 0xD0	; 208
    114e:	31 93       	st	Z+, r19
    1150:	de f6       	brtc	.-74     	; 0x1108 <__ultoa_invert+0xe>
    1152:	cf 01       	movw	r24, r30
    1154:	08 95       	ret
    1156:	46 2f       	mov	r20, r22
    1158:	47 70       	andi	r20, 0x07	; 7
    115a:	40 5d       	subi	r20, 0xD0	; 208
    115c:	41 93       	st	Z+, r20
    115e:	b3 e0       	ldi	r27, 0x03	; 3
    1160:	0f d0       	rcall	.+30     	; 0x1180 <__ultoa_invert+0x86>
    1162:	c9 f7       	brne	.-14     	; 0x1156 <__ultoa_invert+0x5c>
    1164:	f6 cf       	rjmp	.-20     	; 0x1152 <__ultoa_invert+0x58>
    1166:	46 2f       	mov	r20, r22
    1168:	4f 70       	andi	r20, 0x0F	; 15
    116a:	40 5d       	subi	r20, 0xD0	; 208
    116c:	4a 33       	cpi	r20, 0x3A	; 58
    116e:	18 f0       	brcs	.+6      	; 0x1176 <__ultoa_invert+0x7c>
    1170:	49 5d       	subi	r20, 0xD9	; 217
    1172:	31 fd       	sbrc	r19, 1
    1174:	40 52       	subi	r20, 0x20	; 32
    1176:	41 93       	st	Z+, r20
    1178:	02 d0       	rcall	.+4      	; 0x117e <__ultoa_invert+0x84>
    117a:	a9 f7       	brne	.-22     	; 0x1166 <__ultoa_invert+0x6c>
    117c:	ea cf       	rjmp	.-44     	; 0x1152 <__ultoa_invert+0x58>
    117e:	b4 e0       	ldi	r27, 0x04	; 4
    1180:	a6 95       	lsr	r26
    1182:	97 95       	ror	r25
    1184:	87 95       	ror	r24
    1186:	77 95       	ror	r23
    1188:	67 95       	ror	r22
    118a:	ba 95       	dec	r27
    118c:	c9 f7       	brne	.-14     	; 0x1180 <__ultoa_invert+0x86>
    118e:	00 97       	sbiw	r24, 0x00	; 0
    1190:	61 05       	cpc	r22, r1
    1192:	71 05       	cpc	r23, r1
    1194:	08 95       	ret
    1196:	9b 01       	movw	r18, r22
    1198:	ac 01       	movw	r20, r24
    119a:	0a 2e       	mov	r0, r26
    119c:	06 94       	lsr	r0
    119e:	57 95       	ror	r21
    11a0:	47 95       	ror	r20
    11a2:	37 95       	ror	r19
    11a4:	27 95       	ror	r18
    11a6:	ba 95       	dec	r27
    11a8:	c9 f7       	brne	.-14     	; 0x119c <__ultoa_invert+0xa2>
    11aa:	62 0f       	add	r22, r18
    11ac:	73 1f       	adc	r23, r19
    11ae:	84 1f       	adc	r24, r20
    11b0:	95 1f       	adc	r25, r21
    11b2:	a0 1d       	adc	r26, r0
    11b4:	08 95       	ret

000011b6 <__prologue_saves__>:
    11b6:	2f 92       	push	r2
    11b8:	3f 92       	push	r3
    11ba:	4f 92       	push	r4
    11bc:	5f 92       	push	r5
    11be:	6f 92       	push	r6
    11c0:	7f 92       	push	r7
    11c2:	8f 92       	push	r8
    11c4:	9f 92       	push	r9
    11c6:	af 92       	push	r10
    11c8:	bf 92       	push	r11
    11ca:	cf 92       	push	r12
    11cc:	df 92       	push	r13
    11ce:	ef 92       	push	r14
    11d0:	ff 92       	push	r15
    11d2:	0f 93       	push	r16
    11d4:	1f 93       	push	r17
    11d6:	cf 93       	push	r28
    11d8:	df 93       	push	r29
    11da:	cd b7       	in	r28, 0x3d	; 61
    11dc:	de b7       	in	r29, 0x3e	; 62
    11de:	ca 1b       	sub	r28, r26
    11e0:	db 0b       	sbc	r29, r27
    11e2:	0f b6       	in	r0, 0x3f	; 63
    11e4:	f8 94       	cli
    11e6:	de bf       	out	0x3e, r29	; 62
    11e8:	0f be       	out	0x3f, r0	; 63
    11ea:	cd bf       	out	0x3d, r28	; 61
    11ec:	09 94       	ijmp

000011ee <__epilogue_restores__>:
    11ee:	2a 88       	ldd	r2, Y+18	; 0x12
    11f0:	39 88       	ldd	r3, Y+17	; 0x11
    11f2:	48 88       	ldd	r4, Y+16	; 0x10
    11f4:	5f 84       	ldd	r5, Y+15	; 0x0f
    11f6:	6e 84       	ldd	r6, Y+14	; 0x0e
    11f8:	7d 84       	ldd	r7, Y+13	; 0x0d
    11fa:	8c 84       	ldd	r8, Y+12	; 0x0c
    11fc:	9b 84       	ldd	r9, Y+11	; 0x0b
    11fe:	aa 84       	ldd	r10, Y+10	; 0x0a
    1200:	b9 84       	ldd	r11, Y+9	; 0x09
    1202:	c8 84       	ldd	r12, Y+8	; 0x08
    1204:	df 80       	ldd	r13, Y+7	; 0x07
    1206:	ee 80       	ldd	r14, Y+6	; 0x06
    1208:	fd 80       	ldd	r15, Y+5	; 0x05
    120a:	0c 81       	ldd	r16, Y+4	; 0x04
    120c:	1b 81       	ldd	r17, Y+3	; 0x03
    120e:	aa 81       	ldd	r26, Y+2	; 0x02
    1210:	b9 81       	ldd	r27, Y+1	; 0x01
    1212:	ce 0f       	add	r28, r30
    1214:	d1 1d       	adc	r29, r1
    1216:	0f b6       	in	r0, 0x3f	; 63
    1218:	f8 94       	cli
    121a:	de bf       	out	0x3e, r29	; 62
    121c:	0f be       	out	0x3f, r0	; 63
    121e:	cd bf       	out	0x3d, r28	; 61
    1220:	ed 01       	movw	r28, r26
    1222:	08 95       	ret

00001224 <_exit>:
    1224:	f8 94       	cli

00001226 <__stop_program>:
    1226:	ff cf       	rjmp	.-2      	; 0x1226 <__stop_program>
