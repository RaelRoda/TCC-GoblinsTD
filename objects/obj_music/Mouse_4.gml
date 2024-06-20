/// @description Insert description here
// You can write your code in this editor

if(!mute_music){
	audio_pause_sound(snd_goblins_game);
	mute_music = true;
	image_alpha = 0.5;
}else {
	audio_resume_sound(snd_goblins_game);
	mute_music = false;
	image_alpha = 1;
}
