class Ball {
  float x; // field
  float y;
  float speedX;
  float speedY;
  float radius;
  color ballColor;
  String name;
  
  Ball(String inputName, float inputRadius, color inputBallColor) {
    this.radius = inputRadius;
    this.name = inputName;
    this.x = random(this.radius, width - this.radius);
    this.y = random(this.radius, height - this.radius);
    this.speedX = random(-2, 2);
    this.speedY = random(-2, 2);
    this.ballColor = inputBallColor;
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
    
    fill(0);
    textAlign(CENTER);
    text(this.name, this.x, this.y + radius + 20);
  }
}
