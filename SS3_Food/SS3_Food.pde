/*
*Assignment 3_ Favorite Foods_Thomas Mena
*/

PImage b;
PImage f;
PImage r;
PImage s;

void setup(){
  size(800, 800);
  
  b = loadImage("burger.png");
  f = loadImage("fries.png");
  r = loadImage ("ramen.png");
  s = loadImage ("sushi.png");
}

void draw() {
  
 background (255);
 
   for (int i = 0; i < width; i+=50) {
    if (mouseX > i - 15 && mouseX < i + 15 && mouseY > height/2 - 15 && mouseY < height/2 +15) {
      image(f, i, 0, i, f.height/2);
    } else {
      image(b, 0, height/2, b.width/2, b.height/2);
    }
    image(b, i, height/2, 30, 30);
  }
  
  for (int i = 0; i < width; i+=50) {
    if (mouseX > i - 15 && mouseX < i + 15 && mouseY > height/2 - 15 && mouseY < height/2 +15) {
      image(s, i, 0, i, s.height/4);
    } else {
      image(r, 0, height/4, r.width/4, r.height/4);
    }
    image(r, i, height/4, 30, 30);
  }
  
}
