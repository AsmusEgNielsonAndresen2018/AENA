    // The ellipse target
class Ball {
  float x, y;
  Ball (float x, float y) {
  }
  void update(){
    noStroke();
    x += y;
    if (x > width) {
      x = 0;
    }
    ellipse(ellipseX, ellipseY, ellipseR, ellipseR);
  }
}
    // The rain drops
class Rain {
    // variables for the rain
  float x = random(width);      // Where it spawns from on the x axis
  float y = random(-50, -500);  // How far up they spawn on the y axis
  float ySpeed = random(4, 10);  // The speed at which they fall on the y axis
  float size = random(10, 20);  // The length of the rain drops on the y axis
  
    // The spawn and speed of the strokes/rainDrops
  void fall() {
    y = y + ySpeed;
    
    if (y > height) {
      y = random(-200, -100);
    }
  }
  
    // The look of the rainDrops
  void show() {
    stroke(#000AFA);
    line(x,y,x,y+10);
  }
  
}
