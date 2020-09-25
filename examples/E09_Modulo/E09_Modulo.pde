int x = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  fill(255);
  stroke(0);
  
  ellipse(x, height / 2, 50, 50);
  
  x += 3;
  x %= width;
}
