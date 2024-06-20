/// @description Insert description here
// You can write your code in this editor

event_inherited();

gold_value = 1;

///@METHOD path_receive_zumbi(_pathm _position)
function path_receive_zumbi(_path, _position){
	path_start(_path, spd, 0, 1);
	path_position = _position;
}