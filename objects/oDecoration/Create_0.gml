gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
frames = sprite_get_number(sprite);
texture = sprite_get_texture(sprite, 0);
width = sprite_get_width(sprite);
height = sprite_get_height(sprite);
count = ((bbox_right - bbox_left) * (bbox_bottom - bbox_top)) / countRatio  ;
alpha = 1;
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();
format = vertex_format_end();
vbuff = vertex_create_buffer();
vertex_begin(vbuff,format);
repeat (count) {
	var _x1 = irandom_range(bbox_left - 8,bbox_right - 8);
	var _y1 = irandom_range(bbox_top - 8,bbox_bottom - 8);
	var _x2 = _x1 + width;
	var _y2 = _y1 + height;
	var _depth = -_y2;
	var _frame = irandom(frames - 1);
	var _uvs = sprite_get_uvs(sprite, _frame);
	vertex_position_3d(vbuff, _x1, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	vertex_position_3d(vbuff, _x2, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	vertex_position_3d(vbuff, _x1, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	vertex_position_3d(vbuff, _x2, _y1, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	vertex_position_3d(vbuff, _x1, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	vertex_position_3d(vbuff, _x2, _y2, _depth);
	vertex_texcoord(vbuff, _uvs[2], _uvs[3]);
	vertex_color(vbuff, color, alpha);
}
vertex_end(vbuff);
vertex_freeze(vbuff);
