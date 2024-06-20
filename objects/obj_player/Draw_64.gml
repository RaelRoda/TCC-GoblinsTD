/// @description Insert description here
// You can write your code in this editor



draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_sprite_ext(spr_gold, image_index, 35, 35, 2, 2, 0, c_white, 1);
draw_text_transformed(60, 35, gold, 1.5, 1.5, 0);

draw_sprite_ext(spr_life, image_index, 35, 80, 2, 2, 0, c_white, 1);
draw_text_transformed(60, 80, life, 1.5, 1.5, 0);


var _ui_width = display_get_gui_width();
var _ui_height = display_get_gui_height();

//mostra a condição de vitoria
if(instance_exists(obj_control)){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(_ui_width / 2, 45, $"{obj_control.nivel % (rounds_necessarios+1)}/{rounds_necessarios}", 1.5, 1.5, 0);

};


draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_color(c_white);


var _teclas_scale = 1.2;
draw_text_transformed(30, _ui_height - 100, "B - LOJA", _teclas_scale, _teclas_scale, 0);
draw_text_transformed(30, _ui_height - 75, "S - VENDA", _teclas_scale, _teclas_scale, 0);
draw_text_transformed(30, _ui_height - 50, "P - MENU", _teclas_scale, _teclas_scale, 0);