var _hCol = position_meeting(x + hSpeed + 1 * sign(hSpeed), y, oCol);
var _vCol = position_meeting(x, y + vSpeed + 1 * sign(vSpeed), oCol);

bounce = position_meeting(x, y, oCol); 

if bounce {
	state = 5;
}

if hit {
	state = 2;
	blinkAlpha = 1;
} 

if (blinkAlpha > 0) {
	blinkAlpha -= 1/immunFrames;
}

if hp <= 0 {
	state = 3;
}

if !global.gamePaused {
	var _totalFrames = sprite_get_number(sprite_index);
	image_index = localFrame;
	if localFrame == _totalFrames localFrame = 0
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE * spd + 0.05
}
x += hSpeed;
y += vSpeed;
