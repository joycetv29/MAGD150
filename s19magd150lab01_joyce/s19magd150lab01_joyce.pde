size(128,128);
background(75);
noStroke();
//noFill();

//*****STARS*****
ellipse(10, 10, 3, 3);
ellipse(15, 24, 3, 3);
ellipse(24, 5, 3, 3);
ellipse(35, 15, 3, 3);
ellipse(36, 29, 3, 3);
ellipse(52, 19, 3, 3);
ellipse(68, 9, 3, 3);
ellipse(72, 20, 3, 3);
ellipse(89, 25, 3, 3);
ellipse(92, 9, 3, 3);
ellipse(110, 10, 3, 3);
ellipse(129, 7, 3, 3);
ellipse(115, 25, 3, 3);

//*****TELEPHONE LINES*****
//Telephone line bumpy thingies
stroke(0);
strokeWeight(4);
point(0,18);
point(128, 20);
point(0, 9);
point(128, 4);

//Telephone lines
strokeWeight(1);
line(0, 18, 128, 20);
line(0, 9, 128, 4);

//*****BUILDINGS*****
//Building shapes
fill(175);
rect(0, 50, 50, 78);
rect(60, 25, 50, 103);
rect(120, 75, 50, 53);

//Building windows (leftmost building)
rectMode(CENTER);
fill(220);
rect(15, 70, 15, 15);
rect(35, 70, 15, 15);
rect(15, 90, 15, 15);
rect(35, 90, 15, 15);
rect(15, 110, 15, 15);
rect(35, 110, 15, 15);
rect(15, 130, 15, 15);
rect(35, 130, 15, 15);

//Building windows (middle building)
rect(75, 45, 15, 15);
rect(95, 45, 15, 15);
rect(75, 65, 15, 15);
rect(95, 65, 15, 15);
rect(75, 85, 15, 15);
rect(95, 85, 15, 15);
rect(75, 105, 15, 15);
rect(95, 105, 15, 15);
rect(75, 125, 15, 15);
rect(95, 125, 15, 15);
