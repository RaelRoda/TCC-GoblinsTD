/// @description Insert description here
// You can write your code in this editor

target = noone;
damage = 30;

alarm[0] = (room_speed / 2) / global.game_speed;

audio = noone;

audio_stop_sound(snd_raio);

if(global.mute_sound = false) audio = audio_play_sound(snd_raio, 4, false, 0.5);
