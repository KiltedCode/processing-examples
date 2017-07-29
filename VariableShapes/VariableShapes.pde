size(500, 500);
smooth();
int xVal = 110;
int yVal = 80;
int changeVal = 200;
int shapeSize = 100;
int colorVal = 200;

background(100);
strokeWeight(6);
ellipseMode(CORNER);

stroke(10, 10, colorVal);
ellipse(xVal, yVal, shapeSize, shapeSize);
stroke(colorVal, 5, 10);
rect(xVal+changeVal, yVal, shapeSize, shapeSize);
stroke(255);
fill(colorVal, 5, 10);
triangle(xVal, yVal+changeVal, xVal+shapeSize, yVal+changeVal, xVal+shapeSize/2, yVal+changeVal+shapeSize);
fill(10, 10, colorVal);
arc(xVal+changeVal, yVal+changeVal, shapeSize, shapeSize, 0, PI+QUARTER_PI);
