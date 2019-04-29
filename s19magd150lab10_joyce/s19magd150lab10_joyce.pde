PImage img;

void setup(){
  size(500, 500, P3D);
  noStroke();
  textureWrap(REPEAT);
  img = loadImage("pattern.png");
}

void draw(){
  background(200);
  directionalLight(255, 250, 240, 0, 0, -10);
  ambientLight(105, 105, 105, width/2, height/2, -10);
  camera(mouseX, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2, height/2.0, 0, 0, 1, 0);
  
  //This is the code for the Sphere...
  pushMatrix();
  translate(width/2, height/2-75); 
  fill(255, 87, 51);
  sphere(75);
  popMatrix();

  //This is the code for the Cube on the right...
  pushMatrix();
  translate(width/2+100, height/2+75);
  rotateY(0.35);
  rotateX(0.35);
  beginShape();
  texture(img);
  vertex(-75, -75, 0, 0, 0);
  vertex(75, -75, 75, 300, 0);
  vertex(75, 75, 0, 300, 300);
  vertex(-75, 75, 75, 0, 300);
  endShape();
  popMatrix();

  //This is the code for the Cube on the left...
  pushMatrix();
  translate(width/2-100, height/2+75);
  rotateY(-0.35);
  rotateX(-0.35);
  fill(51, 112, 255);
  box(100);
  popMatrix();
}
