/// @description Insert description here

//Inicia o alarme
alarm[0] = room_speed;

//inicia o alpha em 0, totalmente transparente
image_alpha	= 0;

//Define o primeiro tiro como falso
primeiro_tiro = false;

//Define a vida do minion
vida = 10;

//Define o tamanho da imagem e o aumento dela
escala			= 1;
aumento_escala	= 0.01;

//Checa se os minios estão colidindo, se sim um deles é criado a cima da posição original
if (place_meeting(x, y, obj_boss_minion)) {
	y -= 128;
}

