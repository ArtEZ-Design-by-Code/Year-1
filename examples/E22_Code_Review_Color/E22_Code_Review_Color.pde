void setup() {
  colorMode(HSB, 360, 100, 100);
  
  color myColor = color(155, 50, 100);
  
  colorMode(RGB, 255, 255, 255);
  
  color myColor2 = color(red(myColor), 0, blue(myColor));
  
  background(myColor2);
}
