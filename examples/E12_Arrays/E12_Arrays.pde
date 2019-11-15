String[] answers = {
  "Yes",
  "No",
  "Maybe",
  "Sometime in the future",
  "Perhaps",
  "If all goes well",
  "If you put your mind to it",
  "Not ever",
  "Never",
  "Certainly not",
  "Ask me again"
};

int answerIndex = 0;

void setup() {
  size(800, 800);
}

void keyPressed() {
  if (key == ' ') { // Spacebar
    answerIndex = floor(random(answers.length));
  }
}

void draw() {
  background(255);
  
  fill(0);
  
  translate(width / 2, height / 2);
  ellipse(0, 0, 600, 600);
  
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text(answers[answerIndex], 0, 15);
}
