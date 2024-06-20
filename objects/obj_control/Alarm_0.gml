/// @description Insert description here
// You can write your code in this editor

countdown--;

if(countdown <= 0){
	alarm[0] = -1;
	countdown = countdown_base;
		
	if(instance_exists(obj_spawn)){
		obj_spawn.start_spawn();
	}
	
	
}else alarm[0] = room_speed * 1;


