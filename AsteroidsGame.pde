Spaceship bob;
Star[] light = new Star[200];
ArrayList <Asteroid> serena = new ArrayList <Asteroid>();

boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;


float flashX = 0;
float flashY = 0;
float flashSize = 0;
float flashAlpha = 0; 

public void setup() {
  size(1000, 1000);
  bob = new Spaceship();
  for (int i = 0; i < light.length; i++) {
    light[i] = new Star();
  }
  for (int i = 0; i < 300; i++) {
    serena.add(new Asteroid());
  }
}

public void draw() {
  if (wPressed) {
    bob.accelerate(0.2);
  }
  if (sPressed) {
    bob.accelerate(-0.2);
  }
  if (aPressed) {
    bob.turn(-4);
  }
  if (dPressed) {
    bob.turn(4);
  }

  background(0);


  for (int i = 0; i < light.length; i++) {
    light[i].show();
  }


if (flashAlpha > 1) {
  noFill();
  int numRings = 50; 
  
  for (int i = 0; i < numRings; i++) {

    float progress = (float) i / numRings; 
    
    float ringSize = flashSize * (1.0 - progress);
    
    float ringAlpha = flashAlpha * (1.0 - progress) * 5;
    
    strokeWeight(4); 
    stroke(200, 200, 255, ringAlpha);
    
    if (ringSize > 0) {
      ellipse(flashX, flashY, ringSize, ringSize);
    }
  }
  
  flashSize += 50;
  flashAlpha *= 0.99;
}

  bob.show();
  bob.move();
  
  for (int i = serena.size() - 1; i >= 0; i--) {
    Asteroid current = serena.get(i);
    float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), 
                   (float)current.getmyCenterX(), (float)current.getmyCenterY());
     if (d < 30) {
      serena.remove(i);
    } else {
      current.show();
      current.move();
    }
  }
}

public void keyPressed() {
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 's' || key == 'S') sPressed = true;
  if (key == 'a' || key == 'A') aPressed = true;
  if (key == 'd' || key == 'D') dPressed = true;

  if (key == 'h' || key == 'H') {

    double newX = Math.random() * 1000;
    double newY = Math.random() * 1000;


    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setmyPointDirection(Math.random() * 360);
    bob.setmyCenterX(newX);
    bob.setmyCenterY(newY);

    flashX = (float) newX;
    flashY = (float) newY;
    flashSize = 10;  
    flashAlpha = 255; 
  }
}

public void keyReleased() {
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') aPressed = false;
  if (key == 'd' || key == 'D') dPressed = false;
}
