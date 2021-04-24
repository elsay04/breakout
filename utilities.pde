boolean clickedOnRect(float x, float y, float w, float h) {
  return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
}

void reset() {
  //target 
  x = width/2;
  y = height/2;
  d = 50;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //game initialization
  score = 0;
  lives = 3;
  
}
