void game() {
  image(kitty2, 0, 0, 700, 800);
  
  
  //draw paddle
  stroke(232, 59, 154);
  fill(255);
  circle(cx, cy, cd);
  
  //move paddle
  if (leftkey == true) cx = cx -10;
  if (rightkey == true) cx = cx + 10;

  // ball
  strokeWeight(7);
  stroke(250, 116, 190);
  fill(255);
  circle(ballx, bally, balld);
  
 //ball moving
 if (timer < 0) {
 ballx = ballx + vx;
 bally = bally + vy;
 }
 
 
 //bouncing 
 if (ballx < balld/2 || ballx > width -balld/2) {
   vx = vx * -1;
 }
 if (bally < balld/2 || bally > height -balld/2) {
   vy = vy * -1;
 }
 
 //bouncing off the paddle
 c2d = dist(cx, cy, ballx, bally);
 cr = cd/2;
 R = balld/2;
 
 if (c2d <= cr + R) {
   vx = (ballx - cx)/10;
   vy = (bally - cy)/10;
 }
 
 //lives 
 textSize(200);
 textFont(game);
 fill(255);
 text("LIVES: " + lives, width/2, height/2);
 timer = timer - 1;
 
 //lives
 if (ballx == height) {
   lives--;
   ballx = width/2;
   bally = height/2;
   timer = 50;
 }
 
 
 //bricks
  fill(255);
  int i = 0;
  while (i < n) {
   if (alive[i] == true) {
   manageBrick(i);
   }
   i++;
  }
   
}


void gameClicks() {
  mode = PAUSE;
}

void manageBrick(int i) { 
  if (y[i] == 100) fill(255);
   if (y[i] == 200) fill(250, 209, 232);
   if (y[i] == 300) fill(252, 138, 201);
   if (y[i] == 400) fill(252, 84, 177);
   if (y[i] == 500) fill(245, 40, 153);
   circle(x[i], y[i], brickd);
   bD = dist(x[i], y[i], ballx, bally);
   if (bD <= brickd/2 + R) {
     vx = (ballx - x[i])/10;
     vy = (bally - y[i])/10;
     alive[i] = false;
   }
  
}
  
  
