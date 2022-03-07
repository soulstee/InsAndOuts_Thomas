/*
*Assignment 4. New York City by Thomas Garcia Mena
*/

PFont f;
PImage day;
PImage night;

void setup(){
  size(700, 466);
  f = createFont("Georgia", 35);
  day = loadImage("NYC_Day.png");
  night = loadImage("NYC_Night.png");
  textFont(f);
  textAlign(TOP, LEFT);
  
}

void draw()
{
  if (mousePressed) {
    image(night, 0, 0);
    fill(255);
    text("Where the City Never Sleeps", 150, 150);
    } else {
    image(day, 0, 0);
    fill(0);
    text("Welcome to New York City...", 150, 150);
    }
}
 
