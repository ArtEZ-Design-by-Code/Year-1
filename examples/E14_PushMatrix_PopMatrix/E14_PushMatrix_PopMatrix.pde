void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  noStroke();

  fill(0, 255, 0);
  rect(0, 0, 200, 200);

  pushMatrix();
  translate(width / 2, height / 2);

  fill(0, 255, 255);
  rect(0, 0, 200, 200);

  pushMatrix();
  rotate(radians(45));
  fill(255, 0, 255);
  rect(0, 0, 50, 50);

  pushMatrix();
  translate(-100, 0);
  fill(255, 255, 0);
  rect(0, 0, 50, 50);

  popMatrix();
  fill(0, 0, 255);
  rect(0, 0, 10, 10);
  
  popMatrix();
  fill(0, 0, 255);
  rect(0, 0, 10, 10);
  
  popMatrix();
  fill(0, 0, 255);
  rect(0, 0, 100, 100);
  
  translate(250, 250);
  resetMatrix();

  fill(255, 0, 0);
  rect(0, 0, 10, 10);
}
