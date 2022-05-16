#include "pitches.h"
#include "themes.h"

void setup() 
{
pinMode(4, INPUT_PULLUP); //Button 1 with internal pull up
pinMode(5, INPUT_PULLUP); //Button 2 with internal pull up
pinMode(6, INPUT_PULLUP); //Button 3 with internal pull up

Serial.begin(9600);

}

void Play_Pirates()
{
    for (int thisNote = 0; thisNote < (sizeof(Sparrow_note)/sizeof(int)); thisNote++) 
    {
    int noteDuration = 1000 / Sparrow_duration[thisNote];//convert duration to time delay
    
    tone(3, Sparrow_note[thisNote], noteDuration);
    
    int pauseBetweenNotes = noteDuration * 1.05; //Here 1.05 is tempo, increase to play it slower
    
    delay(pauseBetweenNotes);
    
    noTone(3);
    }
}

void Play_Mario()
{
    for (int thisNote = 0; thisNote < (sizeof(Mario_note)/sizeof(int)); thisNote++) 
    {
      int noteDuration = 1000 / Mario_duration[thisNote];
    
      tone(3, Mario_note[thisNote], noteDuration);
    
      int pauseBetweenNotes = noteDuration * 1.80;
    
      delay(pauseBetweenNotes);
   
      noTone(3);
    }
}

void Play_Wheezer()
{
   for (int thisNote = 0; thisNote < (sizeof(Wheezer_note)/sizeof(int)); thisNote++){
    int noteDuration = 1000 / Wheezer_duration[thisNote];
    
    tone(3, Wheezer_note[thisNote], noteDuration);
    
    int pause = noteDuration * 1.3;
    
    delay(pause);
    
    noTone(3);
   }
}

void loop() {
 if (digitalRead(4)==0)
      { Serial.println("Selected -> 'Super Mario Bros.' ");  Play_Mario();  }

 if (digitalRead(5)==0)
      { Serial.println("Selected -> 'Super Mario Bros.' ");  Play_Pirates();  }

 if (digitalRead(6)==0)
      { Serial.println("Selected -> 'Take on Me - Wheezer' ");  Play_Wheezer();  }
}
