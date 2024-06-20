/// @description Insert description here
// You can write your code in this editor

max_life = 100;
life = max_life;
start_spd = 1;
spd = start_spd;

revive = false;

//valo roubado do jogador
steal_gold = 2;

//valor dado ao jogador
min_steal_gold = 3;
max_steal_gold = 5;
gold_value = irandom_range(min_steal_gold, max_steal_gold);

function path_end(){
	show_message("dindin");
}

function path_receive(_path){
	path_start(_path, spd, 0, 1);
}

function take_damage(_damage){
	life -= _damage;
}
	
function ice_effect(){
	if(spd > start_spd / 2) spd -= 0.1;
	
	path_speed = spd;
	alarm[0] = room_speed * 2;
};

///@METHOD set_stats(spd, life, _min_gold, _max_gold)
function set_stats(_spd, _life, _min_gold, _max_gold, _steal_gold){
	start_spd = _spd;
	max_life = _life;
	min_steal_gold = _min_gold;
	max_steal_gold = _max_gold;
	steal_gold = _steal_gold; //steal gold virou o dano
	
	life = max_life;
	spd = start_spd;
}
	
function stun_effect(){
	spd = 0;
	
	path_speed = spd;
	alarm[1] = room_speed * 1;
}
	
function check_necromancer(){
	if(instance_exists(obj_enemy_necromante)){
		revive = true;
	}else revive = false;
}
	
