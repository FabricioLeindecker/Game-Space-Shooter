/// @description Insert description here

//Cria uma chance entre 0 e 100 para criar os upgrades do player
chance = random(100);

//Ativa o alarme para ele desaparecer com o tempo
alarm [0] = room_speed;

//Define uma velocidade e uma direção ao powerUp
speed		= 2;
direction	= irandom(359);

//Dependendo do powerup a cor muda
if (chance >= 70) {
	cor = c_red;	
}
else if (chance >= 30) {
	cor = c_lime;	
}
else {
	cor = c_aqua;	
}