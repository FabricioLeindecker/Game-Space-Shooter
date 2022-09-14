/// @description Insert description here

//Troca a sprite do Boss quando ele muda para o estado 4
if (estado_atual != "estado 4") {
	sprite_index = spr_boss;	
}

//Executa o método para a troca de estado
troca_estado();

//Define cada um dos estados
if (estado_atual == "estado 1") {
	estado_01();
}
else if (estado_atual == "estado 2") {
	estado_02();
}
else if (estado_atual == "estado 3") {
	estado_03();
}
else if (estado_atual == "estado 4") {
	estado_04();
}


