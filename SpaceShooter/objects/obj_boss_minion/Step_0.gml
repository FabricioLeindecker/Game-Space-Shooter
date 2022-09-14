/// @description Insert description here

//Faz o minion ficar transparente ao levar dano
if (image_alpha < 1 && primeiro_tiro == false) {
	image_alpha += 1 / room_speed;
}

//Faz o minion aumentar e diminuir de tamanho
if (escala > 1.5 || escala < 1) {
	aumento_escala *= -1;	
}
escala += aumento_escala;

