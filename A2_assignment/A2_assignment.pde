//A2 assignment
//by Kathleen Vela

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
  noFill();
  stroke(150,60); 
  strokeWeight(16);  
  line(80, 160, 320, 150);

  }

float rsize = 30;

float rt = 0;

int num = 35;

float sv ;

void draw() {
  background(152,190,200);
  
  for (int i = 1; i < num; i++) {
    sv = tan(rt*0.001);
    
    pushMatrix();
    translate(width/10, height/10);
    rotate(radians(rt+(i*sv)*5));
    ellipse(0, 0, rsize-(i*15), rsize-(i*5));
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rt+(i*sv)*5));
    ellipse(0, 0, rsize-(i*15), rsize-(i*5));
    popMatrix();
 
    pushMatrix();
    translate(width/1.10, height/1.10);
    rotate(radians(rt+(i*sv)*5));
    ellipse(0, 0, rsize-(i*15), rsize-(i*5));
    popMatrix();

    pushMatrix();
    translate(50, 450);
    rotate(radians(rt+(i*sv)*5));
    ellipse(0, 0, rsize-(i*10), rsize-(i*15));
    popMatrix();

    pushMatrix();
    translate(450, 50);
    rotate(radians(rt+(i*sv)*5));
    ellipse(0, 0, rsize-(i*10), rsize-(i*15));
    popMatrix();
  }

  rt+=4;

  if (radians(rt) >= TWO_PI & sv <= 0) {
    noLoop();
  }
  
  saveFrame("####_out.png");
  
}
