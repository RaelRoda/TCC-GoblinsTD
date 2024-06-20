/// @description Insert description here
// You can write your code in this editor
var _ui_width = display_get_gui_width();
var _ui_height = display_get_gui_height();

//draw_text_transformed(_ui_width / 2, 45, nivel, 2, 2, 0);


if(!is_spawning){
	if(countdown > 3){ 
		draw_text(_ui_width / 2, 80, countdown);
		
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(_ui_width /2, _ui_height / 2, "pressione R quando estiver pronto!", 2, 2, 0)
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	
	}else {
		draw_set_color(c_red);
		draw_text_transformed(_ui_width /2, _ui_height / 2, countdown, 3, 3, 0);
	};
};


draw_set_color(c_white);