private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
private int move = 10;
private int paint = (int)(Math.random()*100)+70;

public void setup() 
{   
  size(600, 600);
} 
public void draw() 
{   
  background(158, 232, 245);   
  stroke(paint);
  line(300, 600, 300, 380);   
  drawBranches(300, 400, 120, 3*Math.PI/2);

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
  ellipse(70 + move, 50, 100, 50);
  ellipse(100 + move, 40, 100, 50);
  ellipse(125 + move, 50, 100, 50);
  ellipse(90 + move, 70, 100, 50);

  if (move < 600) {
    move = move + 2;
  }
  if (move > 599) {
    move = 0;
  }
}

public void cloudTwo()
{
  noStroke();
  fill(255, 255, 255, 150);
  ellipse(270 + move, 100, 100, 50);
  ellipse(320 + move, 90, 100, 50);
  ellipse(325 + move, 100, 100, 50);
  ellipse(290 + move, 120, 100, 50);
}

public void cloudThree()
{
  noStroke();
  fill(255, 255, 255, 150);
  ellipse(470 + move, 50, 100, 50);
  ellipse(500 + move, 40, 100, 50);
  ellipse(525 + move, 50, 100, 50);
  ellipse(490 + move, 70, 100, 50);
}

public void grass()
{
 //do eet later ig 
}
