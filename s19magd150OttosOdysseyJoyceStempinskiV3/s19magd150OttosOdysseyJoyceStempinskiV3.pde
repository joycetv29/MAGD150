import processing.sound.*;

//the X and Y positions of Otto the Owl, as well as his
//radius and speed.
float owlX = 75, owlY= 25, owlRadius = 15, owlSpeed = 3;
float wallX, wallY, wallWidth = 50, wallHeight;
boolean startGame;
float nextScreen;
PFont titleFont;

SoundFile sound;
mazeWall[] wall;

void setup() { 
  size(750,750);
  noStroke();
  ellipseMode(RADIUS);
  //loading the font.
  titleFont = loadFont("MLingWaiMedium-SC-48.vlw");
  textFont(titleFont);
  //loading the sound.
  sound = new SoundFile(this, "backgroundSound.wav");
  sound.play();
  sound.loop();
  nextScreen = 1; //causes the Start Screen to spawn immediatly.
  frameCount = 0; //resets the timer when the player opts to replay.
  owlX = 75; //this line of code and the next reset the player's
  owlY = 25; //position when they opt to replay the game.
  frameRate(60);
  
  //setting up the array that will later draw the walls
  //of the maze.
  wall = new mazeWall[100];
  //the first number determines the collumn, the second 
  //the begining row, and the third, how many boxes long.
  wall[0] = new mazeWall(0, 0, 15);   // collumn zero
  wall[1] = new mazeWall(1, 14, 1);   // collumn one
  wall[2] = new mazeWall(2, 0, 4);    // collumn two
  wall[3] = new mazeWall(2, 5, 3);
  wall[4] = new mazeWall(2, 9, 4);
  wall[5] = new mazeWall(2, 14, 1);
  wall[6] = new mazeWall(3, 0, 1);    // collumn three
  wall[7] = new mazeWall(3, 2, 2);
  wall[8] = new mazeWall(3, 12, 1);
  wall[9] = new mazeWall(4, 0, 1);    // collumn four
  wall[10] = new mazeWall(4, 2, 2);
  wall[11] = new mazeWall(4, 6, 5);
  wall[12] = new mazeWall(4, 12, 2);            
  wall[13] = new mazeWall(5, 0, 1);   // collumn five
  wall[14] = new mazeWall(5, 5, 3);
  wall[15] = new mazeWall(6, 0, 1);   //collumn six
  wall[16] = new mazeWall(6, 2, 4);
  wall[17] = new mazeWall(6, 9, 6);
  wall[18] = new mazeWall(7, 4, 2);   // collumn seven
  wall[19] = new mazeWall(7, 7, 3);
  wall[20] = new mazeWall(8, 0, 3);   // collumn eight
  wall[21] = new mazeWall(8, 5, 1);
  wall[22] = new mazeWall(8, 7, 3);
  wall[23] = new mazeWall(8, 11, 3);
  wall[24] = new mazeWall(9, 0, 1);   // collumn nine
  wall[25] = new mazeWall(10, 0, 1);  // collumn ten
  wall[26] = new mazeWall(10, 2, 11);
  wall[27] = new mazeWall(10, 14, 1);
  wall[28] = new mazeWall(11, 0, 1);  // collumn eleven
  wall[29] = new mazeWall(11, 2, 1);
  wall[30] = new mazeWall(11, 9, 2);
  wall[31] = new mazeWall(11, 14, 1);
  wall[32] = new mazeWall(12, 0, 1);  // collumn twelve
  wall[33] = new mazeWall(12, 2, 6);
  wall[34] = new mazeWall(12, 10, 1);
  wall[35] = new mazeWall(12, 12, 3);
  wall[36] = new mazeWall(13, 0, 1);  // collumn thirteen
  wall[37] = new mazeWall(13, 7, 2);
  wall[38] = new mazeWall(14, 0, 6);  // collumn fourteen
  wall[39] = new mazeWall(14, 10, 4);
} //END OF VOID SETUP

void draw() {
  background(0);
  fill(255);
  //rect(wallX, wallY, wallWidth, wallHeight);
  for (int i = 0; i < 40; ++i) {
    wall[i].draw();
  } //END OF FOR LOOP
  
  fill(#cccccc);
  ellipse(owlX, owlY, owlRadius, owlRadius);

  //Otto's movement commands.
  if (keyPressed){
    if (key == CODED){
      if (keyCode == UP){
        owlY -= owlSpeed;
      } //END OF KEY UP
      if (keyCode == DOWN){
        owlY += owlSpeed;
      } //END OF KEY DOWN
      if (keyCode == RIGHT){
        owlX += owlSpeed;
      } //END OF KEY RIGHT
      if (keyCode == LEFT){
        owlX -= owlSpeed;
      } //END OF KEY LEFT
    } //END OF KEY CODED
  } //END OF KEY PRESSED
  
  //Otto coliding with mazeWall.
  //if((fakeHP > 0 && owlX >= wallX && owlX <= wallX) && (fakeHP > 0 && owlY >= wallY&& owlY <= wallY)){
  //  fakeHP -= 0;
  //  if (keyPressed){
  //    if (key == CODED){
  //      if (keyCode == UP){
  //        owlY += owlSpeed;
  //      } //END OF KEY UP
  //      if (keyCode == DOWN){
  //        owlY -= owlSpeed;
  //      } //END OF KEY DOWN
  //      if (keyCode == RIGHT){
  //        owlX -= owlSpeed;
  //      } //END OF KEY RIGHT
  //      if (keyCode == LEFT){
  //        owlX += owlSpeed;
  //      } //END OF KEY LEFT
  //    } //END OF KEY CODED
  //  } //END OF KEY PRESSED
  //} //END OF COLLISION (HOPEFULLY)
  
  //DISPLAY FRAME COUNT
  loadFont("MLingWaiMedium-SC-48.vlw");
  fill(#cccccc);
  rect(450, 13, 250, 27);
  fill(0);
  textSize(22);
  text("Timer   " +frameCount/60, 500, 35);
  
  textAlign(CENTER);
  //START/TITLE SCREEN
  if (nextScreen == 1){
    fill(#cccccc);
    noStroke();
    rect(0, 0, 750, 750);
    fill(0);
    textSize(65);
    text("Otto's Odyssey", 375, 375-35);
    textSize(22);
    text("Help Otto the owlet get back to his nest!\nOtto needs your help. Navigate the maze-like forest floor of Otto's home to\nhelp him get back to his nest. Avoid enemies, such as badgers and snakes, to get\nhim to safety by using the arrow keys within 60 seconds, or it's game over!", 375, 375);
    textSize(30);
    text("CLICK TO START GAME", 375, 375+115);
  } //END OF nextSCREEN == 1
  if (nextScreen == 2){
    //REVEAL THE GAME (i.e. nextScreen ==2)
    noFill();
    //TIMED-OUT SCREEN
    if (frameCount >= 60*60){
      fill(#cccccc);
      rect(0, 0, 750, 750);
      fill(0);
      textSize(60);
      text("Game Over!", 365, 375-25);
      textSize(22);
      text("Ran out of time!", 375, 375);
      textSize(30);
      text("Press the enter key to try again.", 375, 375+25);
      if (keyPressed){
        if (key == ENTER){
          setup();
        } //END OF ENTER COMMAND
      } // END OF keyPRESSED 
    } //END OF TIMED-OUT SCREEN
  } //END OF nextSCREEN == 2
} //END OF VOID DRAW

void mouseClicked(){
  nextScreen += 1;
} //END OF MOUSE CLICKED
