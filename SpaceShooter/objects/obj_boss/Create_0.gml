/// @description Insert description here

//Toca a musica do boss
audio_play_sound(snd_boss, 1, true);

//Define a vida máxima e a vida atual do Boss
vida_max	= 1500;
vida_atual	= vida_max;

//Escolhe entre um dos estados do boss
estado_atual = choose("estado 1", "estado 2", "estado 3");

//Define o tempo de espera do tiro do Boss
delay_tiro	= room_speed / 2;
espera_tiro	= 0;

//Define o tempo de espera para o Boss trocar de estado
delay_estado	= room_speed * 10;
espera_estado	= delay_estado;

//Velocidade de movimentação horizontal do Boss
velocida_horizontal = 3;

//Variável de controle para o Boss criar os minios que dão cura a ele
criar_minions = true;

//Cria uma função para um dos tiros do Boss
tiro_02 = function() {
	instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo02);
	audio_play_sound(sfx_laser1, 1, false);
}

//Cria um método para um dos tiros do Boss
///@method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita) {
	if (_direita) {
		var _posx = 160;
		
	}
	else {
		var _posx = -160;
	}
	instance_create_layer(x + _posx, y + 10, "Tiros", obj_tiro_inimigo01);
	audio_play_sound(sfx_laser1, 1, false);
}

//Método para o estado 1
estado_01 = function() {
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_02();
		espera_tiro = delay_tiro;
	}
}

//Método para o estado 2
estado_02 = function() {
	x += velocida_horizontal;
	if (x >= 1632 || x <= 288) {
		velocida_horizontal *= -1; 	
	}
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_01(true);
		tiro_01(false);
		espera_tiro = delay_tiro * 2
	}	
}
	
//Método para o estado 3
estado_03 = function() {
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_02();
		espera_tiro = delay_tiro * 2;
	}
	if (espera_tiro == delay_tiro) {
		tiro_01(false);
	}
	if (espera_tiro == delay_tiro + round(delay_tiro /2)) {
		tiro_01(true);	
	}	
}

//Método para o estado 4
estado_04 = function() {
	sprite_index = spr_boss_escuro;
	x += sign(room_width / 2 -x);
	if (criar_minions) {
		var _minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
		_minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
		criar_minions = false;
	}	
}

//cria o metodo para a troca de estado
troca_estado = function () {
	espera_estado--;
	if (espera_estado <= 0) {
		if (vida_atual > vida_max / 2) {
			estado_atual = choose ("estado 1", "estado 2", "estado 3");
		}
		else {
			estado_atual = choose ("estado 1", "estado 2", "estado 3", "estado 4");
		}
		espera_estado = delay_estado
		criar_minions = true;
	}	
}