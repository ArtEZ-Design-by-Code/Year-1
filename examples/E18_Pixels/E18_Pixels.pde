PImage earth;

void setup() {
  size(512, 512);
  
  earth = loadImage("earth.jpg");
  earth.resize(width, height);
}

void draw() {
  background(0);
  
  earth.loadPixels();
  
  for (int i = 0; i < earth.pixels.length; i++) {
    int x = i % earth.width;
    int y = floor(i / width);
    
    color pixelColor = earth.pixels[i];
    
    float r = red(pixelColor);
    float g = green(pixelColor);
    float b = blue(pixelColor);
    
    float brightness = brightness(pixelColor);
    
    if (brightness > 128) {
      earth.pixels[i] = color(255);
    } else {
      earth.pixels[i] = color(0);
    }
  }
  
  earth.updatePixels();
  
  image(earth, 0, 0);
}
