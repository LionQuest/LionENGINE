//CHECK COLLISIONS
var _colBottom = false;
var _colTop = false;
var _colRight = false;
var _colLeft = false;
//instCol = instance_position(x + hSpeed + 1 * sign(hSpeed), y + vSpeed + 1 * sign(vSpeed), OBJECT);
var _hCol = position_meeting(x + hSpeed + 1 * sign(hSpeed), y, oCol);
var _vCol = position_meeting(x, y + vSpeed + 1 * sign(vSpeed), oCol);
if _hCol{
	if (bbox_right + hSpeed >= oCol.bbox_left) { 
	    hSpeed = 0;
		_colRight = true;
	} else if (bbox_left + hSpeed <= oCol.bbox_right) { 
	    hSpeed = 0;
		_colLeft = true;
	}
}
if _vCol{
	if (bbox_bottom + vSpeed >= oCol.bbox_top)  { 
	    vSpeed = 0;
		_colBottom = true;
	} else if (bbox_top + vSpeed <= oCol.bbox_bottom) { 
	    vSpeed = 0;
		_colTop = true;
	}
}


if place_meeting(x, y, oEnemy) {
	state = 3;
	oEnemy.state = 5;
} 

animateSprite();

//SET POSITION IN ROOM
x += hSpeed;
y += vSpeed;

