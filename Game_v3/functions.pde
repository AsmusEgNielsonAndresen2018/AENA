void mousePressed(){
  
    // Defining the parameter of the ellipse so it can be pressed
  if((mouseButton == LEFT) && 
  (mouseX>(ellipseX-ellipseR/2)) && 
  (mouseX<(ellipseX+ellipseR/2)) &&
  (mouseY>(ellipseY-ellipseR/2)) && 
  (mouseY<(ellipseY+ellipseR/2))) {
    
    // If it is hit within the set parameter the score will go up by one
    // and if the score == the winningValue YOU WIN!
  mouseClicked++;
  if ( mouseClicked == winningValue) {
    win = true;
  }  
  
    // New spawn location every click with in the screen
  ellipseX=random(0, xSize); 
  ellipseY=random(0, ySize);
  
    // Trigger the Hit sound effect
  hit_sound.trigger();}
  else { 
    
    // Trigger the miss sound effect
  miss_sound.trigger();
  
    // If the ellipse is missed the score goes down by one
  mouseClicked -= 1;}
}
