Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() 
{
  size(500,500);
  background(0);
  bob.accelerate(0.2);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
}

public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(0.2);
    bob.accelerate(0.2);
  }
  if(key == 'r') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
  }
  if(key == 'd') {
    bob.turn(20);
  }
  if(key == 'a') {
    bob.turn(-20);
  }
}

