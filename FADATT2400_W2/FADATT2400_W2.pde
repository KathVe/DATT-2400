int x1 = 250;
int y1 = 250;

int speed = 4;

int x2 = 100;
int y2 = 25;

int speed1 = 4;

void setup() {
  
  size(500, 500);
  background(255);
  
}

//integer 1 2 3 4 
//floating point 1.12 2.33

void draw() {
  
 x = x+int( random(-speed,speed) );
 y = y+int( random(-speed,speed) );
  
 strokeWeight(abs(sin(frameCount*0.1)*5));
 stroke(0,50);
 ellipse(abs(x1),abs(y1),,abs(sin(frameCount*0.1)*5),abs(sin(frameCount*0.1)*5));
  
 x2 = x2+int(  random(-speed,speed) );
 y2 = y2+int(  random(-speed,speed) );
 ellipse(x2,y2,10,10);
  
}

void randomwalk(int xpos, int ypos, int myspeed){
