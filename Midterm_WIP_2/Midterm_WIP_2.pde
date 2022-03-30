//Midterm Project: Prototype Snake Game by Thomas Garcia Mena
//This is based off an tutorial video: Programming Snake Game in Java Processing Tutorial by gasper coding 

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 40, h = 40, blocks = 20, direction = 2, apple_x = 20, apple_y = 20;
int[]x_direction = {0, 0, 1, -1}, y_direction = {1, -1, 0, 0};
boolean GameOver = false;

int speed = 8;

int color_1 = #FF0800; //apple color #1
int color_2 = #A8E4A0; //apple color #2
int color_3 = #CDA449; //apple color #3

void setup (){
  size(800, 800);
  x.add(0);
  y.add(20);
}

void draw() {
background (#FFF9A6);
fill(#59982f);

for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
if(!GameOver){
fill(color_1, color_2, color_3); //the color of the apples
ellipse(apple_x*blocks+10, apple_y*blocks+10, blocks, blocks); //the code for the apples to appear

textAlign(CENTER); //The scoreboard code
textSize(30);
fill(#004242);
text("High Score: " + x.size(), 20, 20);
if(frameCount%speed == 0){
  x.add(0, x.get(0) + x_direction[direction]);
  y.add(0, y.get(0) + y_direction[direction]);
  
  if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) GameOver = true;
  for (int i = 1; i < x.size(); i++)
  if (x.get(0) == x.get(i) && y.get(0) == y.get(i)) GameOver = true;
  
  if (x.get(0) == apple_x && y.get(0) == apple_y){
    if (x.size()%6 == 0 && speed >= 2) speed-=1; //speed increase
    apple_x = (int)random(0, w);
    apple_y = (int)random(0, h);
    color_1 = (int)random(#FF0800); color_2 = (int)random(#A8E4A0); color_3 = (int)random(#CDA449);
  } else {
    x.remove(x.size()-1);
    y.remove(y.size()-1);
   }
  }
 } else {
  fill(#563c5c);
  textSize(35);
  textAlign(CENTER);
  text("Oops! Game Over! \n Your High Score is: " + x.size() + "\n Press ENTER to restart.", width/2, height/2);
  if (keyCode == ENTER){
    x.clear();
    y.clear();
    x.add(0);
    y.add(20);
    direction = 2;
    speed = 8;
    GameOver = false;
  }
 }
}
  
void keyPressed(){
  int new_movement = keyCode == DOWN? 0:(keyCode == UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if (new_movement !=-1) direction = new_movement;
}
