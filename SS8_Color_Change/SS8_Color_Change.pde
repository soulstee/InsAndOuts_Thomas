import processing.serial.*;

Serial myPort;
int val = 0;

void setup() {
  size (800, 800);
  
  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw () {

 if ( myPort.available() > 0){ // If data is available,
    val = myPort.read(); // read it and store it in val
  println (val); //prints to Processing console
 }
 background(val);
 
   for (int i = 0; i < 100; i++) {
   float r = random(-600, 600);
   fill(255-val);
   ellipse(r, 100, 70, 70);
   ellipse(r, 50, 70, 70);
   ellipse(r, 25, 70, 70);
   ellipse(r, 5, 70, 70);
   
   ellipse(5, r, 70, 70);
   ellipse(25, r, 70, 70);
   ellipse(50, r, 70, 70);
   ellipse(100, r, 70, 70);
   
   
 }
}
