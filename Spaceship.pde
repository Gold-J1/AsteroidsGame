class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myColor = color(255,0,0);
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
