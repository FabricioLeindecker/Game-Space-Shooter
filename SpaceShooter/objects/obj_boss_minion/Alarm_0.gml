/// @description Insert description here

//Cria o tiro do minion
instance_create_layer(x, y, "Tiros", obj_tiro_minion);

//Reativa o alarme
alarm[0] = room_speed / 2;

//Avisa que o minion já deu o primeiro tiro
primeiro_tiro = true;


