PFont font;
PImage creeper;
PImage boom;
int left = 322;
int top = 100;
int right = 509;
int bottom = 500;
int blockSize = 50;
String hiss = "SSssssssss";

void setup() {
  size(800, 600);
  font = createFont("Arial", 20, true);
  textFont(font);
  textSize(50);
  creeper = loadImage("creeper.png");
  boom = loadImage("explosion.jpg");
}

void draw() {
  background(133, 177, 238);
  
  stroke(0);
  strokeWeight(1);
  fill(119, 84, 56);
  for(int y = 350; y <= height; y = y + blockSize) {
    for(int x = 0; x <= width; x = x + blockSize) {
      rect(x, y, blockSize, blockSize);
    }
  }
  
  stroke(105, 143, 70);
  strokeWeight(7);
  line(0, 345, width, 350);
  
  image(creeper, 290, 100, 219, 400);
  
  if( (mouseX > left) && (mouseX < right) && (mouseY > top) && (mouseY < bottom) ) {
    if(mousePressed) {
      image(boom, 0, 0, width, height);
    } else {
      fill(0);
      text(hiss, 265, 80);
    }
  }
  
  
}
