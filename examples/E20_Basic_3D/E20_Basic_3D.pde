void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(0);
  
  fill(255);
  noStroke();

  translate(width / 2, height / 2, 0);
  rotateY(radians(sin((float) frameCount / 100) * 45));
  
  pointLight(255, 0, 0, 100, 0, 200);
  pointLight(0, 255, 0, -100, 0, 200);
  pointLight(0, 0, 255, 0, 200, 200);
  
  pushMatrix();
  translate(-150, 0, 0);
  rotateX(radians(frameCount));
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(150, 0, 0);
  sphere(100);
  popMatrix();
  
  pushMatrix();
  translate(0, 0, -200);
  rect(-250, -250, 500, 500);
  popMatrix();
}
