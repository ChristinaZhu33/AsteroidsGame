class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 3; //the number of corners, a triangle
    xCorners = new int [corners]; //array
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = color(255, 77, 0);
    //myColor = 255; //white spaceship
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel
    myPointDirection = 0; //holds the current direction
    }
    
    public void setX(double x){
    myCenterX = x;
  }
    public void setY(double y){
    myCenterY = y;
  }
    public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }  
    public void setXspeed(double x) {
    myXspeed = x;
  }
    public void setYspeed(double y) {
    myYspeed = y;
  }
    public float getX() {
      return (float)myCenterX;
    }
    public float getY() {
      return (float)myCenterY;
 }
    
}
