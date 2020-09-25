void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  noFill();
  stroke(0);
  
  int margin = 50;
  int spacing = 20;
  
  for (int i=margin; i<width-margin; i+=spacing) {
    ellipse(i, height / 2, 10, 10);
  }
}
