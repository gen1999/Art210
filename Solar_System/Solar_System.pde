float _angle = 0;


void setup()
{
  size (800,600);
}


void draw()
{
 clearScreen();
 translate (width/2,height/2);
 scale(0.5);
 
 aCircle (0,0,200,255,255,255);
 
 //planet
 pushMatrix();
   rotate(radians(_angle));
   translate(250,0);
   aCircle (0,0,100,0,100,255);
  
   rotate(radians(_angle/2));
   translate (150,0);
   aCircle(0,0,20,255,200,0);
   popMatrix();
   
   
   pushMatrix();
   rotate(radians(_angle));
   translate(120,0);
   aCircle(0,0,55,50,100,0);
 popMatrix();
 
 
 pushMatrix();
   rotate(radians(_angle/2));
   translate(150,0);
   aCircle (0,0,50,155,100,0);
   
   rotate(radians(_angle/2));
   translate(150,0);
   aCircle (0,0,11,20,100,0);
   
    rotate(radians(_angle/2));
   translate(150,0);
   aCircle (0,0,20,20,10,0);
   
 popMatrix();
 
 
 pushMatrix();
   rotate(radians(_angle/3));
   translate(150,0);
   aCircle (0,0,100,20,50,0);
 popMatrix();
 
 
 _angle =_angle + 1;
}


void aCircle(float x, float y, float d, int red, int blue, int green)
{
    noStroke();
  fill(color(red,blue,green,300));
  circle(x,y,d); 
}
  
  
void clearScreen()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,width,height);
}
