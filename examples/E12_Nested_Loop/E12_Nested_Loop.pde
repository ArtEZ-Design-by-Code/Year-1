void setup() {
  size(594, 841);
}

void draw() {
  background(255);
  noFill();
  stroke(0);
  
  int margin = 50;
  int spacing = 20;
  
  for (int y=margin; y<height - margin; y+=spacing) {
    for (int x=margin; x<width-margin; x+=spacing) {
      float red = map(x, margin, width - margin, 0, 255); // Map function maps a number from one range to another
      float blue = map(y, margin, height - margin, 0, 255);
      
      fill(red, 0, blue);
      ellipse(x, y, x / 10, y / 10);
    }
  }
}
