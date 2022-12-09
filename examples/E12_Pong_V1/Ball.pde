class Ball {
	float x;
	float y;
	float xSpeed;
	float ySpeed;
	float size;

	Ball() {
		size = 12;
	}

	void resetPosition() {
		x = width / 2;
		y = height / 2;
	}

	void randomizeSpeed() {
		xSpeed = random(-2, 2);
		ySpeed = random(-2, 2);
	}

	void move() {
		x += xSpeed;
		y += ySpeed;
	}

	void bounce() {
		if (y <= size / 2) {
			ySpeed = abs(ySpeed);
		} else if (y >= height - size / 2) {
			ySpeed = -abs(ySpeed);
		}
	}

	void checkBounds() {
		if (x <= size / 2 || x >= width - size / 2) {
			resetPosition();
			randomizeSpeed();
		}
	}

	void update() {
		move();
		checkBounds();
		bounce();
	}

	void display() {
		fill(255);

		pushMatrix();
		translate(x, y);
		rect(-size / 2, -size / 2, size, size);
		popMatrix();
	}
}
