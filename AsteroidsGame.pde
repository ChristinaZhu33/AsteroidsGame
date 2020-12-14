//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star[] space = new Star[500];
public void setup() 
{
  //frameRate(120);
  background(0);
  size(600,600);

//creates stars
  for (int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
//creates asteroids
  for(int i =0; i<30; i++){
    rock.add(new Asteroid());
  }
  
}
public void draw() {
  fill(0,0,0,30);
  rect(0,0,600,600);

  //moves and shows spaceship
  bob.move();
  bob.show();
 
 //moves and shows all asteroids
  for(int i = 0; i < rock.size(); i++){
      rock.get(i).move();
      rock.get(i).show();

 //collision detection and removes asteroids     
     if (dist(rock.get(i).getX(), rock.get(i).getY(), bob.getX(), bob.getY())<20){
        rock.remove(i);
        i--;
     }
    }
 
  //draws many stars
  for (int i = 0; i < space.length; i++)
  {
    space[i].show();
  }
  
  //moves and shows all bullets
  for(int i = 0; i < shots.size(); i++){
    
  shots.get(i).move();
  shots.get(i).show();
  
   for (int nI=0; nI < rock.size(); nI++){
   if (dist( rock.get(nI).getX(), rock.get(nI).getY(), shots.get(i).getX(), shots.get(i).getY())< 20){
        rock.remove(nI);
        shots.remove(i);
        break;
     }
  }
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
    bob.setX((int)(Math.random()*600));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360));
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
  //shoots bullet
  if(key == 's'){
  shots.add(new Bullet(bob));
  }
}
