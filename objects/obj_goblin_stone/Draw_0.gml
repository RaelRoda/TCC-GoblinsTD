draw_self();

if(mouse_over(x, y, sprite_width, sprite_height)) draw_circle(x, y, range, true);

var en = instance_nearest(x, y, obj_enemy_base);

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