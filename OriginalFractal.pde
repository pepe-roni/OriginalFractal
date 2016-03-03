int increase=2;
boolean y=false;

void setup()
{
  size(500, 500);
}
void draw()
{
  background(0);
  myFractal(250, 250, 2+increase);
  if(increase>2000)
  {
    y=true;
  }
  else if(increase<0)
  {
    y=false;
  }
  
  if(y)
  {
    increase-=10;
  }
  if(!y)
  {
    increase+=10;
  }
  
  println(increase);
}
public void myFractal(int x, int y, int siz)
{
  fill(mouseX/2, mouseY/2, 250);
  triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
  if (siz >0.1)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
  }
}

