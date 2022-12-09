PVector loc;
PVector vel;
PVector acc;

float limit;

Obstacle[] ob;

int num = 10;
int bsize = 30;
int points;
boolean pressed;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  background(0);
  reset();
  
  loc = new PVector(width/8, height/8);
  vel = new PVector(0, 0);
  limit = 10;

  ob = new Obstacle[num];

  for (int i = 0; i < num; i++) {
    
    ob[i] = new Obstacle();
  
  }
}

int xpos = 100;
int ypos = 100;
float x=30, y=40, s=40;

void draw() {
  background(0);


  for (int i = 0; i < num; i++) {
    ob[i].display();
    ob[i].collision(xpos, ypos);
  
  fill(255, 204, 0);
  ellipse(xpos, ypos, bsize, bsize);

  println(xpos, ypos);

  PFont f = createFont ("Comic Sans MS Bold", 60);
  
  String s = "Avoid The Circles!";
  
  textFont(f);
  textSize(50);
  fill(255);
  text(s, 30, 200);
 
  ellipse(50, 50, 50, 50);
 
   if(!pressed && mousePressed) {
    
    pressed = true;
    
    if(mouseX > x && mouseY > y && mouseX < x && mouseY < y) {
      points++;
      randomPos();
    }
    
    else{
      reset();
    }
  }
  
  if(pressed && !mousePressed) {
    
    pressed = false;
  }
  
  textSize(25);
  fill(255);
  text("Points: " + points, width/2, 40);
  }
}

void reset() {
  
  x = width/2;
  y = height/2;
  points = 0;
}

void randomPos() {
  
  x = random(s/2, width - (s/2));
  y = random(s/2, height - (s/2));
  
}

int step = 30;

void keyPressed() {

  if (keyCode == LEFT) {

    xpos-=step;
  }

  if (keyCode == RIGHT) {

    xpos+=step;
  }

  if (keyCode == UP) {

    ypos-=step;
  }

  if (keyCode == DOWN) {

    ypos+=step;
  }
}

class Obstacle {


  float x = random(50, width);
  float y = random(30, height);

  float w = random(60, 50);

  int fval = 255;

  int speed = int(random(1, 5));


  Obstacle() {
  }


  void display() {
    fill(fval);

    x-=speed;
    if (x < 0) {
      x = width;
    }
    noStroke();
    fill(#00FF00);
    ellipse(x, y, w, w);
  }

  void collision(float xp, float yp) {

    if (dist(xp, yp, x, y) < (w-bsize)) {

      fval = 0;
      noLoop();
    }
  }
}
  
  
