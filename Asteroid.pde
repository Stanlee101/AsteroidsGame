class Asteroid extends Floater{
  

  double rodSpeed = (int)(Math.random()*20 -10);
  public Asteroid(){
    myColor = 115;   
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (double)(Math.random()*2 -1);
    myYspeed = (double)(Math.random()*2 -1);
    myPointDirection = 1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
  }
  
  public void move(){
    turn(rodSpeed);
    super.move();
    }
  
  public double getCenterX(){return myCenterX;}
  
  public double getCenterY(){return myCenterY;}
}
