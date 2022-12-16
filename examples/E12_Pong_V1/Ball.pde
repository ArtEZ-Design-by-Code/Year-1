class Ball {
	float x;
	float y;
	float xSpeed;
	float ySpeed;
	float size;
	float speed;

	Ball() {
		size = 16;
		speed = 3;
	}

	void resetPosition() {
		x = width / 2;
		y = height / 2;
	}

	void randomizeSpeed() {
		xSpeed = random(-3, 3);
		ySpeed = random(-3, 3);
	}

	void move() {
		x += xSpeed;
		y += ySpeed;
	}

	void bounce() {
		if (top() <= 0) {
			ySpeed = abs(ySpeed);
		} else if (bottom() >= height) {
			ySpeed = -abs(ySpeed);
		}
	}

	int checkBounds() {
		if (left() <= 0) {
			resetPosition();
			randomizeSpeed();

			return -1;
		} else if (right() >= width) {
			resetPosition();
			randomizeSpeed();

			return 1;
		}

		return 0;
	}

	void normalizeSpeed() {
		float lengthOfSpeedVector = sqrt(
			pow(xSpeed, 2) + pow(ySpeed, 2)
		);

		xSpeed /= lengthOfSpeedVector;
		ySpeed /= lengthOfSpeedVector;

		xSpeed *= speed;
		ySpeed *= speed;
	}

	void update() {
		normalizeSpeed();
		move();
		bounce();
	}

	void display() {
		fill(255);
		noStroke();
		rect(left(), top(), size, size);
	}

	float top() {
		return y - size / 2;
	}

	float bottom() {
		return y + size / 2;
	}

	float left() {
		return x - size / 2;
	}

	float right() {
		return x + size / 2;
	}
}
