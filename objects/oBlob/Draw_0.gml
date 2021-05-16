event_inherited()
draw_self();

if immunFrames > 0 {
	if blinkAlpha > 0 {
		shader_set(shBlink);
		draw_sprite_ext(sprite_index, image_index, x, y ,image_xscale, image_yscale, image_angle, blinkColor, blinkAlpha);
		shader_reset();
	}
}