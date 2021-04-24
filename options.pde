void options() {
 background(245, 131, 284);
 
 fill(255);
 rect(500, 600, 80, 60);
 fill(0);
 textSize(20);
 text("BACK", 500, 600);
 
optionsOn = true;

size = sliderY/2;

 //slider
  fill(255);
  strokeWeight(3);
  line(100, 550, 100, 700);
  fill(245, 131, 284);
  circle(100, 550, 50);
  mouseY = 550;
  loadImage("size");
  
 

}



void optionsClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 560 && mouseY < 580) {
    mode = INTRO;
  }
}

void controlSlider() {
  //slider
  if (mouseY > 550 && mouseY < 600  && mouseX > 50 && mouseX < 150) {
    sliderY=mouseY;
  } 
}

void mouseDragged() {
  controlSlider(); 
 
}
