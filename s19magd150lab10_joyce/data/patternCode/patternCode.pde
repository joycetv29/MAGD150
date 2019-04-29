size(100,100);
background(#f0eec8);
noStroke();

//Code for the larger, navy circles.
fill(#0c084c);
ellipse(width/2, height/2, 50, 50);
//Cardinal direction navy circles.
ellipse(width/2, height/2+35, 15, 15);
ellipse(width/2+35, height/2, 15, 15);
ellipse(width/2, height/2-35, 15, 15);
ellipse(width/2-35, height/2, 15, 15);
//Diagonial navy circles.
ellipse(width/2+25, height/2+25, 15, 15);
ellipse(width/2-25, height/2+25, 15, 15);
ellipse(width/2+25, height/2-25, 15, 15);
ellipse(width/2-25, height/2-25, 15, 15);
//Corner navy circles.
ellipse(0, 0, 50, 50);
ellipse(0, 100, 50, 50);
ellipse(100, 0, 50, 50);
ellipse(100, 100, 50, 50);

//Code for the mid-sized regular blue circles.
fill(#096386);
ellipse(width/2, height/2, 30, 30);
//Cardinal direction regular blue circles.
ellipse(width/2, height/2+35, 7, 7);
ellipse(width/2+35, height/2, 7, 7);
ellipse(width/2, height/2-35, 7, 7);
ellipse(width/2-35, height/2, 7, 7);
//Diagonial regular blue circles.
ellipse(width/2+25, height/2+25, 7, 7);
ellipse(width/2-25, height/2+25, 7, 7);
ellipse(width/2+25, height/2-25, 7, 7);
ellipse(width/2-25, height/2-25, 7, 7);
//Corner regular blue circles.
ellipse(0, 0, 30, 30);
ellipse(0, 100, 30, 30);
ellipse(100, 0, 30, 30);
ellipse(100, 100, 30, 30);

//Code for the small teal circles.
fill(#00b7a8);
ellipse(width/2, height/2, 10, 10);
//Cardinal direction regular blue circles.
ellipse(width/2, height/2+35, 3, 3);
ellipse(width/2+35, height/2, 3, 3);
ellipse(width/2, height/2-35, 3, 3);
ellipse(width/2-35, height/2, 3, 3);
//Diagonial teal circles.
ellipse(width/2+25, height/2+25, 3, 3);
ellipse(width/2-25, height/2+25, 3, 3);
ellipse(width/2+25, height/2-25, 3, 3);
ellipse(width/2-25, height/2-25, 3, 3);
//Corner teal circles.
ellipse(0, 0, 10, 10);
ellipse(0, 100, 10, 10);
ellipse(100, 0, 10, 10);
ellipse(100, 100, 10, 10);

save("pattern.png");
