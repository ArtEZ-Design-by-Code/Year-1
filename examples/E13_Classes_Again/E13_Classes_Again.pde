import com.jogamp.opengl.GLProfile;
{
  GLProfile.initSingleton();
}

ArrayList<Ball> balls;

color[] palette;

color[] generatePalette() {
	color[] p = new color[2];

	colorMode(HSB, 360, 100, 100);

	p[0] = color(
		random(360),
		random(40, 60),
		random(70, 90)
		);

	colorMode(RGB, 255, 255, 255);

	p[1] = color(
		blue(p[0]),
		red(p[0]),
		green(p[0])
	);

	return p;
}

void setup() {
	size(800, 500);

	balls = new ArrayList<>();

	for (int i = 0; i < 20; i++) {
		Ball ball = new Ball(random(width), random(height));
		ball.speed = random(1, 5);

		balls.add(ball);
	}

	palette = generatePalette();
}

void draw() {
	background(palette[0]);

	if (keyPressed) palette = generatePalette();

	////////// FIRST WAY:
	// for (int i = 0; i < balls.size(); i++) {
	// 	Ball ball = balls.get(i);

	// 	ball.update();

	// 	ball.foreground = palette[1];
	// 	ball.display();
	// }

	////////// SECOND WAY:
	// for (Ball ball : balls) {
	// 	ball.update();

	// 	ball.foreground = palette[1];
	// 	ball.display();
	// }

	////////// NICE, BEAUTIFUL, CLEAN, WAY: /// The ancient Greeks would agree. Lambda all the way.
	balls.forEach(ball -> ball.update());
	
	balls.forEach(ball -> {
		ball.foreground = palette[1];
		ball.display();
	});
}
