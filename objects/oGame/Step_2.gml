//CHECKS IF PAUSE IS PRESSED SET ALL IMAGE SPEED TO 0
if pressedPause 
	global.gamePaused = !global.gamePaused;

//PAUSE
if !global.gamePaused {
	with all {
		if !object_is_ancestor(object_index, oArea)	and !object_is_ancestor(object_index, oItem)
			depth = -bbox_bottom;
	}
	
} else {
	with all {	
		image_speed = 0;
		hSpeed = 0;
		vSpeed = 0;
	} 
}

if instance_number(oEnemy) < 3 {
	instance_create_layer(irandom_range(0, room_width), irandom_range(150, room_height), "Instances", oBlob);
}

//DEBUG CONTROLS
if keyboard_check_pressed(vk_f1) game_restart();
if keyboard_check_pressed(vk_f2) {
	fullscreen = !fullscreen; 
	window_set_fullscreen(fullscreen)
}
