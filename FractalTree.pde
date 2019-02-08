private double fractionLength = .8;
private int smallestBranch = 10; 
private double branchAngle = .2;  
private int moveX = 10;
private int moveY = 10;
private int paint = (int)(Math.random()*100)+60;
private int swoosh = 1;
private int x1;

public void setup() 
{   
  size(600, 600);
} 
public void draw() 
{   
  background(158, 232, 245);   
  strokeWeight(2);
  stroke(paint);
  line(300, 600, 300, 400);   
  drawBranches(300, 400, 120, 3*Math.PI/2);
  for (int i = 0; i < 20; i++)
  {
    grass();
  }

  cloudOne();
  cloudTwo();
  cloudThree();
} 

public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y );
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);

  if (branchLength>smallestBranch)
  {
    stroke(paint);
    drawBranches(endX1, endY1, branchLength-1, angle1-75);
    drawBranches(endX2, endY2, branchLength-1, angle2+75);
  }
}

public void cloudOne()
{
  noStroke();
  fill(255, 255, 255, 150);
  ellipse(70 + moveX, 50 + moveY, 100, 50);
  ellipse(100 + moveX, 40 + moveY, 100, 50);
  ellipse(125 + moveX, 50 + moveY, 100, 50);
  ellipse(90 + moveX, 70 + moveY, 100, 50);

  if (moveX < 600) {
    moveX = moveX + 2;
  }
  if (moveX > 599) {
    moveX = 0;
  }
  
  if (moveY < 35) {
    moveY = moveY + 2;
  }
  if (moveY > 34) {
    moveY = 0;
  }
}

public void cloudTwo()
{
  noStroke();
  fill(255, 255, 255, 150);
  ellipse(270 + moveX, 100 + moveY, 100, 50);
  ellipse(320 + moveX, 90 + moveY, 100, 50);
  ellipse(325 + moveX, 100 + moveY, 100, 50);
  ellipse(290 + moveX, 120 + moveY, 100, 50);
}

public void cloudThree()
{
  noStroke();
  fill(255, 255, 255, 150);
  ellipse(470 + moveX, 50 + moveY, 100, 50);
  ellipse(500 + moveX, 40 + moveY, 100, 50);
  ellipse(525 + moveX, 50 + moveY, 100, 50);
  ellipse(490 + moveX, 70 + moveY, 100, 50);
}

public void grass()
{ 
  stroke(105, 160, 47);
  frameRate(10);
  strokeWeight(1);
  for (int next = 0; next < 660; next++) {
    line(next, 600, next + x1, (int)(Math.random()*10) + 450); 
    next = next + 7;
  }

  x1 = x1 + swoosh; 
  if (x1 > 7 || x1 < -7) 
  {
    swoosh = swoosh * -1;
  }
}
