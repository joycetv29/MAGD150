class mazeWall{
  //the x and y positions of the upper left hand corner of the rectangle,
  //as well as the height of the rectangle.
  float wallX, wallY, wallHeight;
  
  mazeWall(float x, float y, float h){
    wallX = x;
    wallY = y;
    wallHeight = h;
  } //END OF mazeWALL FLOATS
  
  void draw(){
    //the x, y, width (which stays consistantly at 50), and height of the
    //rectangles that make up the maze wall. These are to be manipulated in
    //the main tab via the mazeWall array
    rect(wallX*50, wallY*50, 50, wallHeight*50);
  
    if((owlX >= wallX - 15 && owlX <= wallX + 15) && (owlY >= wallX - 15 && owlY <= wallX +15)){
      if (keyPressed){
        if (key == CODED){
          if (keyCode == UP){
            owlY += owlSpeed;
          } //END OF KEY UP
          if (keyCode == DOWN){
            owlY -= owlSpeed;
          } //END OF KEY DOWN
          if (keyCode == RIGHT){
            owlX -= owlSpeed;
          } //END OF KEY RIGHT
          if (keyCode == LEFT){
            owlX += owlSpeed;
          } //END OF KEY LEFT
        } //END OF KEY CODED
      } //END OF KEY PRESSED
    } //END OF COLLISION (HOPEFULLY)
  } //END OF VOID DRAW
} //END OF CLASS mazeWALL
