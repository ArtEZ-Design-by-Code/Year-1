class Ball {
	PVector position;
	PVector velocity;

	float w, h;

	float speed;
	color foreground;

	boolean didBounce;

	Ball(float x, float y) {
		position = new PVector(x, y);

		speed = 2;
		velocity = new PVector(
			random(-1, 1),
			random(-1, 1)
			);
		
		velocity.normalize();
		velocity.mult(speed);

		foreground = color(255, 0, 0);
		w = 50;
		h = 28;
	}

	void bounce() {
		if (position.x >= width - w / 2) {
			velocity.x = -abs(velocity.x);
			didBounce = true;
		} else if (position.x <= w / 2) {
			velocity.x = abs(velocity.x);
			didBounce = true;
		}

		if (position.y >= height - h / 2) {
			velocity.y = -abs(velocity.y);
			didBounce = true;
		} else if (position.y <= h / 2) {
			velocity.y = abs(velocity.y);
			didBounce = true;
		}
	}

	void move() {
		position.add(velocity);
	}

	void update() {
		didBounce = false;

		move();
		bounce();
	}

	void display() {
		pushMatrix();
		translate(position.x, position.y);
		fill(foreground);
		noStroke();
		ellipse(0, 0, w, h);
		popMatrix();
	}
}
