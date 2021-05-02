/// @description Hurt State
if immunFrames < 0 { 
	immunFrames = 30;
} else {
	
	sprite_index = sprHurt;
	with oEnemy {
		other.hSpeed = lengthdir_x((spd + 1)/2, direction);
		other.vSpeed = lengthdir_y((spd + 1)/2, direction);
	}
	if blinkFrames <= 3 {
		sprite_index = sprHurt;
		blinkFrames++;
	} else {
		sprite_index = sPlayerHurtBlink;
		blinkFrames = 0;
		
		
	
	}
	
	if immunFrames < 1 state = 0;
}




