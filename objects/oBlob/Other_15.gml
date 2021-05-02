/// @description Bounce State
if bounceFrames < 0 {
	bounceFrames = 30;
} else {
	bounceFrames--;
	hSpeed = -lengthdir_x(spd, direction);
	vSpeed = -lengthdir_y(spd, direction);
	if bounceFrames < 1 {
		state = 1;
		bounceFrames = -1;
	}
}
