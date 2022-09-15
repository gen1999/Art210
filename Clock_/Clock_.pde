float angle = 0;

void setup ()
{
  size(800,800);
  fill (color(255,255,255)); 
}



void draw ()
{
      translate(width/2,height/2);
  
  //clockface
    strokeWeight(20);
    stroke(color(0,0,0));
    circle(0,0,700);
     
     //long hand
   pushMatrix();
     rotate(radians(angle));
     line(0,40,0,-300);
   popMatrix();
   
     //short hand
   pushMatrix();
     rotate(radians(angle/12));
     strokeWeight(30);
      line(0,40,0,-200);
    popMatrix();
    
    
    //smallest hand
     pushMatrix();
     rotate(radians(angle*60));
     strokeWeight(10);
     stroke(color(255,0,0));
     line(0,40,0,-240);
   popMatrix();
    
    strokeWeight(20);
    circle(0,0,40);
      
      angle= angle + 0.1;
}
