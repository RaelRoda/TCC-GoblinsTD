/// @description Insert description here
// You can write your code in this editor

texto = "";

function switch_room(){
	switch(texto){
		case "Jogar":
			room_goto(r_test5);
		break;
		
		case "Map Select":
			room_goto(r_mapSelect);
		break;
		
		case "Como jogar":
			room_goto(r_ajuda);
		break;
		
		case "Sair":
			game_end();
		break;
		
		case "Voltar":
			room_goto(r_menu);
		break;
		
		case "Nick":
			room_goto(r_test3);
		break;
		
		case "Vinte":
			room_goto(r_test4);
		break;
		
		case "Galo":
			room_goto(r_test5);
		break;

	};

};