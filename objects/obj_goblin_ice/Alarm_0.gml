//MUDAR COMPLETAMENTE
if(instance_exists(objectToShoot)){
	var projectile = instance_create_layer(x+11, y-6, "inst_projectiles", obj_spike);
	projectile.speed = 10 * global.game_speed;
	projectile.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
	projectile.image_angle = projectile.direction;
	projectile.damage = damage;
	alarm[0] = fire_rate / global.game_speed;
	
	if(global.mute_sound = false) audio_play_sound(snd_ice, 4, false, 0.5);
	
}else{
	shooting = false;
}