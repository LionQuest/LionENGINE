/// @description Hurt State
sprite_index = spriteHurt;


if immunFrames < 1 { 
	hp -= 1;
	immunFrames = 60;
	blinkAlpha = 1;
	lockedDirection = direction;
} else {
	immunFrames--
	hSpeed = -lengthdir_x(spd/2, lockedDirection);
	vSpeed = -lengthdir_y(spd/2, lockedDirection);
	if immunFrames < 30 {
		state = 1;
	}
}

