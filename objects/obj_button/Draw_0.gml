/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(f_game);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);

draw_text_transformed(x, y, texto, 1.5, 1.5, 0);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_left);