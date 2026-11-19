class Asteroid extends Floater {
  private double rotation;
  public Asteroid() {
    rotation = (Math.random()*10)-5;
    corners = 12;
    xCorners = new int[]{-14, -7, 2, 11, 16, 12, 15, 5, -4, -13, -10, -16};
    yCorners = new int[]{-9, -15, -12, -14, -5, 2, 10, 16, 12, 14, 4, -2};
    myColor = color(83, 5, 5);
    myCenterX = (int)(Math.random()*100);
    myCenterY = (int)(Math.random()*100);
    myXspeed = (double)(Math.random()*4);
    myYspeed = (double)(Math.random()*4);
    myPointDirection = Math.random()*360;
  }
  
  public void move(){
    turn(rotation);
    super.move();
  }
  public double getRotation(){
    return rotation;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getmyPointDirection(){
    return myPointDirection;
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
  
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public void setmyPointDirection(double x){
    myPointDirection = x;
  }
  public void setmyCenterX(double x){
    myCenterX = x;
  }
  public void setmyCenterY(double y){
    myCenterY = y;
  }
  public void setRotation(double x){
    rotation = x;
  }  
} //end of class extends
