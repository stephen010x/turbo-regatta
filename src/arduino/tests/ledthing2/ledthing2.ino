
#define R_PORTD 0x2B
#define R_DDRD 0x2A
#define R_PIND 0x29

#define R_ADCSRA 0x7A
#define R_ADMUX 0x7C
#define R_ADCL 0x78
#define R_ADCH 0x79

#define DEREF_REG(__reg) (*(REGISTER)(__reg))

typedef uint8_t* REGISTER;



void setup() {
	DEREF_REG(R_PORTD) = 0x00;
	DEREF_REG(R_DDRD) = 0x1F;
	
	DEREF_REG(R_ADCSRA) = 0b10000111;
	DEREF_REG(R_ADMUX) =  0b01000010;

	Serial.begin(9600);
	Serial.println("Board started");
}

void loop() {
	DEREF_REG(R_ADCSRA) |= 0b01000000;
	
	while ((DEREF_REG(R_ADCSRA) & 0x40) == 0x40)
		delay(1);
		
	int val = (uint16_t)DEREF_REG(R_ADCL) | (((uint16_t)DEREF_REG(R_ADCH) & 0b00000011) << 8);
	
	DEREF_REG(R_PORTD) = 0x1F>>(4-val*5/(1<<10));
	
	delay(50);
}
