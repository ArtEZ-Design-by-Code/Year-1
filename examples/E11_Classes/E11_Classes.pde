Ball[] balls = new Ball[50];

void setup() {
	size(640, 480);

	for (int i = 0; i < balls.length; i++) {
		balls[i] = new Ball(
			random(width),
			random(height),
			random(-2, 2),
			random(-2, 2)
			);

		if (i < balls.length / 2) {
			balls[i].theColor = color(255, 0, 0);
		} else {
			balls[i].theColor = color(0, 0, 255);
		}
	}
}

void draw() {
	background(0);

	for (int i = 0; i < balls.length; i++) {
		balls[i].update();
		balls[i].display();
	}
}
