color buttonColor = color(255, 0, 0);

float radius = 100;
float x = 250;
float y = 250;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  float distance = sqrt(pow(mouseX - x, 2) + pow(mouseY - y, 2));
  //float distance = dist(x, y, mouseX, mouseY);
  
  if (distance < radius && mousePressed) {
    buttonColor = color(0, 255, 0);
  } else {
    buttonColor = color(255, 0, 0);
  }
  
  fill(buttonColor);
  noStroke();
  
  translate(x, y);
  ellipse(0, 0, radius * 2, radius * 2);
}
