void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  
  noFill();
  strokeWeight(2);
  stroke(0, 0, 0, 10);
  
  //translate(width / 2, height / 2);
  //rotate(radians(45));
  //rect(0, 0, 200, 200);
  //rect(width / 2, 0, 200, 200);
  //fill(255, 0, 255);
  //translate(0, -100);
  //rect(width / 2, 0, 200, 200);
  //fill(0, 0, 255);
  //rect(width / 2 + 100, 0, 200, 200);
  
  //translate(width / 2, 0);
  //rotate(radians(45));
  //rect(0, 0, 200, 200);
  
  //translate(, 0);
  //rotate(radians(45));
  //rect(width / 2, 0, 200, 200);
 
  translate(width / 2, height / 2);
  rotate(radians(frameCount));
  scale(sin((float) frameCount / 100) + 1);
  rectMode(CENTER);
  rect(0, 0, 200, 200);
}
