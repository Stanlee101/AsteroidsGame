class Spaceship extends Floater  
{   
  public Spaceship(){
  corners = 4;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners = new int[] {-8, 16, -8, -2};
  yCorners = new int[] {-8, 0, 8, 0};
  myColor = 255;   
  myCenterX = 200; 
  myCenterY = 200; //holds center coordinates   
  myXspeed = 1;
  myYspeed = 1; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width){     
      myCenterX = 0;    
    }   
    
    else if (myCenterX<0){     
      myCenterX = width;    
    }    
    
    if(myCenterY >height){    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }  
  }
  
  
public void turn (double degreesOfRotation) {
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;   
  }
  
   public void accelerate (double dAmount)   {
     
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }
  
  public void setXspeed(double x) {
    myXspeed = x;
  }
  
  public void setYspeed(double y) {
    myYspeed = y;
  }
  
  public void setCenterX(double x){
    myCenterX = x;
  }
  
  public void setCenterY(double y){
    myCenterY = y;
  }
  
  public double getCenterX(){return myCenterX;}
  
  public double getCenterY(){return myCenterY;}
  
  public double getXspeed(){return myXspeed;}
  
  public double getYspeed(){return myYspeed;}
  
  public double getPointDirection(){return myPointDirection;}
}
