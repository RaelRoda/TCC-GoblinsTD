/// @description Insert description here
// You can write your code in this editor

nivel = 1;
is_spawning = false;

countdown_base = 15; //15
countdown = countdown_base;
alarm[0] = room_speed * 1;
pagamento_realizado = true;

audio_play_sound(snd_goblins_game, 1, true, 0.4);


function enemy_check(){
	if(is_spawning){
		//pagamento_realizado = false;
		var _enemies = instance_number(obj_enemy_base);
		if(_enemies <= 0){
			//show_debug_message("heheha");
			nivel++;
			is_spawning = false;
			
			alarm[0] = room_speed * 1;
			
			//pagamento desabilitado
			//alarm[1] = room_speed * 2;
			
		};
		
	};
	
};
	
function start_wave(){
	if(!is_spawning and countdown > 0){
		if(keyboard_check_pressed(ord("R"))){
			countdown = 3;
			
		};
	};
};