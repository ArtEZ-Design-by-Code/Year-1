Ball ball;

Paddle enemyPaddle;
Paddle playerPaddle;

void setup() {
	size(640, 480);
	
	ball = new Ball();

	ball.resetPosition();
	ball.randomizeSpeed();

	enemyPaddle = new Paddle(0, height / 2);
	enemyPaddle.x += enemyPaddle.thickness / 2;

	playerPaddle = new Paddle(width, height / 2);
	playerPaddle.x -= playerPaddle.thickness / 2;
}

void draw() {
	background(0);

	ball.update();
	ball.display();

	enemyPaddle.update();
	enemyPaddle.display();

	playerPaddle.update();
	playerPaddle.display();
}
