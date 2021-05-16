/// @description Attack State
spd = 0;  
attackFrames = 20;
sprite_index = sprAttack;

hSpeed = 0;
vSpeed = 0;
var _x = x + lengthdir_x(8, direction);
var _y = y + lengthdir_y(8, direction) - sprite_height/3.2;	
if !instance_exists(oSword)
	instance_create_layer(_x, _y, "Instances", oSword);
oSword.image_angle = direction;
