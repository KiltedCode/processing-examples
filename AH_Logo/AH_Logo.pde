size(500, 500);
int mainR = 3;
int mainG = 255;
int mainB = 3;
int backR = 4;
int backG = 5;
int backB = 4;
int center = width/2;
int eSize = width-10;

background(147, 147, 147);
smooth();
noStroke();
ellipseMode(CENTER);

fill(backR, backG, backB);
ellipse(center, center, eSize, eSize);
eSize -= 40;
fill(mainR, mainG, mainB);
ellipse(center, center, eSize, eSize);
eSize -= 85;
fill(backR, backG, backB);
ellipse(center, center, eSize, eSize);

strokeWeight(30);
stroke(backR, backG, backB);
line(90, 90, 409, 409);
line(90, 409, 409, 90);

noStroke();
fill(mainR, mainG, mainB);
triangle(250, 80, 150, 394, 317, 274);
triangle(84, 200, 417, 200, 250, 322);
triangle(84, 200, 353, 394, 293, 200);

eSize = 30;
fill(backR, backG, backB);
ellipse(center, 217, eSize, eSize);
rect(215, 268, 73, 30);
strokeWeight(10);
stroke(backR, backG, backB);
line(center, 217, center, 275);