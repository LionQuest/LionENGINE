if dropFrames > 0 depth = -room_height;
else depth = -y;

if place_meeting(x, y, oPlayer) collected = true;

dropFrames--;

if (dropFrames > 15) {
	y -= 1;
} else if (dropFrames < 15 && dropFrames > 0) {
	y += .7
}

if (collected) {
	depth = -room_height;
	collectFrames--;
	y -= .7;
	if collectFrames <= 0 instance_destroy();
}


