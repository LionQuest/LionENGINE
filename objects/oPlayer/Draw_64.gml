draw_set_font(fnt_game);
draw_set_color(c_white);


draw_sprite(sCoin, 0, 10, 12);
draw_text(20, 6, string(coins));
for (var i = 1; i <= maxHp/2; i++) {
    draw_sprite(sHeartEmp, 0, 5 * (i*2), 25);
}

for (var i = 1; i <= hp/2; i++) {
	draw_sprite(sHeart, 0, 5 * (i*2), 25);
	if (hp / 2 != round(hp / 2)) draw_sprite(sHeartHalf, 0, 5 * ((i + 1)*2), 25);
}




