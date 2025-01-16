shader_type canvas_item;
render_mode blend_mix;

void fragment() {
	vec2 screen_uv = SCREEN_UV;
	
	if (screen_uv.y < 0.295) {
		COLOR = vec4(0, 0, 0, 0.0);
	} 
}


void vertex() {
// Input:7
	vec2 n_out7p0 = VERTEX;
// Input:2
	float n_out2p0 = TIME;

// FloatOp:3
	float n_in3p1 = -0.35000;
	float n_out3p0 = n_out2p0 * n_in3p1;

// FloatFunc:4
	float n_out4p0 = fract(n_out3p0);

// VectorOp:5
	vec3 n_in5p1 = vec3(1112.00000, 0.00000, 0.00000);
	vec3 n_out5p0 = vec3(n_out4p0) * n_in5p1;

// VectorOp:6
	vec3 n_out6p0 = vec3(n_out7p0, 0.0) + n_out5p0;

// Output:0
	VERTEX = vec2(n_out6p0.xy);
}


