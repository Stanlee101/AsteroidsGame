class Bullet extends Floater {
  
  public Bullet (Spaceship bob) {
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(.5);
  }
  
  public void show(){
    noStroke();
    fill(225, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move(){
     myCenterX += myXspeed;    
    myCenterY += myYspeed;
    super.accelerate(0.1);
  }
   
  
  public double getCenterX(){return myCenterX;}
  
  public double getCenterY(){return myCenterY;}
}
