void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  
  fill(255);
  stroke(255, 0, 0);
  strokeWeight(2);
  
  translate(width / 2, height / 2);
  rotate(radians(frameCount)); // The order of these transformations is important
  line(0, 0, 100, 0);
  ellipse(100, 0, 50, 50);
}
