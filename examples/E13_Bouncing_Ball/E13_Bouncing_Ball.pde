float x = 100;
float y = 200;
float speedX = 10;
float speedY = .5;
float radius = 10;

void setup() {
  size(250, 250);
}

void draw() {
  background(255);
  fill(0);
  
  ellipse(x, y, radius * 2, radius * 2);
  
  x += speedX;
  y += speedY;
  
  if (x >= width - radius) {
    speedX = abs(speedX) * -1;
  } else if (x <= radius) {
    speedX = abs(speedX);
  }
  
  if (y >= height - radius) {
    speedY = abs(speedY) * -1;
  } else if (y <= radius) {
    speedY = abs(speedY);
  }
}
