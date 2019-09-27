void setup() {
  size(500, 500);
  frameRate(10);
}

void draw() {
  background(255);
  
  fill(
    random(255),
    random(255),
    random(255)
  );
  
  ellipse(
    random(500),
    random(500),
    random(50, 100),
    random(50, 100)
  );
  
  saveFrame("output/###.png");
}
