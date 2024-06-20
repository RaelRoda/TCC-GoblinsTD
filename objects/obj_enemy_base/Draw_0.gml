/// @description Insert description here
// You can write your code in this editor


draw_self();

var pc = (life / max_life) * 100;
draw_healthbar(x-10, y-20, x+10, y-18, pc, c_black, c_red, c_lime, 0, true, true);
