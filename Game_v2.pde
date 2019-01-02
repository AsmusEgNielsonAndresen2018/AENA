Ball n1 = new Ball(0, 0);

    // Timer
  int timerStart;
  int timerFinished=0;
  
    // Winning 
  boolean win;

    // Importing a sound library.
import ddf.minim.*;

    // Defining the sound referance names.
Minim minim;            
AudioSample hit_sound;
AudioSample miss_sound;

    // Defining the variables
int mouseClicked;

float EllipseX = 100;
float EllipseY = 100;
int ellipseR = 100;

int xSize = 850;
int ySize = 625;

void setup()
{
  size(850, 625);
  
    // Timer begins
  timerStart = millis();
  
  minim = new Minim(this);
  hit_sound = minim.loadSample("game_sound2.wav", 512 );  // 512 is the quallity of the sound. If it was set higher the sound would be more clear and lower would make it worse.
  miss_sound = minim.loadSample("game_sound.wav", 512 );   // This was a good quaility and it ran great whit that setting.
}

void draw(){
  background(205);
  n1.update();
  
    // The scoreboard in the middle of the screen
  fill(#0000FF);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(mouseClicked+"",0,0,width, height);
  fill(#FF3796);
 
    // End score 
  if (win && timerFinished==0) {
    timerFinished = millis();
    println("You did it in "
    + (( timerFinished - timerStart) /1000.0)
    + " seconds. Good job!" ); 
    exit();
  }
}
