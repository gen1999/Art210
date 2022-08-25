//Declaring global variables
int x =0;
int y =0;


void setup ()
{
  println(x);
   size(800,600);  
   x =800;
   y =600;
}

void draw ()
{
  noStroke();
  fill(color(0,0,100,10));
  rect(0,0,x,y);
  //fill(color(random(255),random(255),random(255)));
  
  
  colorMode(HSB, 360,100,100);
  float red = random(360);
  float green = random(255);
  float blue = random(255);
  color randomcolor = color(hue,sat,bright);
  fill(randomcolor);
  
  
  circle(random (x),random(y),220);
}
