draw_self();

if(instance_exists(obj_player)){
	if(obj_player.gold <= cost){
		draw_sprite_ext(spr_goblin_ice, image_index, x, y, 1, 1, 0, c_black, 0.5);
	};
};

if(mouse_over(x,y,sprite_width, sprite_height)){
	draw_set_halign(fa_center);
	
	draw_text(room_width/2, room_height/2 - 140, nome);
	draw_text_ext(room_width/2, room_height/2 - 100, descricao, 15, 400);

	draw_set_halign(fa_left);
	
	draw_text(room_width/2 - 130, room_height/2 - 50, "Dano: " + string(damage));
	//draw_text(room_width/2 - 130, room_height/2 - 30, "Pagamento: " + string(payment));
};

draw_set_color(c_black);

draw_set_valign(fa_center);

draw_sprite(spr_gold, image_index, x - 15, y + 35);
draw_text(x - 5, y + 37, cost);


draw_set_color(c_white);
draw_set_valign(fa_top);