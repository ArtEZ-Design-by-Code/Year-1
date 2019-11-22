Ball[] bouncyBalls;
int nBouncyBalls = 10;

void setup() {
  size(800, 800);
  
  bouncyBalls = new Ball[nBouncyBalls];
  
  for (int i=0; i<nBouncyBalls; i++) {
    bouncyBalls[i] = new Ball();
  }
}

void draw() {
  background(255);
  
  for (int i=0; i<nBouncyBalls; i++) {
    bouncyBalls[i].update();
    bouncyBalls[i].display();
  }
}

class Ball {
  float x; // field
  float y;
  float speedX;
  float speedY;
  float radius;
  color ballColor;
  
  Ball() {
    this.radius = random(5, 50);
    this.x = random(this.radius, width - this.radius);
    this.y = random(this.radius, height - this.radius);
    this.speedX = random(-2, 2);
    this.speedY = random(-2, 2);
    this.ballColor = color(random(255), random(255), random(255));
  }
  
  void update() { // method
    this.x += speedX;
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
  
  void display() {
    fill(ballColor);
    noStroke();
    
    ellipse(x, y, radius * 2, radius * 2);
  }
}
