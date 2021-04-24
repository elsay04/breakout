void pausescreen() {
  fill(0);
  textSize(40);
  text("PAUSE", 400, 400);  
}

void pauseClicks(){
  if (dist(mouseX, mouseY, 50, 100) < 50) {
    mode = GAME;    
  } 
}
