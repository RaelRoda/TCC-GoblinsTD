/// @description Insert description here
// You can write your code in this editor

if(spawn_count < spawn_amount){	
	chance_spawn();
	
	var _choose_path = p_test;
	if(room == r_test3) _choose_path = choose(p_path1, p_path2);
	if(room == r_test4) _choose_path = p_path3;
	if(room == r_test5) _choose_path = p_path4;

	var enemy = instance_create_layer(x, y, "inst_enemies", inimigo);
	enemy.set_stats(en_spd_atual, en_life_atual, en_minG_atual, en_maxG_atual, en_steal_atual);
	enemy.path_receive(_choose_path);
	spawn_count++;
	alarm[0] = spawn_rate / global.game_speed;
	
	if(instance_exists(obj_control)) obj_control.is_spawning = true;
	
}else{
	alarm[0] = -1;
	spawn_limit();

};
