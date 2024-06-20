draw_self();

if(mouse_over(x, y, sprite_width, sprite_height)) draw_circle(x, y, range, true);

var en = instance_nearest(x, y, obj_enemy_base);


if(fire_rate <= 0){
	if(en != noone){
		if(point_distance(x, y, en.x, en.y) <= range+15){
			objectToShoot = en;
			if(mouse_over(x, y, sprite_width, sprite_height)) draw_line(x, y, en.x, en.y);
			
		}else objectToShoot = noone;
	
		if(instance_exists(objectToShoot)){
			var projectile = instance_create_layer(x, y, "inst_projectiles", obj_rocha);
			projectile.speed = 4 * global.game_speed;
			projectile.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
			projectile.damage = damage;
	
			fire_rate = fire_rate_base / global.game_speed;
			if(global.mute_sound = false) audio_play_sound(snd_rocha, 4, false, 0.5);
	
		};
	
	};
	
}fire_rate--;