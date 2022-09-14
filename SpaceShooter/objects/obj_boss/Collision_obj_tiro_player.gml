/// @description Insert description here

//Quando o boss não está no estado 4, ele perde 1 de vida a cada tiro
if (estado_atual != "estado 4") {
	if (vida_atual > 0) {
		vida_atual--;
	}
	else {
		instance_destroy();	
	}
}
instance_destroy(other);



