/// @description Insert description here
// You can write your code in this editor
 
if(instance_exists(obj_player)){
	if(obj_player.sell_mode = true){
		obj_player.earn_gold(cost / 2);
		obj_player.decrease_goblin_payment(payment);
		instance_destroy(self);
		
		audio_stop_sound(snd_venda);
		if(global.mute_sound = false) audio_play_sound(snd_venda, 6, false, 0.5, 0.25);
	}
}
