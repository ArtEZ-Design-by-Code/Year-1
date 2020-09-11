import processing.pdf.*;

//////////////////////////////////////
/// Press a key to output a frame! ///
//////////////////////////////////////

void yourPosterCode() {
  // Your code goes here.
  // For example:
  
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
  fill(random(255), random(255), random(255));
  ellipse(random(594), random(841), 200, 200);
}

////////////////////////////////////////////
/// Check below if you're interested :-) ///
////////////////////////////////////////////

boolean record = false;

void keyPressed() {
  record = true;
}

String filename = "output-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second();

void setup() {
  size(594, 841);
  
  background(255);
  
  beginRecord(PDF, "output/PDF/" + filename + ".pdf");
}

void draw() {
  yourPosterCode();
  
  if (record) endRecord();
  if (record) save("output/PNG/" + filename + ".png");
  
  record = false;
}
