Ball[] marbles;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  
  marbles = new Ball[500];
  
  for (int i = 0; i < marbles.length; i++) {
    marbles[i] = new Ball();
  }
}

void draw() {
  background(0, 0, 100);
  
  marbles[200].foreground = color(0);
  
  for (int i = 0; i < marbles.length; i++) {
    marbles[i].update();
    marbles[i].display();
  }
}
