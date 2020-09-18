float x = 300;
float y = 400;

void setup() {
  size(594, 841);
  background(255);
  
  frameRate(120);
}

void draw() {
  float size = 10;
  float speed = 20;
  
  fill(61);
  stroke(0);
  
  ellipse(x, y, size, size);
  
  x = x + random(-speed, speed);
  y = y + random(-speed, speed);
  
  if (x > width) {
    x = 0;
  } else if (x < 0) {
    x = width;
  }
  
  if (y > height) {
    y = 0;
  } else if (y < 0) {
    y = height;
  }
}
