Ball ball;

Paddle enemyPaddle;
Paddle playerPaddle;

int playerScore;
int enemyScore;

float maxEnemySpeed = 2;

void setup() {
	size(640, 480);
	
	ball = new Ball();

	ball.resetPosition();
	ball.randomizeSpeed();

	enemyPaddle = new Paddle(0, height / 2);
	enemyPaddle.x += enemyPaddle.thickness / 2;

	enemyPaddle.maxSpeed = 1;

	playerPaddle = new Paddle(width, height / 2);
	playerPaddle.x -= playerPaddle.thickness / 2;

	PFont font = createFont("bit5x3.ttf", 64);
	textFont(font);
	textAlign(CENTER, CENTER);
}

void draw() {
	background(0);

	float enemyDistanceToBallY = ball.y - enemyPaddle.y;
	float enemyDistanceToBallX = abs(ball.x - enemyPaddle.x);
	
	enemyPaddle.ySpeed = enemyDistanceToBallY;
	enemyPaddle.maxSpeed = map(
		enemyDistanceToBallX,
		0,
		width,
		maxEnemySpeed,
		0
	);

	enemyPaddle.update();
	enemyPaddle.display();

	boolean playerMoved = false;
	if (keyPressed) {
		if (key == 'w' || key == 'W') {
			playerPaddle.ySpeed = -3;
			playerMoved = true;
		} else if (key == 's' || key == 'S') {
			playerPaddle.ySpeed = 3;
			playerMoved = true;
		}
	}

	if (!playerMoved) {
		playerPaddle.ySpeed = 0;
	}

	playerPaddle.update();
	playerPaddle.display();


	if (
		ball.bottom() >= playerPaddle.top() &&
		ball.top() <= playerPaddle.bottom()
	) {
		// We are in the range of the player paddle
		if (ball.right() >= playerPaddle.left()) {
			// Collission with player paddle!
			ball.xSpeed = -abs(ball.xSpeed);

			float newYSpeed = map(
				ball.y,
				playerPaddle.top(),
				playerPaddle.bottom(),
				-3,
				3
			);

			ball.ySpeed = newYSpeed;
		}
	}
	
	if (
		ball.bottom() >= enemyPaddle.top() &&
		ball.top() <= enemyPaddle.bottom()
	) {
		// We are in the range of the enemy paddle
		if (ball.left() <= enemyPaddle.right()) {
			// Collission with enemy paddle!
			ball.xSpeed = abs(ball.xSpeed);

			float newYSpeed = map(
				ball.y,
				enemyPaddle.top(),
				enemyPaddle.bottom(),
				-3,
				3
			);

			ball.ySpeed = newYSpeed;
		}
	}

	ball.update();
	int side = ball.checkBounds();

	if (side == -1) {
		playerScore++;
		ball.speed++;
		maxEnemySpeed+=0.2;
	} else if (side == 1) {
		enemyScore++;
		ball.speed--;
		maxEnemySpeed-=0.2;
	}

	maxEnemySpeed = constrain(maxEnemySpeed, 0.5, 3);

	ball.speed = max(ball.speed, 3);

	ball.display();

	pushMatrix();
	translate(width / 2, 0);
	fill(255);
	noStroke();
	for (float y = 8; y < height; y += 32) {
		rect(-4, y, 8, 16);	
	}
	popMatrix();

	pushMatrix();
	text(enemyScore, width / 3, height / 10);
	text(playerScore, width / 3 * 2, height / 10);
	popMatrix();
}
