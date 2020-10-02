int seedA;
int seedB;
int seedC;

void settings() {
  size(displayWidth, displayHeight);
}

void setup() {
  seedA = (int) random(Integer.MAX_VALUE);
  seedB = (int) random(Integer.MAX_VALUE);
  seedC = (int) random(Integer.MAX_VALUE);
}

void draw() {
  background(0);
  noStroke();
  
  for(int x = 0; x <= width; x += 50) {
    for(int y = 0; y <= height; y += 50) {
      float zoom = 0.002;
      float speed = 0.010;
      
      noiseSeed(seedA);
      float rotation = noise(zoom * x, zoom * y, speed * frameCount) * TWO_PI;
      
      noiseSeed(seedB);
      float lineSize = noise(zoom * x, zoom * y, speed * frameCount) * 100;
      float opacity = noise(zoom * x, zoom * y, speed * frameCount) * 255;
      float lineWeight = noise(zoom * x, zoom * y, speed * frameCount) * 20;
      
      noiseSeed(seedC);
      float colorInterpolation = noise(zoom * x, zoom * y, speed * frameCount);
      color col = color(
        lerp(255, 0, colorInterpolation),
        lerp(0, 0, colorInterpolation),
        lerp(0, 255, colorInterpolation)
      );
      
      strokeWeight(lineWeight);
      stroke(col, opacity);
      pushMatrix();
      translate(x, y);
      rotate(rotation);
      line(0, 0, lineSize, 0);
      popMatrix();
    }
  }
}
