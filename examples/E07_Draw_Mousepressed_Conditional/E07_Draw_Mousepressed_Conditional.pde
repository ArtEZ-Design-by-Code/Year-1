float size = 0;

void setup() {
  size(500, 500);
  background(255);
  frameRate(240);
}

void draw() {
  if (mousePressed == true) {
    fill(0, 10);
    noStroke();
    ellipse(mouseX, mouseY, size, size);

    size += 0.2;
  } else {
    size = 0;
  }
}
