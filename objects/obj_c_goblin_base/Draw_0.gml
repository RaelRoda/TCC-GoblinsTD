draw_self();

if(instance_exists(obj_player)){
	if(obj_player.gold <= cost){
		draw_sprite_ext(spr_goblin, image_index, x, y, 1, 1, 0, c_black, 0.5);
	};
};

draw_set_color(c_black);
draw_text(x - 15, y - 30, string(cost));



draw_set_valign(fa_center);

draw_sprite(spr_gold, image_index, x - 15, y + 35);
draw_text(x - 5, y + 35, cost);


draw_set_color(c_white);
draw_set_valign(fa_top);