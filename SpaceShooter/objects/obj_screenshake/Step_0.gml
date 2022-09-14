/// @description Insert description here

//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Perde 5% por step
shake *= .95;

//Destroi o shake quando ele fica menor do que 0.5
if (shake < 0.5) {
	instance_destroy();	
}


