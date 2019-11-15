void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  
  rectMode(CENTER);
  
  fill(255);
  stroke(255, 0, 0);
  strokeWeight(2);
  
  pushMatrix();
  translate(width / 2, height / 2);
  
  pushMatrix();
  rotate(radians(frameCount)); // The order of these transformations is important
  line(0, 0, 100, 0);
  ellipse(100, 0, 50, 50);
  popMatrix();
  
  rect(0, 0, 100, 100);
  
  popMatrix();
  
  rect(0, 0, 100, 100);
  
  // resetMatrix(); 
  // Will reset the matrix to the original state
}
