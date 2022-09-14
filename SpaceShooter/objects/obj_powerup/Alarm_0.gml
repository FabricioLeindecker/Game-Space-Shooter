/// @description Insert description here

//Diminui o alpha com o tempo
image_alpha -= .1;

//Destroi o power up quando ele fica totalmente invísivel
if (image_alpha <= 0) {
	instance_destroy(id, false);	
}

//Repete o alarme
alarm[0] = room_speed;





