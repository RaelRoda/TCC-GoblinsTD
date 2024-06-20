/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	obj_player.earn_gold(gold_value);
}

if(revive){
	var zumbi = instance_create_layer(x, y, "inst_enemies", obj_enemy_zumbi);
	zumbi.max_life = max_life / 4;
	zumbi.start_spd = start_spd;
	zumbi.path_receive_zumbi(path_index, path_position);
	
};