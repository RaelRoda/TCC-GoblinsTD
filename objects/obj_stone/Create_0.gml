/// @description Insert description here
// You can write your code in this editor

damage = 10;

function outside_room(){
	if(x < -20 || x > room_width + 20 || y < -20 || y > room_height+20) instance_destroy()
}