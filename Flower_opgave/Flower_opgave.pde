Flowers myFlower1;
Flowers myFlower2;
Flowers myFlower3;
Flowers myFlower4;
Flowers myFlower5;
Flowers myFlower6;


  int _petals[]= {4,5,6,7,8};
  int ballX= 200;
  int ballY= 250;
  int colour = (#FFffff);
  float radius[] = {10,20,40,60,120,150};
  int speed[] = {2,4,8,15,250};
void setup() {
  size(1600,1200);
  
  

  myFlower1 = new Flowers(ballX, ballY,int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])),int (random(colour)),int (random(speed[0],speed[4])));
  myFlower2 = new Flowers (ballX, ballY, int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])),int (random(colour)),int (random (speed[0],speed[4])));
  myFlower3 = new Flowers (ballX, ballY,int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])),int (random(colour)),int (random (speed[0],speed[4])));
  myFlower4 = new Flowers (ballX, ballY,int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])), colour,int (random (speed[0],speed[4])));
  myFlower5 = new Flowers (ballX, ballY,int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])), colour,int (random (speed[0],speed[4])));
  myFlower6 = new Flowers (ballX, ballY,int (random(radius[0],radius[5])),int (random(_petals[0],_petals[4])), colour,int (random (speed[0],speed[4])));
}

void draw(){
  background(#43AF76);
  myFlower1.display();
  myFlower1.move();
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.move();
  myFlower2.bounce();
  myFlower3.display();
  myFlower3.move();
  myFlower3.bounce();
    myFlower4.display();
  myFlower4.move();
  myFlower4.bounce();
    myFlower5.display();
  myFlower5.move();
  myFlower5.bounce();
    myFlower6.display();
  myFlower6.move();
  myFlower6.bounce();
}  
 
/*void flower (float r, int n_petals, float x, float y, int petalColor){
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=x + radius[0]*cos(i);
  ballY=y + radius[0]*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}*/
