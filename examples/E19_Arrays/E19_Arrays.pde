String[] answers = new String[8];
int answerIndex = 0;

void setup() {
  size(1000, 1000);
  
  answers[0] = "Yes";
  answers[1] = "No";
  answers[2] = "Maybe";
  answers[3] = "Perhaps";
  answers[4] = "Hopefully";
  answers[5] = "If the stars are aligned";
  answers[6] = "My sources say no";
  answers[7] = "My sources say yes";
}

void mousePressed() {
  answerIndex = floor(random(answers.length));
}

void draw() {
  background(255);
  
  translate(width / 2, height / 2);
  fill(0);
  noStroke();
  
  ellipse(0, 0, 800, 800);
  
  fill(255);
  textSize(50);
  textAlign(CENTER);
  text(answers[answerIndex], 0, 0, 500);
}
