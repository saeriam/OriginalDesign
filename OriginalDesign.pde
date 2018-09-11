int x=0;
void setup()
{
  size(400,400);
}

void draw()
{
  outside();
  inside();
  jewelOutline();
  jewel();
  star(200, 200, 60, 120, 5);
  
}
void outside()
{
  fill(245, 163, 199);
  ellipse(200, 200, 300, 300);
}

void inside()
{
  fill(207, 207, 207);
  ellipse(200, 200, 250, 250);
}

void jewelOutline()
{
  fill(250, 238, 109);
  ellipse(200, 340, 60, 60);
}

void jewel()
{
  fill(234, 66, 97);
  ellipse(200, 340, 50, 50);
}


//used code found on processing website
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  fill(250, 238, 109);
    for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}