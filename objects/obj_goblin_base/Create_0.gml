range = 100;
fire_rate = room_speed / 3;
shooting = false;
objectToShoot = noone;

cost = 50;
payment = 2;

image_xscale = 2;
image_yscale = 2;

if(global.mute_sound = false) audio_play_sound(choose(snd_posicionado2, snd_posicionado1, snd_posicionado3), 10, false, 0.5, 0.2);