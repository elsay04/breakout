// Elsa You
// BREAKOUT 
// I got stuck on my scoring part so I didn't do it and also my gameover part
 
// mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//brick variables
int[] x;     
int[] y;     
int n;
int brickd;  //diameter of all bricks
float bD;
int tempx, tempy;
boolean[] alive;

//images
PImage intro;
PImage kitty;
PImage kitty2;

//score
int timer, lives;


//font
PFont game;

//kitty 
int kit, kit2;

//paddle and ball
float cx, cy, cd;
float ballx, bally, balld;
float vx, vy;

//circle radius
float cr;
float R;
float c2d;

//keyboard variables
boolean leftkey, rightkey;




void setup() {
  size(700, 800);
  mode = INTRO;
  
  //images
  intro = loadImage("hello.jpg");
  kitty = loadImage("kitty.png");
  kitty2 = loadImage("game.jpg");
  
  //fonts
  game = createFont("game_over.ttf", 200);
 
  //initialize kitty
  kit = -100;
  kit2 = -300;
  
  //initialize paddle and ball
  cx = width/2; //paddle
  cy = height;
  cd = 200;
  
  ballx = width/2; //ball
  bally = 600;
  balld = 20;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  
  //initialize keyboard variables 
  leftkey = rightkey = false;
  
  //initialize score
  timer = 50;
  lives = 3;
  
  //brick array setup
  n = 28;
  x = new int[n];
  y = new int[n];
  brickd = 30;
  tempx = 100;
  tempy = 100;
  alive = new boolean[n];
  
 int i = 0;
 while (i < n) {
   x[i] = tempx;
   y[i] = tempy;
   alive[i] = true;
   tempx = tempx + 100;
   if (tempx == width) {
       tempx = 100;
       tempy = tempy +100;
   }
   i = i + 1;
 }
   
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
   
    
  
}
