  //This project is based off of my SS6 Assignment.
  
  import processing.sound.*;
  
  SoundFile[] music;
  int songs = 6;
  
  PImage j_title, j1, j2, j3, j4, j5, j6;
  
  void setup(){
   size(1200, 1000);
   background(#e2033a);
   textSize(20);
   text("Welcome to my little JoJo slideshow. \nEnter a number between 1 and 6 to view a different image.", 350, 600);
   
   j_title = loadImage("data/images/jojo_title.png"); 
   j1 = loadImage("data/images/jojo1.png");
   j2 = loadImage("data/images/jojo2.png");
   j3 = loadImage("data/images/jojo3.png");
   j4 = loadImage("data/images/jojo4.png");
   j5 = loadImage("data/images/jojo5.png");
   j6 = loadImage("data/images/jojo6.png");
   
   music = new SoundFile[songs];
   
   for (int i = 0; i < songs; i++){
     music[i] = new SoundFile(this, (i+1) + ".wav");
   }
   image(j_title, 300, 0);
  }

  void draw(){
  }
  
  void keyPressed(){
    
    if (key == '1'){
    background(#4d3b9f);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- My name is Jonathan Joestar of the Joestar family! \nPlease call me JoJo.", 100, 750);
    
    image(j1, 0, 0);
    
    music[0].play();
    
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    
  } else if (key == '2'){
    background(#4e6746);
    image(j2, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- Stupid people can believe in anything, \nso you can believe in yourself!", 290, 750);
    
    music[1].play();
    
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[0].stop();
    
  } else if (key == '3'){
    background(#a64ca6);
    image(j3, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- What? The loser is evil? Well, in that \n case... you're the evil one after all! The \n one who'll be the judge is my stand!", 290, 750);
    
    music[2].play();
    
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[1].stop();
    music[0].stop();
    
  } else if (key == '4'){
    background(#6e329b);
    image(j4, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- I won't let anyone get away with \n making fun of my hair, no \n matter who it is!", 290, 750);
    
    music[3].play();
    
    music[5].stop();
    music[4].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
  
  } else if (key == '5'){
    background(#ffd700);
    image(j5, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- I plan on defeating your boss and \n taking over this city. In order to get \n rid of gangsters that sell drugs \n to children, \n I'm going to have to become a gangster \n myself.", 290, 750);
    
    music[4].play();
    
    music[5].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
  
  } else if (key == '6'){
    background(#9fc5e8);
    image(j6, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora Titles Italic.ttf", 128);
    textFont(JoJo);
    textSize(40);
    text("- Yare Yare Daze \n (Good Grief)", 290, 750);
    
    music[5].play();
    
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();   
  }
 }
