Ball ball;

void setup() {
	size(640, 480);
	
	ball = new Ball();

	ball.resetPosition();
	ball.randomizeSpeed();
}

void draw() {
	background(0);

	ball.update();
	ball.display();
}
