/*
  Button - Continuous Press
  Turns on and off a light emitting diode(LED) connected to digital pin 13,
  when pressing a pushbutton attached to pin 2.
  The circuit:
  - LED attached from pin 13 to ground with 330 or 220 resistor.
  - pushbutton attached to pin 2 from +5V
  - 10K resistor attached to pin 2 from ground
  Slightly modified from Arduino IDE example code in the public domain:
  http://www.arduino.cc/en/Tutorial/Button
*/

// sets up constant integer variables for pins (will not change)
const int buttonPin = 2;     // creates variable called buttonPin and assigns value of 2

const int LED_A =  13;      // creates variable called LED and assigns value of 13
const int LED_B =  12;
const int LED_C =  11;
const int LED_D =  10;
const int LED_E =  9;
const int LED_F =  8;
const int LED_G =  7;
const int LED_H =  6;

// sets up integer variable that will change over time
int buttonState = 0;         // creates variable to track buttonState, assigns initial value of 0


// setup runs once at startup
void setup() {
  pinMode(LED_A, OUTPUT);  // initialize LED pin as an output.
  pinMode(LED_B, OUTPUT);
  pinMode(LED_C, OUTPUT);
  pinMode(LED_D, OUTPUT);
  pinMode(LED_E, OUTPUT);
  pinMode(LED_F, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_H, OUTPUT);
  
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
}

// loop runs infinitely
void loop() {
  buttonState = digitalRead(buttonPin);    // read the state of the pushbutton value
  delay (10); //small delay for debouncing, to increase accuracy

  // conditional statement
  if (buttonState == HIGH) { // if button is pressed (voltage received on pin 2)
    digitalWrite(LED_A, HIGH);      // send voltage to LED pin
    digitalWrite(LED_B, HIGH);
    digitalWrite(LED_C, HIGH);
    digitalWrite(LED_D, HIGH);
    digitalWrite(LED_E, HIGH);
    digitalWrite(LED_F, HIGH);
    digitalWrite(LED_G, HIGH);
    digitalWrite(LED_H, HIGH);
  } else {   //otherwise
    digitalWrite(LED_A, LOW);      // turn off voltage to LED pin
    digitalWrite(LED_B, LOW);
    digitalWrite(LED_C, LOW);
    digitalWrite(LED_D, LOW);
    digitalWrite(LED_E, LOW);
    digitalWrite(LED_F, LOW);
    digitalWrite(LED_G, LOW);
    digitalWrite(LED_H, LOW);
  }
}
