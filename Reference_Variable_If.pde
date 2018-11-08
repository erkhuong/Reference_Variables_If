// add your Reference_Variable_If code here
int oneFishX= 300;
int oneFishY= 200;
int FishbounceX= 3;
int FishbounceY= 3;
float linestart= 1.01;
int linehelp= 0;



void setup (){
  size(400,300);
  noStroke();
  fill(195,180,130);
  quad(0,260,0,300,400,300,400,260); 
}

void draw() {
  frameRate(4160);
  background(0,0,200);
  fill(195,180,130);
  quad(0,260,0,300,400,300,400,260); 
  fill(255,165,0);
  rect(oneFishX,oneFishY,20,10);
 oneFishX = oneFishX+FishbounceX;
 oneFishY = oneFishY+FishbounceY;

if(oneFishX>380 || oneFishX<0){
  FishbounceX=FishbounceX*(-1);
}
if(oneFishY>250 || oneFishY<0){
  FishbounceY=FishbounceY*(-1);
}
  stroke(0);
  line(linehelp+mouseX*linestart,0,mouseX,mouseY);
  noStroke();
  fill(255,255,255);
  ellipse(mouseX,mouseY,10,10);
  fill(255,0,0);
  rect(mouseX-5,mouseY-2.5,10,5);
  if(mouseX<190 && mouseX>70){
  linestart=1.2;}else{ linestart=1.6;
}
if(mouseX>=190 && mouseX<=210){
  linestart=1.00000000001;}
   if(mouseX>210){
  linestart=0.8;}
if(mouseX<30){
  linehelp=15;
}else{linehelp= 0;}
}
