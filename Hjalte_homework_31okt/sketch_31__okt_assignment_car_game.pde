Vehicle Fiat;

int vehicle[] = {30,300,100,55};


int backwheel[] = {50,355,25,25};


int frontwheel[] = {110,355,25,25};

int vehiclestartPos=0; //vehicle
int backwheelPos=20;
int frontwheelPos=70;

int roadX=0;
int roadY=375;
int proadX=1000;
int proadY=375;

int sunX=56;
int sunY=56;
int psunX=100;
int psunY=100;

int sunstartPos=0;

int grassX=0;
int grassY=375;
int pgrassX=1000;
int pgrassY=300;

//For future work: makes the clouds into arrays
int leftleftcloudX=400;
int leftleftcloudY=80;
int leftrightcloudX=450;
int leftrightcloudY=80;
int lefttopcloudX=425;
int lefttopcloudY=40;


int rightleftcloudX=650;
int rightleftcloudY=80;
int rightrightcloudX=700;
int rightrightcloudY=80;
int righttopcloudX=675;
int righttopcloudY=40;

int cloudsize=80;

int xrandomPos=(int)random(width);
int drop=0;

int counter=0;

boolean defeat= false;


void setup(){
size(1000,600);
Fiat = new Vehicle(vehicle[0],vehicle[1], vehicle[2], vehicle[3], backwheel[0], backwheel[1], backwheel[2], backwheel[3], frontwheel[0], frontwheel[1], frontwheel[2], frontwheel[3]);
}

void draw(){
  
stroke(8);

background(#27AEF0); //background color

fill(#1B0CAA); //rec color

Fiat.display();

if(vehicle[0]>=width){

backwheel[0]=backwheelPos;

frontwheel[0]=frontwheelPos;

vehicle[0]=vehiclestartPos;


}
else {
//vehicleX= vehicleX +7;
}

if(sunX>=width){

sunX=sunstartPos;
}



fill(#0AC44C);
rect(grassX,grassY,pgrassX,pgrassY); //the green grass


stroke(#B2B2B2);
strokeWeight(14);
line(roadX,roadY,proadX,proadY); //The road
noStroke();

stroke(8);


sunX= sunX +1;
//making the things move

fill(#D7EA0C);
ellipse(sunX, sunY, psunX, psunY); //the sun

fill(#FFFFFF);
ellipse(leftleftcloudX,leftleftcloudY, cloudsize,cloudsize); //left side, left cloud
ellipse(leftrightcloudX,leftrightcloudY,cloudsize,cloudsize); //left side, right cloud
ellipse(lefttopcloudX,lefttopcloudY,cloudsize,cloudsize); //left side, top cloud
//three circles, forming a cloud

ellipse(rightleftcloudX,rightleftcloudY,cloudsize,cloudsize); //left side, left cloud
ellipse(rightrightcloudX,rightrightcloudY,cloudsize,cloudsize); //left side, right cloud
ellipse(righttopcloudX,righttopcloudY,cloudsize,cloudsize); //left side, top cloud
//three circles, forming the second cloud

ellipse(xrandomPos,drop , 20,20);
drop+=3;

textSize(40);
text(counter,10,50);

if(drop==375){
  text("GAME OVER",350,300);
  defeat=true;
  
}


if(drop==375) //&& defeat==false) {
{  drop=0;
  xrandomPos=(int)random(width);
}

if (drop==vehicle[1] && vehicle[0] <= xrandomPos){

    
counter++;
println(counter);
}
if (drop==vehicle[0] && drop==vehicle[2]) {
  drop=xrandomPos;
}


}

void keyPressed(){
  if (keyCode==RIGHT){
    vehicle[0] += 40;
    backwheel[0] +=40;
    frontwheel[0] +=40;
}
if (keyCode == LEFT){
  vehicle[0] -= 40;
  backwheel[0] -= 40;
  frontwheel[0] -= 40;
 
}
}
