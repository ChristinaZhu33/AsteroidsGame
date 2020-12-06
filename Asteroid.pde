class Asteroid extends Floater {

public int rotSpeed;
  
public Asteroid(){
  corners = 6;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] = -11;
  yCorners[0] = -8;
  xCorners[1] = 7; 
  yCorners[1] = -8;
  xCorners[2] = 13;
  yCorners[2] = 0;
  xCorners[3] = 6;
  yCorners[3] = 10;
  xCorners[4] = -11;
  yCorners[4] = 8;
  xCorners[5] = -5;
  yCorners[5] = 0;  
    
     myColor = color(200,200,200);
     myCenterX = (int)(Math.random()*500)+1;
     myCenterY = (int)(Math.random()*500)-1;//holds center coordinates
     myXspeed = (Math.random()*2)-2;
     myYspeed = (Math.random()*2)-2; //holds the speed of travel
     myPointDirection = 0;//holds the current direction
     rotSpeed = (int)(Math.random()*10)+3;
}
public void move(){
    turn(rotSpeed);
    super.move();
  }
  
 public float getX() {
   return (float)myCenterX;
 }
 public float getY() {
   return (float)myCenterY;
 }
  
}

