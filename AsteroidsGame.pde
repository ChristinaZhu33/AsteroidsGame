//your variable declarations here
Spaceship bob = new Spaceship();
Star[] space = new Star[300];
public void setup() 
{
  size(500,500);
  background(0);
  
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  
  //draws many stars
  for (int i = 0; i < space.length; i++)
  {
    space[i].show();
  }
}

public void keyPressed(){
  //speeds up
  if (key == 'w'){
    bob.accelerate(0.2);
  }
  //turns right
  if (key == 'a'){
    bob.turn(-10);
  }
  //turns left
  if (key == 'd'){
    bob.turn(10);
  }
  //hyperspace
  if(key == 'q'){
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setPointDirection((int)(Math.random()*360));
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
}


