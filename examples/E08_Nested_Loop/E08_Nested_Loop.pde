void setup() {
  size(1000, 500);
  frameRate(1);
}

void draw() {
  background(0);

  fill(255);
  stroke(255, 0, 0);

  for (int y = 0; y < height; y += 25) {
    for (int x = 0; x < width; x += 25) {
      ellipse(x, y, 50, 50);
    }
  }
}
