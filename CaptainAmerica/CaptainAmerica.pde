//Professor N

PFont font;
String topText = "Captain";
String bottomText = "America";

void setup() {
  size(400, 500);
  ellipseMode(CENTER);
  font = createFont("Arial Black", 30, true);
  textFont(font);
  textSize(50);
}

void draw() {
  background(0);
  
  strokeWeight(15);
  stroke(0);
  fill(75);
  for(int x = 0; x <= width+100; x+=100) {
    for(int y = 0; y <= height+50; y += 50) {
      rect(x, y, 100, 50);
    }
  }
  
  //shield
  strokeWeight(25);
  stroke(236, 28, 36);
  fill(255);
  ellipse(200, 250, 225, 225);
  fill(0, 176, 239);
  ellipse(200, 250, 125, 125);
  
  //star on shield
  noStroke();
  fill(255);
  triangle(200, 202, 175, 290, 215, 250);
  triangle(155, 235, 245, 235, 200, 270);
  triangle(155, 235, 225, 290, 210, 235);
  
  //check if in blue center of shield
  float d = dist(mouseX, mouseY, 200, 250);
  if(d <= 125) {
    text(topText, 105, 75);
    text(bottomText, 85, 450);
  }
}