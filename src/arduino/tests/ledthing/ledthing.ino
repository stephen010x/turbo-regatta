

#define R_PORTD 0x2B
#define R_DDRD 0x2A
#define R_PIND 0x29

#define DEREF_REG(__reg) (*(REGISTER)(__reg))

typedef uint8_t* REGISTER;


void setup() {
	DEREF_REG(R_PORTD) = 0x00;
	DEREF_REG(R_DDRD) = 0x1F;
	for (int i = 0; i < 5; i++) {
		DEREF_REG(R_PORTD) = 0b1<<i;
		delay(1000);
	}
	for (int i = 0; i < 5; i++) {
		DEREF_REG(R_PORTD) = 0b1<<(3-i);
		delay(1000);
	}
}

void loop() {}
