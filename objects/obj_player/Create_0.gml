/// @description Insert description here
// You can write your code in this editor

life = 100;

sell_mode = false;
gold = 30; //30
gameover = false;
tutorial_completo = false;

goblin_payment = 0;

tick_piscar = 0;
alert_piscando = false;
alert_alpha = 1;

magos_ouro = 0;

//condição de v itoria
gold_necessario = 10000; //10k
rounds_necessarios = 40;
vitoria = false;
vict_anim = false;

function earn_gold(_amount){
	gold += _amount + (1 * magos_ouro);
}

function lose_gold(_amount){
	gold -= _amount;
}

function lose_life(_amount){
	life -= _amount;
}

function tutorial(){
	//desenhar os botões do lado esquerdo
	
};

function enter_sellMode(){
	if(keyboard_check_pressed(ord("S"))){
		if(sell_mode = false){
			sell_mode = true;
		}else sell_mode = false;
	};
};
	
function increase_goblin_payment(_amount){
	goblin_payment += _amount;
};

function decrease_goblin_payment(_amount){
	goblin_payment -= _amount;
};

function increase_magos_ouro(_amount){
	magos_ouro += _amount;
};

function decrease_magos_ouro(_amount){
	magos_ouro -= _amount;
};

function pay(){
	gold -= goblin_payment;
};

function game_over(){
	if(life < 0 and !gameover){
		gameover = true;
		audio_stop_all();
		
		instance_deactivate_layer("inst_drag");
		instance_deactivate_layer("inst_goblins");
		instance_deactivate_layer("inst_enemies");
		instance_destroy(obj_control);
		instance_destroy(obj_spawn);
		audio_play_sound(snd_payTime3, 6, false, 0.8, 0.2);
		layer_sequence_create("sequences", room_width/2, room_height/2, sq_gameOver);
	};
	
	if(gameover){
		if(keyboard_check_pressed(ord("R"))) room_restart();
		if(keyboard_check_pressed(vk_enter)) room_goto(r_menu);
	};
};
	
function win_condition(){
	if(instance_exists(obj_control)){
		if(obj_control.nivel > rounds_necessarios){
			vitoria = true;
		};
	};
};
	
function check_vitoria(){
	if(vitoria){
		if(!vict_anim) {
			layer_sequence_create("sequences", room_width/2, room_height/2, sq_win);
			vict_anim = true;
		};
		
		if(keyboard_check_pressed(vk_enter)) room_goto(r_mapSelect);
	}
}