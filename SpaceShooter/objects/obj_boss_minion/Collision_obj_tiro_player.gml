/// @description Insert description here

//Tira a vida do minion ao levar tiro e o destroi quando a vida chega a zero
if (vida > 0) {
	vida--;
	image_alpha -= 0.08;
	aumento_escala *= 1.1;
}
else {
	instance_destroy();
}
//Destroi o tiro
instance_destroy(other);



