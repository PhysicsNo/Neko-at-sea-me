#version 330 

// Input attributes
in vec3 in_position;
in vec2 in_texcoord;

// Passed to fragment shader
out vec2 texcoord;

// Application data
uniform mat3 transform2d;
uniform mat3 projection2d;
uniform vec2 texOffset;

void main()
{
	texcoord = in_texcoord + texOffset;
	vec3 pos = projection2d * transform2d * vec3(in_position.xy, 1.0);
	gl_Position = vec4(pos.xy, in_position.z, 1.0);
}