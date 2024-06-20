/// @description Insert description here
// You can write your code in this editor

is_open = false
torres = noone;

yy = room_height + sprite_height / 2;
yfinal = room_height - sprite_height / 2;
store_diff_y = yfinal - yy; 

move_speed = 8;

function open_store(){
	if(keyboard_check_pressed(ord("B"))){
		if(!is_open){
			is_open = true;
			if(instance_exists(obj_player)) obj_player.sell_mode = false;
		}else is_open = false;
	};

	if(is_open){
		y = lerp(y, yfinal, move_speed / room_speed);
	
		if(instance_exists(obj_c_goblin_base)){
			for(var i = 0; i < instance_number(obj_c_goblin_base); i++){
				torres[i] = instance_find(obj_c_goblin_base, i);
				torres[i].y = lerp(torres[i].y, torres[i].ystart + store_diff_y, move_speed / room_speed);
			};
		};
	};
	
	if(!is_open){
		y = lerp(y, yy, move_speed / room_speed);
		
		if(instance_exists(obj_c_goblin_base)){
			for(var i = 0; i < instance_number(obj_c_goblin_base); i++){
				torres[i] = instance_find(obj_c_goblin_base, i);
				torres[i].y = lerp(torres[i].y, torres[i].ystart, move_speed / room_speed);
			};
		};
	};
	
	if(instance_exists(obj_d_goblin_base)) is_open = false;
	
};