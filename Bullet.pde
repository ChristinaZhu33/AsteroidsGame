class Bullet extends Floater{

public Bullet(Spaceship theShip){
  //initializes these values to be the same as the ship
  myCenterX = theShip.getX();
  myCenterY = theShip.getY();
  myXspeed = theShip.getXs();
  myYspeed = theShip.getYs();
  myPointDirection = theShip.getPointDirection();
  accelerate(.6);
}
public void show(){
  fill(255, 0, 0);
  ellipse((float)myCenterX, (float)myCenterY, 5,5);
}

    public float getX() {
      return (float)myCenterX;
    }
    public float getY() {
      return (float)myCenterY;
    }
    public float getXs() {
      return (float)myXspeed;
    }
    public float getYs() {
      return (float)myYspeed;
    }
    public double getPointDirection() {
    return myPointDirection;
  }

}
