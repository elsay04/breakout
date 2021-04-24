void gameover() {
  background(255, 0, 0);
  fill(0);
  textSize(40);
  text("GAME OVER", 400, 400);
  text("HIGHSCORE: " + score, 400, 200);
}



void gameoverClicks() {
  reset();
  mode = INTRO;
  if (clickedOnRect(650, 700, 200, 100)) {
    exit();
  }
  
}
