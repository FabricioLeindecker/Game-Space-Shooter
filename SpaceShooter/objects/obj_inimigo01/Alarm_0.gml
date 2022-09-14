/// @description Insert description here

//Cria o tiro do inimigo
atirando();

//Reinicia o alarme para o inimigo poder atirar denovo
alarm [0] = random_range(1, 3) * room_speed;
