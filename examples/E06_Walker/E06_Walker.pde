float x = 250;
float y = 250;

float speed = 5;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  stroke(0, 50);
  noFill();
  
  rectMode(CENTER);
  circle(x, y, 30);
  
  float rX = round(random(-1, 1)) * 15;
  float rY = round(random(-1, 1)) * 15;
  
  x += rX;
  y += rY;
  
  x += width;
  y += height;
  
  x %= width;
  y %= height;
}
