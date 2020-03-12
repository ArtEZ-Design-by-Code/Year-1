int[] inputSequence = {0, 0, 0, 0};
int[] checkSequence = {1, 2, 3, 4};

boolean inputWasCorrect = false;

void setup() {
  size(500, 500);
}

void draw() {
  inputWasCorrect = check(inputSequence, checkSequence);
  
  if (inputWasCorrect) {
    background(0, 255, 0);
  } else {
    background(255, 0, 0);
  }
  
  println(inputSequence[0], inputSequence[1], inputSequence[2], inputSequence[3]);
}

void keyPressed() {
  for (int i=0; i<inputSequence.length - 1; i++) {
    inputSequence[i] = inputSequence[i + 1];  
  }
  
  inputSequence[inputSequence.length - 1] = (int) key - 48;
}

boolean check(int[] a, int[] b) {  
  for (int i=0; i<inputSequence.length; i++) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  
  return true;
}
