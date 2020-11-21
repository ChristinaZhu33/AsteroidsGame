class Star //note that this class does NOT extend Floater
{
  private int starX, starY; 
  private double starSize;
  public Star()
  {
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSize = (Math.random()+1);
  }
  public void show()
  {
    noStroke();
    fill(255);
    ellipse((float)starX, (float)starY, (float)starSize, (float)starSize);
  }
}
