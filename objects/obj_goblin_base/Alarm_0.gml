if(instance_exists(objectToShoot)){
	var projectile = instance_create_layer(x, y, "inst_projectiles", obj_stone);
	projectile.speed = 10;
	projectile.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
	alarm[0] = fire_rate;
	
}else{
	shooting = false;
}