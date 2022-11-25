class Ball {
	float x;
	float y;
	float xSpeed;
	float ySpeed;
	color theColor;

	Ball(float startX, float startY, float startSpeedX, float startSpeedY) {
		x = startX;
		y = startY;
		xSpeed = startSpeedX;
		ySpeed = startSpeedY;
		theColor = color(255, 255, 255);
	}

	void move() {
		x += xSpeed;
		y += ySpeed;
	}
	
	void update() {
		move();
	}

	void display() {
		fill(theColor);
		noStroke();
		rectMode(CENTER);
		rect(x, y, 20, 20);
		rectMode(CORNER);
	}
}
