//Midterm Project: Prototype Snake Game by Thomas Garcia Mena
//This is based off an tutorial video: Programming Snake Game in Java Processing Tutorial by gasper coding 

int r = (int)random(255);
int g = (int)random(255);
int b = (int)random(255);

ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 60, h = 60, blocks = 30;

void setup (){
  size(800, 800);
  x.add(0);
  y.add(20);
}

void draw() {
background (#FFF9A6);
fill(#59982f);
for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
}
