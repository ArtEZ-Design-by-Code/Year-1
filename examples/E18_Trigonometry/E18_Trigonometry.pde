float radius = 120;
int sides = 120;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  
  translate(width / 2, height / 2);
  
  beginShape();
  
  float spiralRadius = radius;
  float interval = 360 / sides;
  int nRotations = 10;
  
  for (float angle = 0; angle < 360 * nRotations; angle += interval) {
    
    float angleRad = radians(angle);
    
    float x = cos(angleRad) * spiralRadius + noise(angleRad, 0) * 100;
    float y = -1 * sin(angleRad) * spiralRadius+ noise(0, angleRad) * 100;
    
    vertex(x, y);
    
    spiralRadius += angle / 10000;
  }
  
  endShape();
}
