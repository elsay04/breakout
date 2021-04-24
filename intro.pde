void intro() {
 
  background(255);
 
  //into the game button 
  startTactile();
  fill(255);
  rect(400, 500, 200, 100);
  
  //options button
  fill(255);
  rect(400, 300, 200, 100);

 
  
 
  
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
 
  
  fill(0);
  textSize(20);
  text("OPTIONS", 400, 300);
  
  
  
  fill(0);
  textSize(20);
  text("START", 400, 500);
  
  
  
 
}
  

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600)
    mode = GAME;
    
  if (mouseX > 300 && mouseX < 600 && mouseY > 300 && mouseY < 400)
    mode = OPTIONS; 
}

void startTactile() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    strokeWeight(10);
    stroke(255, 0, 0);
    fill(255, 209, 209);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255); 
  }
}
  
  

  
