class Sq
{
  float d = 30; //size
  int xpos= 0; //position x
  int ypos = 0;  //position y
  boolean isBlack= true;  //color
  boolean nextBlack = true; //next color
  
  Sq(int _x, int _y, float _d)
  {
    this.xpos = _x;
    this.ypos = _y;
    this.d = _d;
  }
  
  void liveOrDie()
  {
     int nlive= 0;
    
     int x = this.xpos;
     int xp = this.xpos+1; if(xp > maxX-1) xp = 0;
     int xm = this.xpos-1; if (xm < 0) xm= maxX-1;
     int y = this.ypos;
     int yp = this.ypos+1; if(yp > maxY-1) yp = 0;
     int ym = this.ypos-1; if (ym < 0) ym= maxY-1;
     
    if(!mySquare[xm][y].isBlack) nlive = nlive + 1; 
    if(!mySquare[xp][y].isBlack) nlive = nlive + 1; 
    if(!mySquare[x][ym].isBlack) nlive = nlive + 1; 
    if(!mySquare[x][yp].isBlack) nlive = nlive + 1; 
    
    if(!mySquare[xm][ym].isBlack) nlive = nlive + 1; 
    if(!mySquare[xp][ym].isBlack) nlive = nlive + 1; 
    if(!mySquare[xm][yp].isBlack) nlive = nlive + 1; 
    if(!mySquare[xp][yp].isBlack) nlive = nlive + 1; 
    
    if(!this.isBlack)
    { 
      if(nlive ==2 || nlive ==3)
      {
        this.nextBlack = false;
      }
      else
      {
        this.nextBlack = true;
      }
    }
    else
    {
      if(nlive == 3 || nlive == 4)
      {
        this.nextBlack = false;
      }
      else
      {
        this.nextBlack = true;
      }
    }
      
    fill (255,100,100);
    textSize(30);
   // text(nlive,this.xpos*this.d,this.ypos*this.d+20);
  }
  
  
  void clicked(float x, float y)
  {
    if(
    x > this.xpos*this.d
    &&
    x < (this.xpos*this.d)+this.d 
    &&
    y > this.ypos*this.d
    &&
    y < (this.ypos*this.d)+this.d
    
    )
    {
       this.isBlack = !this.isBlack;
    }
  }
 
  void show ()
  {
     if(this.isBlack)
     {
       fill(color(0,0,0));
     }
     else
     {
       fill(color(255,255,255));
     }
     square(this.xpos*this.d,this.ypos*this.d,this.d);
     fill(255,100,100);
  }
}
