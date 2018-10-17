class Flowers
{
  
  int xPos;
  int yPos;
  float _radius;
  int numPetals;
  int farver;
  int xSpeed;
  int ySpeed;
  
  Flowers (int tempXpos, int tempYpos, float tempRadius, int tempNumPetals, int tempFarver, int tempSpeed){


xPos = tempXpos;
yPos = tempYpos;
_radius = tempRadius;
numPetals = tempNumPetals;
farver = tempFarver;
xSpeed = tempSpeed;
ySpeed = tempSpeed;
}

void display()
{
  for (float i=0;i<PI*2;i+=2*PI/numPetals) {
    fill (farver);
    ballX=int(xPos + _radius*cos(i));
    ballY=int(yPos + _radius*sin(i));
    ellipse(ballX,ballY,_radius*1.2,_radius*1.2);
  }
  fill(200,0,0);
  ellipse(xPos,yPos,_radius*1.2,_radius*1.2);
}
  
  void move()
  {
    xPos+=xSpeed;
    yPos+=ySpeed;
  }
  
  void bounce()
  {
    if(xPos+_radius > width)
    {
      xSpeed=xSpeed*-1;
    }
    if (xPos < _radius)
    {
      xSpeed = xSpeed*-1;
    }
    if (yPos+_radius > height)
  {
    ySpeed = ySpeed*-1;
  }
  if(yPos <0+_radius)
  {
    ySpeed=ySpeed*-1;
  }
  if (xPos > width)
  {
    background(int(random(256)),int(random(256)),int(random(256)));
  }
}
}
