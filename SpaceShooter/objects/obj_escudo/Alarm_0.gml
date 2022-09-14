/// @description Insert description here

//Muda a imagem do escudo
if (image_index > 0) { 
	image_index --;
	image_alpha -= 0.2;
}
else {
	instance_destroy();	
}

//Reativa o alarme
alarm[0] = room_speed;






