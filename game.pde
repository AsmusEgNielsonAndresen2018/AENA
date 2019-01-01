Ball n1 = new Ball(50,50);

// importing a sound library.
import ddf.minim.*;

Minim minim;            // defining the sound referance names.
AudioSample hit_sound;
AudioSample miss_sound;

// defining the variables
int mouseClicked;

float EllipseX = 100;
float EllipseY = 100;
int ellipseR = 100;

void setup()
{
  size(750,600);
  frameRate(30);
  minim = new Minim(this);
  hit_sound = minim.loadSample("game_sound2.wav", 512 );  // 512 is the quallity of the sound. If it was set higher the sound would be more clear and lower would make it worse.
  miss_sound = minim.loadSample("game_sound.wav", 512 );   // This was a good quaility and it ran great whit that setting.
}

void draw(){
  background(204);
  n1.update();
  
  // The scoreboard in the middle of the screen
  fill(#0000FF);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(mouseClicked+"",0,0,width, height);
  fill(255,55,150);
}

// The ellipse target
class Ball {
  float x, y;
  Ball (float x, float y) {
  }
  void update(){
    x += y;
    if (x > width) {
      x = 0;
    }
    ellipse(EllipseX,EllipseY,ellipseR,ellipseR);
  }
}

void mousePressed(){
  if((mouseButton == LEFT) &&
  (mouseX<(EllipseX+ellipseR/2)) && 
  (mouseY>(EllipseY-ellipseR/2)) && 
  (mouseY<(EllipseY+ellipseR/2))) {
  mouseClicked++;
  EllipseX=random(0,750); 
  EllipseY=random(0,600);
  hit_sound.trigger();}
  else { 
  miss_sound.trigger();
  mouseClicked = 0;}
}
