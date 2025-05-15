

#include <avr/io.h>
#include <avr/interrupt.h>


volatile unsigned long long count = 0;


void setup_INT0() {
    // Configure INT0 (external interrupt 0) on pin D2
    EICRA |= (1 << ISC00);  // Any logical change generates an interrupt request
    EIMSK |= (1 << INT0);   // Enable external interrupt INT0
}


void setup() {
    Serial.begin(9600);
    pinMode(2, INPUT);       // Set pin D2 as input
    setup_INT0();            // Setup external interrupt INT0
    sei();
}


// External interrupt 0 service routine
ISR(INT0_vect) {
    count = count + 1;
}

void loop() {
    Serial.println((unsigned long)count);
    delay(1000);
}
