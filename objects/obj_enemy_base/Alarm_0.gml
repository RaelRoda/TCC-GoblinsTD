/// @description Insert description here
// You can write your code in this editor

if(spd < start_spd){
	spd += 0.05;
	path_speed = spd;
	alarm[0] = room_speed * 1;
	
}else {
	spd = start_spd;
	path_speed = spd;
	alarm[0] = -1	
};



