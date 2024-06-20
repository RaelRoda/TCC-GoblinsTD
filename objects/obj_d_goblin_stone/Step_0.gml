
if(place_meeting(x, y, obj_path) || place_meeting(x, y, obj_goblin_base)) col = c_red;
else col = c_white;

x = mouse_x;
y = mouse_y;

if(instance_exists(obj_player)){
	if(obj_player.gold < cost){
		instance_destroy(self);
	};
};

