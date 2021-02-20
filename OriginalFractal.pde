public void setup()
{
  size(500, 500);
  rectMode(CENTER);
}

public void draw()
{
  background(0);
  myFractal(250, 250, 250);
}

public void myFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  circle(x-siz/2, y-siz/2, siz/2);
  circle(x+siz/2, y-siz/2, siz/2); 
  circle(x+siz/2, y+siz/2, siz/2);
  circle(x-siz/2, y+siz/2, siz/2);
  if(siz > 5)
  {
  myFractal(x-siz/2, y-siz/2, siz/3);
  myFractal(x+siz/2, y-siz/2, siz/3); 
  myFractal(x+siz/2, y+siz/2, siz/3);
  myFractal(x-siz/2, y+siz/2, siz/3);
  }
}

