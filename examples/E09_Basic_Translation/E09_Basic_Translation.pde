void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  
  fill(255);
  
  translate(width / 2, height / 2);
  ellipse(50, 0, 50, 50);
  ellipse(-50, 0, 50, 50);
}
