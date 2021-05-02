var _hCol = position_meeting(x + hSpeed + 1 * sign(hSpeed), y, oCol);
var _vCol = position_meeting(x, y + vSpeed + 1 * sign(vSpeed), oCol);
if _hCol or _vCol{
	state = 5;
}

if hit {
	state = 2;
} 

if hp <= 0 {
	state = 3;
}

x += hSpeed;
y += vSpeed;
