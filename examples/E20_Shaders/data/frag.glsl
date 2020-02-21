uniform float greenValue;

in vec4 vertexPosition;

void main() {
	gl_FragColor = vec4(vertexPosition.x, greenValue, vertexPosition.y, 1);
}
