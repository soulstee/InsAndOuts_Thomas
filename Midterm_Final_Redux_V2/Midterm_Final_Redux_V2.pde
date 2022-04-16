  //This project is based off of my SS6 Assignment.
  //The context used to describe the different slides are from the JoJo's Bizzare Adventure Wikipedia site.
  import processing.sound.*;
  
  SoundFile[] music;
  int songs = 8;
  
  PImage j_title, j1, j2, j3, j4, j5, j6, j7, j8;
  
  void setup(){
   size(1200, 1000);
   background(#e2033a);
   
   PFont title;
   title = createFont("SF Fedora Titles Italic.ttf", 128);
   textFont (title);
   textSize(25);
   text("Welcome to my little slideshow, \nbased off of one of my favorite anime series: \nJoJo's Bizzare Adventure. \n \nEnter a number between 1 and 8 to view a different image.", 250, 600);
   
   j_title = loadImage("data/images/jojo_title.png"); 
   j1 = loadImage("data/images/jojo1.png");
   j2 = loadImage("data/images/jojo2.png");
   j3 = loadImage("data/images/jojo3.png");
   j4 = loadImage("data/images/jojo4.png");
   j5 = loadImage("data/images/jojo5.png");
   j6 = loadImage("data/images/jojo6.png");
   j7 = loadImage("data/images/jojo7.png");
   j8 = loadImage("data/images/jojo8.png");
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
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 1 - Phantom Blood \n \nIn late 19th-century England, Jonathan Joestar, the young son of a wealthy landowner, \nmeets his new adopted brother Dio Brando, who loathes him and plans to usurp him as heir to the Joestar family. \nWhen Dio's attempts are thwarted, he transforms himself into a vampire using an ancient Stone Mask and \ndestroys the Joestar estate.\n \nJonathan embarks on a journey, meets new allies, and \nmasters the Hamon (Japanese for Ripple) martial arts technique to stop Dio, \nwho has made world domination his new goal.", 10, 750);
    
    image(j1, 0, 0);
    
    music[0].play();
    
    music[7].stop();
    music[6].stop();
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    
  } else if (key == '2'){
    background(#4e6746);
    image(j2, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 2 - Battle Tendency \n \nIn 1938, a German expedition discovers and awakens a Pillar Man,\n a powerful humanoid whose race created the Stone Mask. \nThe Pillar Man kills the researchers and escapes to awaken the other Pillar Men so that they may regain \ndominance over humanity by obtaining the Red Stone of Aja. Joseph Joestar, Jonathan's grandson, \nunites with new allies and masters Hamon to defeat the Pillar Men.", 20, 750);
    
    music[1].play();
    
    music[7].stop();
    music[6].stop();
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[0].stop();
    
  } else if (key == '3'){
    background(#a64ca6);
    image(j3, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 3 - Stardust Crusaders\n \nIn 1989, Dio Brando (now referred to as DIO) awakens after his tomb is salvaged from the ocean. \nBecause Dio had managed to capture Jonathan's body, mystical spirits known as Stands, awaken in Jonathan's descendants, \nconsisting of Joseph, his daughter Holly Kujo, and grandson Jotaro Kujo. \nHolly, however, is unable to cope with her own Stand, and has only 50 days to live. \nJotaro, Joseph, and their new allies set out to defeat Dio before this deadline expires, \nand encounter Dio's henchmen along the way.", 5, 750);
    
    music[2].play();
    
    music[7].stop();
    music[6].stop();
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[1].stop();
    music[0].stop();
    
  } else if (key == '4'){
    background(#6e329b);
    image(j4, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 128);
    textFont(JoJo);
    textSize(20);
    text("Part 4 - Diamond is Unbreakable\n \nIn 1999, the Joestar family learns that Joseph has an illegitimate son named Josuke Higashikata, who lives \nin the fictional Japanese town of Morioh. Josuke learns of a mystical Bow and Arrow that \nbestows Stands upon those struck by its arrowheads. As they hunt down the Bow and Arrow, \nJosuke and his allies encounter a serious threat in the form of the Stand-using serial killer Yoshikage Kira.", 5, 750);
    
    music[3].play();
    
    music[7].stop();
    music[6].stop();
    music[5].stop();
    music[4].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
  
  } else if (key == '5'){
    background(#ffd700);
    image(j5, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 5 - Golden Wind\n \nIn 2001, in Naples, Italy, Giorno Giovanna is the son of Dio, conceived while he was in possession of \nJonathan Joestar's body. Giorno seeks to become a mafia boss in order \nto eliminate drug dealers who sell their wares to children. His team, which consists of Stand users, \nmust confront the mafia boss Diavolo and protect his daughter Trish Una, whom Diavolo \nintends to kill in order to hide his identity.", 5, 750);
    
    music[4].play();
    
    music[7].stop();
    music[6].stop();
    music[5].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
  
  } else if (key == '6'){
    background(#9fc5e8);
    image(j6, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 6 - Stone Ocean\n \nIn 2011, near Port St. Lucie, Florida, \nJotaro Kujo's daughter Jolyne Cujoh is framed for murder and sent to prison. \nShe works together with other Stand-using prisoners and her father to hunt down prison chaplain Father Enrico Pucci, \nloyalist to Dio, who seeks the creation of a new universe shaped to his and Dio's will.", 5, 750);
    
    music[5].play();
    
    music[7].stop();
    music[6].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
    
  } else if (key == '7'){
    background(#ffb266);
    image(j7, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 7 - Steel Ball Run\n \nIn an alternate timeline's 1890, United States President Funny Valentine holds a cross-country horse race with a \n$50 million reward to the winner. Valentine intends to use the race to gather the scattered parts of a holy corpse for \nhis own nationalistic ends. Racers Gyro Zeppeli and Johnny Joestar uncover Valentine's ploy \nand must defend themselves from his hired assassins.", 5, 750);
    
    music[6].play();
    
    music[7].stop();
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
    
 } else if (key == '8'){
   background(#ffb266);
    image(j8, 0, 0, 1200, 674);
    
    PFont JoJo;
    JoJo = createFont("SF Fedora.ttf", 100);
    textFont(JoJo);
    textSize(20);
    text("Part 8 - Jojolion\n \nSet in the same universe as Steel Ball Run, in 2012, \nthe town of Morioh has been devastated by the 2011 Tōhoku earthquake and tsunami, \nwhich has caused mysterious faults colloquially known as the Wall Eyes to appear in town. \nLocal college student Yasuho Hirose discovers a young man buried in the rubble and nicknames him Josuke. \nSuffering from amnesia, Josuke tries to uncover the secret of his past \nas he is also confronted with the activities of a local crime syndicate, \nwhich sells the fruit of a mysterious Locacaca tree, \ncapable of healing people and then taking something in return.", 5, 750);
    
    music[7].play();
    
    music[6].stop();
    music[5].stop();
    music[4].stop();
    music[3].stop();
    music[2].stop();
    music[1].stop();
    music[0].stop();
 }
}
