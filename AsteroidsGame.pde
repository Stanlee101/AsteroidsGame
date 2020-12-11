Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> Bunch;
ArrayList <Bullet> Ammo = new ArrayList <Bullet>();

public void setup() {
  size(500,500);
  background(0);
  Bunch = new ArrayList <Asteroid>();
  bob.accelerate(0.2);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  
  for (int i = 0; i < 20; i++) {
    Bunch.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  
  for (int i = 0; i < Bunch.size(); i++) {
    Bunch.get(i).move();
    Bunch.get(i).show();
    if (dist((int)Bunch.get(i).getCenterX(), (int)Bunch.get(i).getCenterY(), (int)bob.getCenterX(), (int)bob.getCenterY()) <20){
      Bunch.remove(i);
      i--;
    }
  }
  
  for (int i = 0; i < Ammo.size(); i++){
    Ammo.get(i).move();
    Ammo.get(i).show();
  }
  
  for (int i = 0; i < Ammo.size(); i++){
    for (int j = 0; j < Bunch.size(); j++){
  if (dist((int)Bunch.get(j).getCenterX(), (int)Bunch.get(j).getCenterY(), (int)Ammo.get(i).getCenterX(), (int)Ammo.get(i).getCenterY()) <20){
    Bunch.remove(j);
    Ammo.remove(i);
    j--;
    break;
    }
   }
  }
 }


public void keyPressed() {
  if(key == 'w') {
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
  
  if (key == ' ') {
    Ammo.add(new Bullet(bob));
  }
}
