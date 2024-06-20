/// @description Insert description here
// You can write your code in this editor

if(instance_exists(target)) target.take_damage(damage);
instance_destroy(self);

audio_stop_sound(audio);