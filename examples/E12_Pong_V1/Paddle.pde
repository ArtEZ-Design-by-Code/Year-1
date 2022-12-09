class Paddle {
	float x;
	float y;
	float ySpeed;
	float thickness;
	float length;
	float maxSpeed;

	Paddle(float x, float y) {
		this.x = x;
		this.y = y;
		
		thickness = 16;
		length = 64;
		maxSpeed = 3;
	}

	void move() {
		ySpeed = constrain(ySpeed, -maxSpeed, maxSpeed);

		y += ySpeed;

		y = constrain(y, length / 2, height - length / 2);
	}

	void update() {
		move();
	}

	void display() {
		fill(255);
		noStroke();
		rect(left(), top(), thickness, length);
	}

	float top() {
		return y - length / 2;
	}

	float bottom() {
		return y + length / 2;
	}

	float left() {
		return x - thickness / 2;
	}

	float right() {
		return x + thickness / 2;
	}
}
