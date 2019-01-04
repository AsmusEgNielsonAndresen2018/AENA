    // Declaring names for classes
Ball n1 = new Ball(0, 0);

Rain[] rainDrops = new Rain[500];

    // the string for the menu
String gameState;

    // Timer
  int timerStart;
  int timerFinished=0;
  
    // Winning 
  boolean win;
    // Starting the 
boolean keyPressed;

    // Importing a sound library.
import ddf.minim.*;

    // Defining the sound referance names.
Minim minim;            
AudioSample hit_sound;
AudioSample miss_sound;

    // Defining the variables
int mouseClicked;

float ellipseX = 50;
float ellipseY = 50;
float ellipseR = 100;

int topRightX = 800;
int topRightY = 50;

int ellipseBig = 100;
int ellipseSmall = 25;

boolean pulse = false;

int xSize = 850;
int ySize = 625;

int winningValue = 20;

void setup()
{
  size(850, 625);
  smooth();
  
    // Calling he class
  for(int i = 0; i < rainDrops.length; i++) {
    rainDrops[i] = new Rain();
  }
  
  gameState = "START";
  
    // Timer begins
  timerStart = millis();
    
    // The sounds were found on https://www.audiomicro.com/free-sound-effects
  minim = new Minim(this);
  hit_sound = minim.loadSample("game_sound2.wav", 512 );  // 512 is the quallity of the sound. If it was set higher the sound would be more clear and lower would make it worse.
  miss_sound = minim.loadSample("game_sound.wav", 512 );   // This was a good quaility and it ran great with that setting.
}

void draw(){
  background(205);
  
    // calling ball
  n1.update();
  
    // drawing the rainDrops
  for (int i = 0; i < rainDrops.length; i++) {
  rainDrops[i].fall();
  rainDrops[i].show();
 }

    // Timer in the top right corner 
  fill(0);
  int timerStart = millis() /1000;
  text(timerStart, topRightX, topRightY);
  textSize(14);
  text("Sec.", topRightX+25, topRightY+8);
 
    // This if statement makes the ellipse pulse between the to values Big and Small.
   if (pulse) {
    ellipseR = ellipseR + 1;
    if (ellipseR > ellipseBig) {
      pulse = false;
    }
  } else {
    ellipseR = ellipseR - 1;
    if (ellipseR < ellipseSmall) {
      pulse = true;
    }
  }
  
    // The scoreboard in the middle of the screen
  fill(#0000FF);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(mouseClicked+"", 0, 0, width, height);
  fill(#FF3796);
 
    // End score displayed in time spend
  if (win && timerFinished==0) {
    timerFinished = millis();
    println("You did it in "
    + (( timerFinished - timerStart) /1000.0)
    + " seconds. Good job!" ); 
    exit();
  }
}
