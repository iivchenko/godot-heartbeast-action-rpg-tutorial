shader_type canvas_item;

uniform bool active = false;

void fragment(){
	vec4 original = texture(TEXTURE, UV);
	vec4 white = vec4(1.0, 1.0, 1.0, original.a);
	vec4 out_color = original;
	
	if (active == true) {
		out_color = white;
	}
	
	COLOR = out_color;
}