int activeCircles = 5;
int maxCircles = 50000;
int maxVelocity = 10;

float[] xPositions = new float[maxCircles];
float[] yPositions = new float[maxCircles];

float[] xVelocities = new float[maxCircles];
float[] yVelocities = new float[maxCircles];

void setup() {
	size(1000, 1000);

	for (int counter = 0; counter < activeCircles; counter++) {
		xPositions[counter] = random(width);
		yPositions[counter] = random(height);
		xVelocities[counter] = random(-maxVelocity, maxVelocity);
		yVelocities[counter] = random(-maxVelocity, maxVelocity);
	}
}

void split(int index) {
	float x = xPositions[index];
	float y = yPositions[index];

	float xVelocity = xVelocities[index];
	float yVelocity = yVelocities[index];

	if (activeCircles < maxCircles) {
		int newIndex = activeCircles;
		
		xPositions[newIndex] = x + xVelocity;
		yPositions[newIndex] = y + yVelocity;

		int signX = xVelocity < 0 ? -1 : 1;
		int signY = yVelocity < 0 ? -1 : 1;

		xVelocities[newIndex] = random(maxVelocity) * signX;
		yVelocities[newIndex] = random(maxVelocity) * signY;

		activeCircles++;
	}
}

void draw() {
	background(0);
	fill(255);
	noStroke();

	for (int counter = 0; counter < activeCircles; counter++) {
		xPositions[counter] = xPositions[counter] + xVelocities[counter];
		yPositions[counter] = yPositions[counter] + yVelocities[counter];
		
		float x = xPositions[counter];
		float y = yPositions[counter];

		if (x <= 0) {
			xVelocities[counter] = abs(xVelocities[counter]);
			split(counter);
		} else if (x >= width) {
			xVelocities[counter] = -abs(xVelocities[counter]);
			split(counter);
		}

		if (y <= 0) {
			yVelocities[counter] = abs(yVelocities[counter]);
			split(counter);
		} else if (y >= height) {
			yVelocities[counter] = -abs(yVelocities[counter]);
			split(counter);
		}

		circle(x, y, 3);
	}	
}
