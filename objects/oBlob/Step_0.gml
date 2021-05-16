target = collision_ellipse(x - 64, y - 64, x + 64, y + 64, oPlayer, false, true);
atkTrigger = point_distance(x, y, oPlayer.x, oPlayer.y) < random_range(16, 32); 

hit = place_meeting(x, y, oSword);
direction = point_direction(x, y, oPlayer.x, oPlayer.y);
distance = point_distance(x, y, oPlayer.x, oPlayer.y);

if immunFrames >= 0 {
	hit = false;
	immunFrames--;
}

if !global.gamePaused event_user(state);
else {hSpeed = 0; vSpeed =0;}

if (hSpeed != 0 and state !=2) image_xscale = -sign(hSpeed);


