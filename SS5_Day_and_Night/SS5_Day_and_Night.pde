/*
Night & Day by Thomas Garcia Mena
This is done by using and modifing the "Storing Input" code example from Processing.org.
*/

PImage cloud;
PImage star;

int num = 120;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size (1000, 1000);
  cloud = loadImage("cloud.png");
  star = loadImage("star.png");
}

void draw () {
  if (mousePressed == true) {
 background(#191970);

noStroke();
fill(#F4F6F0);
ellipse (0, 0, 500, 500);

int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
   int index = (which+1 + i) % num;
    image(star, mx[index], my[index], i, i);
    }
}else{
background(#87CEEB);
  
noStroke();
fill(#F9D71C);
ellipse (0, 0, 500, 500);

int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
   int index = (which+1 + i) % num;
    image(cloud, mx[index], my[index], i, i);
  }
 }
}
