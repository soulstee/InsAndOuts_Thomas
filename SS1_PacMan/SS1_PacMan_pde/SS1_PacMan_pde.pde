// Pac-Man by Thomas Garcia Mena

void setup () {
  size(1080, 720);
}

  void draw (){
  background(255, 255, 255);
  
  color(255, 255, 0);
  color c1 = #ADD8E6;
  color c2 = #FFB6C1;
  noStroke();
  fill(255, 255, 0);
  arc(200, 400, 240, 240,QUARTER_PI,QUARTER_PI+HALF_PI+PI);
  circle(300, 400, 50);
  

  fill(c1);
  rect(360, 380, 50, 50);
  
  fill(c2);
  triangle(120, 300, 232, 80, 344, 300);
  }
