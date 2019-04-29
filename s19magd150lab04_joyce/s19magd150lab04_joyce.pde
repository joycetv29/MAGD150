  float potato = 1;
  float insertnamehere1 = random(51,449);
  float insertnamehere2 = random(51,449);
  float insertnamehere3 = random(51,449);
  float insertnamehere4 = random(51,449);
  float insertnamehere5 = random(51,449);
  float insertnamehere6 = random(51,449);
  float insertnamehere7 = random(51,449);
  float insertnamehere8 = random(51,449);
  float insertnamehere9 = random(51,449);
  float insertnamehere10 = random(51,449);
  float insertnamehere11 = random(51,449);
  float insertnamehere12 = random(51,449);

void setup(){
  size(510,510);
  background(100);}
  
void draw(){
  fill(100);
  rect(0,0,height,width);
  
  for(int x=50; x > 1; x--){
    fill(32,50,22);  
    ellipse(width/2,height/2,(x*10),(x*10));}
  
  for(int x=50; x > 1; x--){
    colorMode(HSB,360,100,100,100);
    noStroke();
    fill(45,100,100-x);
    ellipse(width/2,height/2,(x*10-50),(x*10-50));}

if (potato == 1) {
   fill(0,100,25);} else {fill(0,100,25);}
    
if (potato == 2) {
  fill(0,100,64);}

if (potato == 3) {
  potato = 1;}

if (mousePressed == true) {
  ellipse(random(51,449), random(51,449), 50, 50);} else {fill(0,100,64);

if (keyPressed == true) {
  ellipse(random(51,449), random(51,449), 50, 50);} else {fill(0,100,64);}
 
  ellipse(insertnamehere1, insertnamehere2, 50, 50);
  ellipse(insertnamehere3, insertnamehere4, 50, 50);
  ellipse(insertnamehere5, insertnamehere6, 50, 50);
  ellipse(insertnamehere7, insertnamehere8, 50, 50);
  ellipse(insertnamehere9, insertnamehere10, 50, 50);
  ellipse(insertnamehere11, insertnamehere12, 50, 50);}}

void mousePressed(){
  potato = potato + 1;}
  
void keyPressed(){
  ellipse(random(51,449), random(51,449), 50, 50);}
