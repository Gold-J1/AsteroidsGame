class Spaceship extends Floater {
  public Spaceship() {
    corners = 12;
    xCorners = new int[]{24, 6, -4, -14, -16, -10, -14, -10, -16, -14, -4, 6};
    yCorners = new int[]{0, -4, -18, -18, -12, -6, 0, 6, 12, 18, 18, 4};
    myColor = color(180, 217, 255);
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
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
  
}
