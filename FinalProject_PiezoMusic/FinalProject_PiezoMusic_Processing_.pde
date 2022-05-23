import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val = 0; // creates variable for data coming from serial port

PImage pic0, pic1, pic2;

void setup()
{
  size(800,800);
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  pic0 = loadImage("data/pic0.png");
  pic1 = loadImage("data/pic1.png");
  pic2 = loadImage("data/pic2.png");
}

void draw ()
{
   if ( myPort.available() > 0) 
   { // If data is available,
      val = myPort.read(); // read it and store it in val

      image(pic0, 0, 0);
      image(pic1, 0, 0);
      image(pic2, 0, 0);
   }
   println(val);
}
