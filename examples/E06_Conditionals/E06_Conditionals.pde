int myXPosition = 250;
int myYPosition = 250;
int squareSize = 50;

void setup() {
  size(594, 841);
  background(255);
}

void draw() {
  stroke(0, 20);
  fill(random(255), 20);
  rect(myXPosition, myYPosition, squareSize, squareSize);
  
  myXPosition += round(random(-1, 1)) * squareSize;
  myYPosition += round(random(-1, 1)) * squareSize;
  
  if (myXPosition < 0) {
    myXPosition = width;
    squareSize ++;
  } else if (myXPosition > width) {
    myXPosition = 0;
    squareSize --;
  }
  
  if (myYPosition < 0) {
    myYPosition = height;
    squareSize ++;
  } else if (myYPosition > height) {
    myYPosition = 0;
    squareSize --;
  }
}
