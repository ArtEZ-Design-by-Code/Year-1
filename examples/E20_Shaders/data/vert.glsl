uniform mat4 transform; // Same for every vertex
in vec4 position; // Different for every vertex

out vec4 vertexPosition;

void main() {
	vec4 transformed = transform * position;

	vertexPosition = vec4(transformed.x / 2 + 0.5, transformed.y * -1 / 2 + 0.5, 1, 1);

	gl_Position = transformed;
}
