void setup() {
  size(1920, 1080);
}

void draw() {
  background(0);
  
  loadPixels();
  
  for (int i=0; i < pixels.length; i++) {
    float x = i % width;
    float y = floor(i / width);
    
    float red = map(x, 0, width - 1, 0, 255);
    float blue = map(y, 0, height - 1, 0, 255);
    
    // or:
    //float blue = y > height / 2 ? 255 : 0; // Remember the Ternary operator?
    
    pixels[i] = color(red, 0, blue);
  }
  
  updatePixels();
  
  surface.setTitle(frameRate + "fps"); // This should only run at about 15 fps. (MacBook Pro 15" 2015)
}
