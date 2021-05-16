event_inherited();

if (collected) {
	if value > 0 {
		with oPlayer {
			var _value = oHeart.value;
			var _test = hp + _value; 
			if _test > maxHp _value -= (_test - maxHp)		
			hp += _value;
		}
		value = 0;
	}
}

