//Midterm Project: Prototype Snake Game by Thomas Garcia Mena
//This is based off an tutorial video: Programming Snake Game in Java Processing Tutorial by gasper coding 

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 40, h = 40, blocks = 20, direction = 2, apple_x = 20, apple_y = 20;
int[]x_direction = {0, 0, 1, -1}, y_direction = {1, -1, 0, 0};
boolean GameOver = false;

int speed = 8;

int timeStart;
int timeElasped;

PImage garden;
PImage apple_1;
PImage apple_2;
PImage apple_3;

void setup (){
  size(800, 800);
  x.add(0);
  y.add(20);
  
  timeStart = millis();
  
  garden = loadImage("garden.png");
  apple_1 = loadImage("apple_1.png");
  apple_2 = loadImage("apple_2.png");
  apple_3 = loadImage("apple_3.png");
}

void draw() {
background (garden);

timeElasped = millis() - timeStart;
println(timeElasped);

fill(#59982f);
for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
if(!GameOver){

image(apple_1,apple_x*blocks+10, apple_y*blocks+10, blocks, blocks); //(apple_x*blocks+10, apple_y*blocks+10, blocks, blocks); //the code for the apples to appear
image(apple_2,apple_x*blocks+10, apple_y*blocks+10, blocks, blocks);
image(apple_3,apple_x*blocks+10, apple_y*blocks+10, blocks, blocks);

textAlign(CENTER); //The scoreboard code
textSize(30);
fill(#FFFFFF);
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
  } else {
    x.remove(x.size()-1);
    y.remove(y.size()-1);
   }
  }
 } else {
  fill(#FFFFFF);
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
    timeStart = millis();
  }
 }
}
  
void keyPressed(){
  int new_movement = keyCode == DOWN? 0:(keyCode == UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if (new_movement !=-1) direction = new_movement;
}
