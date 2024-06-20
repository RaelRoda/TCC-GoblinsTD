//MUDAR COMPLETAMENTE
projet_x = random_range(0, room_width);
projet_y = random_range(0, room_height);

if(instance_exists(objectToShoot)){
	var projectile = instance_create_layer(x+11, y-6, "inst_projectiles", obj_fireball);
	projectile.speed = 10 * global.game_speed;
	projectile.direction = point_direction(x, y, projet_x, projet_y);
	projectile.image_angle = projectile.direction;
	projectile.target_x = objectToShoot.x;
	projectile.target_y = objectToShoot.y;
	projectile.damage = damage;
	alarm[0] = fire_rate / global.game_speed;
	
	audio_play_sound(snd_start_fire, 4, false, 0.5);
	
}else{
	shooting = false;
}