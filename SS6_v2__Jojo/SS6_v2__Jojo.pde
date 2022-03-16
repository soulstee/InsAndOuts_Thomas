PImage j0, j1, j2, j3, j4, j5, j6, j7;
PImage [] picArray = new PImage [8];

int timer = 3000;
int currentTime = 0;
int savedTime = 0;

void setup(){
  size(1800, 1800);
  
  j0 = loadImage("jojo0.png");
  j1 = loadImage("jojo1.png");
  j2 = loadImage("jojo2.png");
  j3 = loadImage("jojo3.png");
  j4 = loadImage("jojo4.png");
  j5 = loadImage("jojo5.png");
  j6 = loadImage("jojo6.png");
  j7 = loadImage("jojo7.png");
  
  picArray[0] = j0;
  picArray[1] = j1;
  picArray[2] = j2;
  picArray[3] = j3;
  picArray[4] = j4;
  picArray[5] = j5;
  picArray[6] = j6;
  picArray[7] = j7;
}



void draw(){
currentTime=millis();

if (currentTime-savedTime > timer){
  image(picArray[int(random(picArray.length))], 0, 0);
  savedTime=currentTime;
 }
}
