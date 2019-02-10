private int smallestBranch = 5; 
private double branchAngle = .5;  
public void setup() 
{   
	size(650,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);  
  stroke(226, 156,252);
	line(330,480,330,380);   
	drawBranches(330,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{ 
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  stroke(252,156,240);
  line(x,y, endX1, endY1);
  stroke(143,237,252);
  line(x,y, endX2, endY2);
  if(branchLength > smallestBranch){
    stroke(252,156,240);
    drawBranches(endX1, endY1, branchLength, angle1);
    stroke(143,237,252);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
	//your code here    
} 
