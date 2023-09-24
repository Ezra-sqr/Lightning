int startX =0;
int startY=150;
int endX=0;
int endY=150;
boolean backwards = false;
void setup()
{
  size(500,500);
  strokeWeight (10);
  background (0);
  frameRate (50);
}
void draw()
{
  noStroke();
  fill(0,0,0,40);
  rect (0,0,500,500);
 int randColor= (int)(150*Math.random())+20;
stroke (randColor,0,255-randColor);
if (endX<500 && backwards==false){
endX= startX+(int)(Math.random()*10);
endY= startY+(int)(Math.random()*20-10);
line (startX,startY,endX,endY);
startX=endX;
startY=endY;
if (endX>=500){
  backwards = true;
}

}
if (endX>=0 && backwards==true){
  endX= startX-(int)(Math.random()*10);
endY= startY+(int)(Math.random()*20-10);
line (startX,startY,endX,endY);
startX=endX;
startY=endY;
if (endX<=0){
  backwards = false;}
}
if (startY<0){
 startY = 0; 
}
if (startY>500){
 startY = 500; 
}
}

void mousePressed(){
  if (backwards==true)
  backwards=false;
else 
backwards=true;
}
