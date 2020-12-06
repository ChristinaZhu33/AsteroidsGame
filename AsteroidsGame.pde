//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList <Asteroid> deb = new ArrayList <Asteroid>();
Star[] space = new Star[300];
public void setup() 
{
  //frameRate(120);
  background(0);
  size(500,500);

//creates stars
  for (int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  for(int i =0; i<15; i++){
    deb.add(new Asteroid());
  }
  
}
public void draw() {
  fill(0,0,0,40);
  rect(0,0,500,500);

  //moves and shows spaceship
  bob.move();
  bob.show();
 
 //moves and shows asteroids
  for(int i = 0; i < deb.size(); i++){
      deb.get(i).move();
      deb.get(i).show();
      
     if (dist(deb.get(i).getX(), deb.get(i).getY(), bob.getX(), bob.getY())<20){
        deb.remove(i);
        i--;
     }
    }
 
  //draws many stars
  for (int i = 0; i < space.length; i++)
  {
    space[i].show();
  }
}



//spaceship controls
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
