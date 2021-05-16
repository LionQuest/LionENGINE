event_inherited();

if (collected) {
	if value > 0 {
		oPlayer.coins += value;
		value = 0;
	}
	sprite_index = sprSpin;
	image_speed += .1;
}