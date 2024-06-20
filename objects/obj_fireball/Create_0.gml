/// @description Insert description here
// You can write your code in this editor

target_x = 0;
target_y = 0;

explosion_radius = 55;
damage = 35;

wait_time = room_speed * 0.5;

alarm[0] = wait_time / global.game_speed;

function explosion(){
	if(point_distance(x, y, target_x, target_y) <= 10 * global.game_speed){
		
		if(instance_exists(obj_enemy_base)){
			with(obj_enemy_base){
				if(point_distance(x, y, other.target_x, other.target_y) <= other.explosion_radius){
					take_damage(other.damage);
					
					
				};
			};
		};
		
		if(global.mute_sound = false) audio_play_sound(snd_explosion, 5, false, 0.5);
		
		instance_destroy(self);
		instance_create_layer(x, y, "inst_projectiles", obj_explosion);
	};
};