
public void setup()
{
  size(1000, 1000);
  rectMode(CENTER);
  background(0);
}

public void draw()
{
  myFractal(500, 500, 480);
}

public void myFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  ellipse(x-siz/2, y-siz/2, siz/2, siz/2);
  ellipse(x+siz/2, y-siz/2, siz/2, siz/2); 
  ellipse(x+siz/2, y+siz/2, siz/2, siz/2);
  ellipse(x-siz/2, y+siz/2, siz/2, siz/2);
  if (siz > 5)
  {
    myFractal(x-siz/2, y-siz/2, siz/3);
    myFractal(x+siz/2, y-siz/2, siz/3); 
    myFractal(x+siz/2, y+siz/2, siz/3);
    myFractal(x-siz/2, y+siz/2, siz/3);
  }
}
