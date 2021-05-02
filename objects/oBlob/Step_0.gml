target = collision_ellipse(x - 64, y - 64, x + 64, y + 64, oPlayer, false, true);
hit = place_meeting(x, y, oSword);
direction = point_direction(x, y, oPlayer.x, oPlayer.y);
distance = point_distance(x, y, oPlayer.x, oPlayer.y);

event_user(state);

if (hSpeed != 0 and state !=2) image_xscale = -sign(hSpeed);


