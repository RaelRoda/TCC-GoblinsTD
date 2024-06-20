/// @description Insert description here
// You can write your code in this editor

spawn_amount = 4;
spawn_count = 0;

spawn_rate_sec = 1.5;
spawn_rate = spawn_rate_sec * room_speed;

function start_spawn(){
	spawn_amount += 2;
	spawn_count = 0;
	
	alarm[0] = 1;
};


inimigo = noone;

chance_spawn_rookie = 100;
life_rookie = 50;

chance_spawn_slayer = 0;
life_slayer = 200;

chance_spawn_rogue = 0;
life_rogue = 100;

chance_spawn_healer = 0;
life_healer = 100;

chance_spawn_necromante = 0;
life_necromante = 150;

en_spd_atual = 0;
en_life_atual = 0;
en_steal_atual = 0;
en_minG_atual = 0;
en_maxG_atual = 0;

function chance_spawn(){
	var _chance = irandom_range(1, 100);

	var fimRookie, inicioSlayer, fimSlayer, inicioRogue, fimRogue, inicioHeal, fimHeal, inicioNecro, fimNecro;
	fimRookie = chance_spawn_rookie - chance_spawn_slayer - chance_spawn_rogue - chance_spawn_healer - chance_spawn_necromante;
	inicioSlayer = fimRookie;
	fimSlayer = inicioSlayer + chance_spawn_slayer;
	inicioRogue = fimSlayer;
	fimRogue = inicioRogue + chance_spawn_rogue;
	inicioHeal = fimRogue;
	fimHeal = inicioHeal + chance_spawn_healer;
	inicioNecro = fimHeal;
	fimNecro = inicioNecro + chance_spawn_necromante;

	//show_debug_message($"Rookie:{fimRookie}; Slayer:{chance_spawn_slayer}; Rogue:{chance_spawn_rogue}; Healer:{chance_spawn_healer}; Necro:{chance_spawn_necromante}");


	if(_chance > 0 && _chance <= fimRookie){
		inimigo = obj_enemy_rookie;
		
		en_spd_atual = 1;
		en_life_atual = life_rookie;
		en_minG_atual = 3;
		en_maxG_atual = 5;
		en_steal_atual = 1;

	
	}else if(_chance > inicioSlayer && _chance <= fimSlayer){
		inimigo = obj_enemy_slayer;
		
		en_spd_atual = 1;
		en_life_atual = life_slayer;
		en_minG_atual = 8;
		en_maxG_atual = 15;
		en_steal_atual = 3;
	
	}else if(_chance > inicioRogue && _chance <= fimRogue){
		inimigo = obj_enemy_rogue;
		
		en_spd_atual = 2;
		en_life_atual = life_rogue;
		en_minG_atual = 10;
		en_maxG_atual = 15;
		en_steal_atual = 5;
		
	}else if(_chance > inicioHeal && _chance <= fimHeal){
		inimigo = obj_enemy_healer;
		
		en_spd_atual = 1;
		en_life_atual = life_healer;
		en_minG_atual = 8;
		en_maxG_atual = 15;
		en_steal_atual = 2;
	
	}else if(_chance > inicioNecro && _chance <= fimNecro){
		inimigo = obj_enemy_necromante;
		
		en_spd_atual = 1;
		en_life_atual = life_necromante;
		en_minG_atual = 15;
		en_maxG_atual = 20;
		en_steal_atual = 2;
	}
	
	
};
	
function spawn_limit(){
	
	if(instance_exists(obj_control)){
		var control = obj_control;
		if(control.nivel >= 3 && chance_spawn_slayer < 30) chance_spawn_slayer += 2;
		if(control.nivel >= 3 && chance_spawn_rogue < 25) chance_spawn_rogue += 1;
		if(control.nivel >= 10 && chance_spawn_healer < 20)	chance_spawn_healer += 1;
		if(control.nivel >= 15 && chance_spawn_necromante < 5)	chance_spawn_necromante += 1;
		
		if(life_rookie < 250) life_rookie += 5;
		if(control.nivel > 20 && life_slayer < 600) life_slayer += 5;
		if(control.nivel > 20 && life_rogue < 300) life_rogue += 5;
		if(control.nivel > 20 && life_healer < 400) life_healer += 5;
		if(control.nivel > 20 && life_necromante < 350) life_necromante += 5;
		
		
		//controle do tempo de spawn
		if(spawn_rate_sec > 0.5) spawn_rate_sec -= 0.05;
		spawn_rate = spawn_rate_sec * room_speed;
		//show_debug_message(spawn_rate_sec);
	};
};