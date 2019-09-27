import processing.pdf.*;

void setup() {
  size(594, 841);
}

void draw() {
  beginRecord(PDF, "output.pdf");
  
  background(255);
  
  fill(255, 0, 0);
  noStroke();
  
  ellipse(297, 420, 500, 500);
  
  endRecord();
  save("output.png");
  exit(); 
}
