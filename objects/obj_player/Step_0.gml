/// @description Insert description here
// You can write your code in this editor


enter_sellMode();
game_over();
check_vitoria();
win_condition();


if(keyboard_check_pressed(ord("P"))){
	audio_stop_all();
	room_goto(r_mapSelect);
};