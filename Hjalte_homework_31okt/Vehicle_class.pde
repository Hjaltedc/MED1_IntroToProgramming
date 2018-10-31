class Vehicle
{
  
  int vehicleX;
  int vehicleY;
  int vehicleWidth;
  int vehicleHeight;
  
  int backwheelX;
  int backwheelY;
  int backwheelWidth;
  int backwheelHeight;
  
  int frontwheelX;
  int frontwheelY;
  int frontwheelWidth;
  int frontwheelHeight;
  int speed = 20;
  
Vehicle (int tempvehicleX, int tempvehicleY, int tempvehicleWidth, int tempvehicleHeight, 
         int tempbackwheelX, int tempbackwheelY, int tempbackwheelWidth, int tempbackwheelHeight, 
         int tempfrontwheelX, int tempfrontwheelY, int tempfrontwheelWidth, int tempfrontwheelHeight)
{

vehicleX = tempvehicleX;
vehicleY = tempvehicleY;
vehicleWidth = tempvehicleWidth;
vehicleHeight = tempvehicleHeight;
  
backwheelX = tempbackwheelX;
backwheelY = tempbackwheelY;
backwheelWidth = tempbackwheelWidth;
backwheelHeight = tempbackwheelHeight;
  
frontwheelX = tempfrontwheelX;
frontwheelY = tempfrontwheelY;
frontwheelWidth = tempfrontwheelWidth;
frontwheelHeight = tempfrontwheelHeight;


} 
  void display(){
  rect(vehicleX, vehicleY, vehicleWidth, vehicleHeight);
  ellipse(backwheelX, backwheelY,backwheelWidth,backwheelHeight);
  ellipse(frontwheelX, frontwheelY, frontwheelWidth, frontwheelHeight);
  move();
}
  
  void move(){
    if(vehicleX>=width){

backwheelX=backwheelPos;

frontwheelX=frontwheelPos;

vehicleX=vehiclestartPos;
  }
  if(keyPressed)
    {
      if(key == CODED)
      {
        if (keyCode==RIGHT){
    vehicleX += speed;
    backwheelX +=speed;
    frontwheelX +=speed;
    }
    if (keyCode == LEFT){
  vehicleX -= speed;
  backwheelX -= speed;
  frontwheelX -= speed;
  
}
      }
    }
  
}
}
