//onFloor = position_meeting(x + hSpeed + sign(hSpeed)*10, y + vSpeed + sign(vSpeed)*10, oArea);


if immunFrames > -1 {
	immunFrames--;
	hit = false;
	
} else {
	hit = place_meeting(x, y, oEnemy);
	colliding_inst_id = instance_place(x, y, oEnemy);


}

//SET DIRECTION AND MOVEMENT
inputDir =  round(point_direction(0, 0, LXAxis, LYAxis));
isMoving = LXAxis != 0 or LYAxis != 0;
if attackFrames >= 0 attackFrames--;

//CONTINUE TO CURRENT PLAYER'S STATE
if !global.gamePaused and state != 2 {
	event_user(state);
} else {
	hSpeed = 0; vSpeed = 0;
}




