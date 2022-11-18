String[] answers = {
	"Yes",
	"No",
	"Maybe",
	"Perhaps",
	"Definitely",
	"Forget it",
	"Absolutely",
	"Not in your lifetime",
	"Hell yes",
	"Not likely",
	"Eventually",
	"Never",
	"Slayyyyy",
	"Yaaaaaaaass queen"
};

int index;
boolean randomize = true;

void setup() {
	size(800, 800, P3D);
	textFont(createFont("Courier New-Bold", 50));
	textLeading(60);
}

void keyPressed() {
	randomize = !randomize;
}

void draw() {
	background(75, 0, 130);

	pointLight(255, 255, 255, mouseX, mouseY, 350);

	if (randomize) {
		index = floor(random(0, answers.length));
	}

	hint(ENABLE_DEPTH_TEST);

	pushMatrix();
	translate(width / 2, height / 2);
	fill(50);
	noStroke();
	sphere(250);

	hint(DISABLE_DEPTH_TEST);

	fill(255);
	circle(0, 0, 400);

	fill(0);
	textAlign(CENTER, CENTER);

	text(answers[index].toUpperCase(), -200, -200, 400, 400);
	popMatrix();
}
