int myXPosition = 250;
int myYPosition = 250;

void setup() {
  size(594, 841);
  background(255);
}

void draw() {
  fill(255);
  stroke(0);
  ellipse(myXPosition, myYPosition, 5, 5);
  
  myXPosition += random(-5, 6);
  myYPosition += random(-5, 6);
}

void mousePressed() {
  myXPosition = mouseX;
  myYPosition = mouseY;
}
