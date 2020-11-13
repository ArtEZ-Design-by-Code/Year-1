class BookVisual {
  float x;
  float y;
  float speedX;
  float speedY;
  float radius;
  float hue;
  boolean isHovered;
  
  BookInfo specificBookInfo;
  
  BookVisual(BookInfo inputBookInfo) {
    specificBookInfo = inputBookInfo;
    
    x = random(0, width);
    y = random(0, height);
    speedX = random(-3, 3);
    speedY = random(-3, 3);

    hue = constrain(map(specificBookInfo.rating, 3.5, 4.8, 240, 120), 120, 240);
    radius = constrain(map(specificBookInfo.rating, 3.5, 4.8, 10, 50), 10, 50);
  }
  
  void update() {
    float distanceToMouse = dist(mouseX, mouseY, x, y);
    
    if (distanceToMouse < radius) {
      isHovered = true;
    } else {
      isHovered = false;
    }
    
    x += speedX;
    y += speedY;
    
    if (x < 0 + radius) {
      speedX = abs(speedX);
    } else if (x > width - radius) {
      speedX = abs(speedX) * -1;
    }
    
    if (y < 0 + radius) {
      speedY = abs(speedY);
    } else if (y > height - radius) {
      speedY = abs(speedY) * -1;
    }
  }
  
  void display() {
    if (isHovered) {
      fill(hue, 100, 100);
    } else {
      fill(hue, 100, 60);
    }
    
    stroke(hue, 100, 60);
    ellipse(x, y, radius * 2, radius * 2);
    
    if (isHovered) {
      fill(318, 79, 100);
      textAlign(CENTER);
      
      text(specificBookInfo.title, x - 100, y + radius + 25, 200, 10000);
    }
  }
}
