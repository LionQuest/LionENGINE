/// @description Attack State

if chargingFrames > 0 {
	if hit {
		oPlayer.state = 5;
		oPlayer.colliding_inst_id = id;
		hit = false;
	}
	hSpeed = 0;
	vSpeed = 0;
	lockedDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
	sprite_index = spriteCharging;
	chargingFrames--;
} else {
	/*
	if hit {
		if round(direction * (-10)) != round(abs(oPlayer.direction) * (-10)) {
			oPlayer.state = 0;
			instance_destroy(oSword);
			hit = false;
		}
	}
	*/
	if place_meeting(x, y, oPlayer) {
		state = 5;
		oPlayer.colliding_inst_id = id;
		if (instance_exists(oText)) {
			oText.closed = true;
		}
	}
	
	sprite_index = spriteAttack;
	hSpeed = lengthdir_x(spd*3, lockedDirection);
	vSpeed = lengthdir_y(spd*3, lockedDirection);
	attackFrames--;
	if attackFrames <= 0 state = 1;
	
}