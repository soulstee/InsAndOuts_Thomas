/*
  PIEZO
  Example using tone() to send square wave to piezo.
  
  Create piezo circuit with one side connected to digital pin 2 and other side connected to ground.
  Arguments for tone= pin #, frequency in Hz, and duration of the tone in milliseconds:
  tone (pin, frequency, duration)
  Recommended to use frequencies 30-5,000 Hz.
*/


//Create global variables
const int piezo = 2;


// setup() runs once
void setup() {
  // nothing needed here
}

// First short chord of Megalovania  
void loop() {
  
tone(2,294,125);//D4
delay(125);

tone(2,294,125);//D4
delay(125);

tone(2,587,250);//D5
delay(250);

tone(2,440,250);//A4
delay(375);

tone(2,415,125);//Ab4
delay(250);

tone(2,392,250);//G4
delay(250);

tone(2,349,250);//F4
delay(250);

tone(2,294,125);//D4
delay(125);

tone(2,349,125);//F4
delay(125);

tone(2,392,125);//G4
delay(125);

tone(2,261,125);//C4(middle)     
delay(62);

tone(2,261,125);//C4(middle)     
delay(62);
}
