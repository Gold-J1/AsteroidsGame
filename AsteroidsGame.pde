//your variable declarations here
Spaceship bob;
Star[] light = new Star[200];
public void setup() 
{
  size(1000,1000);
  bob = new Spaceship();
  for (int i = 0; i <light.length; i++){
    light[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < 200; i++){
    light[i].show();
  }
}
public void keyPressed()
{
  if (key == 'h'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setmyPointDirection(Math.random()*360);
    bob.setmyCenterX(Math.random() * 1000);
    bob.setmyCenterY(Math.random() * 1000);
  }
  if (key == 'w'){
    bob.accelerate(0.5);
  }
  if (key == 's'){
    bob.accelerate(-0.5);
  }
  if (key == 'a'){
    bob.turn(-5);
  }
  if (key == 'd'){
    bob.turn(5);
  }
}
