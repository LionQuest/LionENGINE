/// @description Hurt State
if immunFrames < 0 { 
	immunFrames = 60;
	if colliding_inst_id != -4 lockedDirection = colliding_inst_id.direction;
	hp -= 1;
	blinkAlpha = 1;
	
} else {
	
	sprite_index = sprHurt;
	if colliding_inst_id != -4 {
		hSpeed = lengthdir_x((abs(colliding_inst_id.hSpeed) + 1) / 2, lockedDirection);
		vSpeed = lengthdir_y((abs(colliding_inst_id.vSpeed) + 1) / 2, lockedDirection);
	}
	if immunFrames < 30 state = 0;
}




