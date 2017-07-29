PImage flash;

void setup() {
  size(500, 500);
  flash = loadImage("Flash_Logo.png");
  ellipseMode(CENTER);
  strokeWeight(13);
}

void draw() {
  background(255);
  if(mousePressed) {
    fill(254, 200, 46);
  } else {
    fill(255, 0, 0);
  }
  
  for(int x = 0; x <= width+100; x+=100) {
    for(int y = 0; y <= height+50; y += 50) {
      rect(x, y, 100, 50);
    }
  }
  
  fill(255);
  ellipse(245, 255, 260, 260);
  
  float in = dist(245, 255, mouseX, mouseY);
  if(in <= 130) {
    image(flash, 40, 50);
  }
}
