draw_self();

if(mouse_over(x, y, sprite_width, sprite_height)) draw_circle(x, y, range, true);

var en = instance_nearest(x, y, obj_enemy_base);
/*
if(en != noone){
	if(point_distance(x, y, en.x, en.y) <= range+15){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		
		objectToShoot = en;
		if(mouse_over(x, y, sprite_width, sprite_height)) draw_line(x, y, en.x, en.y);
		
	}else{
		shooting = false;
		objectToShoot = noone;
	};
	
};
*/

if(fire_rate <= 0){
	if(en != noone){
		if(point_distance(x, y, en.x, en.y) <= range+15){		
			objectToShoot = en;
			if(mouse_over(x, y, sprite_width, sprite_height)) draw_line(x, y, en.x, en.y);
		
		}else objectToShoot = noone;
		
		if(instance_exists(objectToShoot)){
			projet_x = random_range(0, room_width);
			projet_y = random_range(0, room_height);
			
			var projectile = instance_create_layer(x+11, y-6, "inst_projectiles", obj_fireball);
			projectile.speed = 10 * global.game_speed;
			projectile.direction = point_direction(x, y, projet_x, projet_y);
			projectile.image_angle = projectile.direction;
			projectile.target_x = objectToShoot.x;
			projectile.target_y = objectToShoot.y;
			projectile.damage = damage;
			
			fire_rate = fire_rate_base / global.game_speed;
	
			if(global.mute_sound = false) audio_play_sound(snd_start_fire, 4, false, 0.5);
	
		};
	
	};

}else fire_rate--;
