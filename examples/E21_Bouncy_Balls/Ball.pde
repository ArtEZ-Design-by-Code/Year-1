class Ball {
  float speedX;
  float speedY;
  
  float x;
  float y;
  
  float radius;
  color foreground;
  
  Ball() {
    x = random(width);
    y = random(height);
    
    speedX = random(-2, 2);
    speedY = random(-2, 2);
    
    radius = random(5, 25);
    
    foreground = color(random(360), 85, 100);
  }
  
  void update() {
    x += speedX;
    y += speedY;
    
    if (x < radius) {
      speedX = abs(speedX);
    } else if (x > width - radius) {
      speedX = abs(speedX) * -1;
    }
    
    if (y < radius) {
      speedY = abs(speedY);
    } else if (y > height - radius) {
      speedY = abs(speedY) * -1;
    }
  }
  
  void display() {
    fill(foreground);
    noStroke();
    ellipse(x, y, radius * 2, radius * 2);
  }
}
