/// @description Hurt State
if immunFrames < 0 { 
	hp -= 1;
	immunFrames = 30;
} else {
	immunFrames--
	sprite_index = spriteHurt;
	hSpeed = -lengthdir_x(spd/2, direction);
	vSpeed = -lengthdir_y(spd/2, direction);
	if immunFrames < 1 {
		state = 0;
		immunFrames = -1;
	}
}

