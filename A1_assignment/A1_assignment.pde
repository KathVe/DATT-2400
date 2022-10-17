  //Kathleen Vela
  //A1 submission
  //in my code I attempted to play around with a shape that we didn't use in class, so I chose a triangle, 
  //while also using code from Week 3 to create a sort of background to make it more interesting.
  
  int cols = 40;
  int rows = 40;
  
  int stepx, stepy;
  
  int rand_switch = 0;
  
  int x1;
  int y1 ;

  int speed1 = 4;
  
  int x2;
  int y2 ;

  int speed2 = 2;
  
  void setup() {
    
    size(400, 400);
    background(255);
    
    stepx = (width/cols);
    stepy = (height/cols);
    
     x1 = int(random(width));
     y1 = int(random(height));
    
     x2 = int(random(width));
     y2 = int(random(height));
    
   }
   
   void draw() {
     background(0);
     
     for (int y = 0; y < rows; y++) {
       for (int x = 0; x< cols; x++) {
         
         float xp = x*stepx;
         float yp = y*stepy;
         
         int offset = stepx/1;
         
         int method = 1;
         
         switch (method) {
         case 0:
         
           rand_switch = int(random(2));
           break;
           
          case 1:
          
            rand_switch = int(map (cos((x+offset)+(y+offset)*frameCount*0.001), -2, 1, 0, 3));
            break;
            
          case 2:
          
            float distance = dist(width/4, height/4, xp, yp) + cos(frameCount*0.05)*300;
            
            rand_switch = int(map(distance, 0, width/2+(offset), 0, 4)) ;
            break;
          }
          
          if (rand_switch == 0) {
            arc(offset+xp, offset+yp, stepx, stepy, radians(20), radians(90));
          }

          if (rand_switch == 1) {
            arc(offset+xp, offset+yp, stepx, stepy, radians(70), radians(180));
          }
          
          strokeWeight(abs(tan(frameCount*0.1)*3));
          size(400, 400);
          fill(200, 50, 0);
          triangle(100, 275, 215, 60, 300, 268);
          
      }
    }    
  }
