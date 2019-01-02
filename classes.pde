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
