void setup() {
  size(594, 841);
}

void draw() {
  stroke(255);
  fill(mouseY / 3, mouseY / 3, mouseY / 3);
  
  ellipse(mouseX, mouseY, 50, 50);
  ellipse(width - mouseX, mouseY, 50, 50);
}
