float x = 300;
float y = 400;

void setup() {
  size(594, 841);
  background(255);
}

void draw() {
  float size = 10;
  float speed = 5;
  
  fill(61);
  stroke(0);
  
  ellipse(x, y, size, size);
  
  x = x + random(-speed, speed);
  y = y + random(-speed, speed);
}
