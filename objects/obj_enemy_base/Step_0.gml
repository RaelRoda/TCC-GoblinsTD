/// @description Insert description here
// You can write your code in this editor
path_speed = spd * global.game_speed

if(direction = 180) image_xscale = -1;
else image_xscale = 1;

if(life <= 0) instance_destroy();

check_necromancer();