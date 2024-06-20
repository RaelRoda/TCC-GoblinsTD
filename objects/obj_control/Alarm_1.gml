/// @description Pay

if(!pagamento_realizado){
	if(instance_exists(obj_player)){
		obj_player.pay();
		obj_player.win_condition();
	};
	
	pagamento_realizado = true;
	
	var _snd = choose(snd_payTime1, snd_payTime2);
	
	if(global.mute_sound = false) audio_play_sound(_snd, 11, false, 1);
};

if(nivel = 20){
	layer_sequence_create("sequences", room_width/2, room_height/2, sq_winCondition);
}
