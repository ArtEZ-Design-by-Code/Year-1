PShader myShader;

void setup() {
	size(1920, 1080, P2D);

	myShader = loadShader("frag.glsl", "vert.glsl");
}

void draw() {
	background(0);

	shader(myShader);
	myShader.set("greenValue", (float) mouseX / width);

	beginShape();
	vertex(10, 10);
	vertex(width - 10, 10);
	vertex(width - 10, height - 10);
	vertex(10, height - 10);
	endShape();

	surface.setTitle(frameRate + "fps");
}
