void mousePressed(){
  
    // Defining the parameter of the ellipse so it can be pressed
  if((mouseButton == LEFT) && 
  (mouseX>(EllipseX-ellipseR/2)) && 
  (mouseX<(EllipseX+ellipseR/2)) &&
  (mouseY>(EllipseY-ellipseR/2)) && 
  (mouseY<(EllipseY+ellipseR/2))) {
    
    // If it is hit within the set parameter the score will go up by one
  mouseClicked++;
  if ( mouseClicked == 25) {
    win = true;
  }  
  
    // New spawn location every click with in the screen
  EllipseX=random(0, xSize); 
  EllipseY=random(0, ySize);
  
    // Trigger the Hit sound effect
  hit_sound.trigger();}
  else { 
    
    // Trigger the miss sound effect
  miss_sound.trigger();
  
    // If the ellipse is missed the score goes down by one
  mouseClicked -= 1;}
}
