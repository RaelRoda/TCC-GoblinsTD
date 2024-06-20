if(instance_exists(objectToShoot)){
	//MUDAR PROJETIL OU MAGIA
	var projectile = instance_create_layer(x, y, "inst_projectiles", obj_simple_magic);
	projectile.speed = 15;
	projectile.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
	projectile.damage = damage;
	alarm[0] = fire_rate;
	
	audio_play_sound(snd_simple, 4, false, 0.5);
	
}else{
	shooting = false;
}