/// @description Bounce State
//sprite_index = spriteRolling;

if bounceFrames <= 0 {
	bounceFrames = 30;
	//direction += 180;
	lockedDirection = direction;
	
	
} else {
	hSpeed = -lengthdir_x(spd * 1.5, lockedDirection);
	vSpeed = -lengthdir_y(spd * 1.5, lockedDirection);
	bounceFrames--;
	
	if bounceFrames <= 0 {
		state = 1;

	}
}
