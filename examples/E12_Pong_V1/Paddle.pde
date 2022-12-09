class Paddle {
	float x;
	float y;
	float ySpeed;
	float thickness;
	float length;

	Paddle(float x, float y) {
		this.x = x;
		this.y = y;
		
		thickness = 16;
		length = 64;
	}

	void move() {
		y += ySpeed;
	}

	void update() {
		move();
	}

	void display() {
		fill(255);
		noStroke();

		pushMatrix();
		translate(x, y);
		rect(-thickness / 2, -length / 2, thickness, length);
		popMatrix();
	}
}
