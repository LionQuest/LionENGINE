/// @description Idle State
sprite_index = spriteIdle;
hSpeed = 0;
vSpeed = 0;

if target != noone and immunFrames < 0 && oPlayer.immunFrames < 0 {
	state = 1;
	alarm[0] = 60 * 10;
}

