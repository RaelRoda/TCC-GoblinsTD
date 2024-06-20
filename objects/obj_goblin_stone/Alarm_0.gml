if(instance_exists(objectToShoot)){
	var projectile = instance_create_layer(x, y, "inst_projectiles", obj_stone);
	projectile.speed = 10 * global.game_speed;
	projectile.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
	projectile.damage = damage;
	alarm[0] = fire_rate / global.game_speed;
	
	if(global.mute_sound = false) audio_play_sound(snd_pedra, 4, false, 0.5);
	
}else{
	shooting = false;
}


