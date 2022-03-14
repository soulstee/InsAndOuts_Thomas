int timer = 5000;
int timer2 = 10000;
int timer3 = 15000;
int currentTime = 0;


PImage jojo_1;
PImage jojo_2;
PImage jojo_3;

void setup() {
  size(1800, 1800);
  
  jojo_1 = loadImage("jojo_part1.png");
  jojo_2 = loadImage("jojo_part2.png");
  jojo_3 = loadImage("jojo_part3.png");
}

void draw () {
  currentTime = millis();
  background(#2e3488);
  image(jojo_1, 0 ,0);
  println("Jojo's Bizzare Adventure: Part 1 - Phantom Blood");
  
  if (currentTime > timer3) {
    background(#2E1A47);
    image(jojo_3, 0 ,0);
    println("Jojo's Bizzare Adventure: Part 3 - Stardust Crusaders");
    }
  
    else if (currentTime > timer2) {
    background(#a1c7a2);
    image(jojo_2, 0 ,0);
    println("Jojo's Bizzare Adventure: Part 2 - Battle Tendency"); 
    }
}
