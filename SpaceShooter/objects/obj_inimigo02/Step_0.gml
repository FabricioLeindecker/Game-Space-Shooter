/// @description Insert description here

// Inherit the parent event
event_inherited();


//Muda o lado da tela que o inimigo esta, se esta na esquerda vai para direita e vice-versa
if (y > room_height/3 && posso_me_mover == true) {
	if (x > room_width/2) {
		hspeed = -4;
		posso_me_mover = false;
	}
	else{
		hspeed = 4;
		posso_me_mover = false;
	}
}
