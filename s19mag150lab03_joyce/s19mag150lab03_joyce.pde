float deltaMouseX;
float deltaMouseY;

void setup(){
  size(500,500);
  frameRate(60);
  width = 100/2-5+5;
  height = 25*2-5+5;}

void draw(){
  float potatoone=map(mouseX, 0, width*10, 0, 255); min(500, 500);
  float potatotwo=map(mouseY, 0, height*10, 0, 255); max(500, 500);
  float potatothree=map(mouseY, height*10, 0, 0, 255);
  background(204);
  colorMode(RGB);
  fill(potatoone, potatotwo, potatothree);
  ellipse(pmouseX, pmouseY, potatoone+potatotwo/2, potatoone+potatotwo/2);
  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;
  
  println(mouseX + " ; " + pmouseX);
  println(mouseY + " ; " + pmouseY);
  println(frameCount);}
