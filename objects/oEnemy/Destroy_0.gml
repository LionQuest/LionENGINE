if (irandom_range(0,100) >= 30) {
	var _items = [oCoin, oHeart, oHeartHalf];
	var _loot = irandom_range(0, array_length(_items) - 1)
	
	instance_create_layer(x, y, "Instances", _items[_loot]);

}