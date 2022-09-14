/// @description Insert description here

//inicia a variável de velocidade
velocidade = 5;

//Tempo de espera do tiro
espera_tiro = room_speed;

//Inicia a variavel do level do tiro
level_tiro = 1;

//Define a vida do player
vida = 3;

//Define a quantida de escudos
escudos		= 3;
meu_escudo	= noone;

//Cria um método para o tiro do level 2
tiro2 = function() {
	var y_tiro	= y - sprite_height/3;
	var tiro_esquerda = instance_create_layer(x - 60, y_tiro + 10, "Tiros", obj_tiro02_player);
	tiro_esquerda.hspeed = -5;
	var tiro_direita = instance_create_layer(x + 60, y_tiro + 10, "Tiros", obj_tiro02_player);
	tiro_direita.hspeed = 5;
}

//Cria um método para o tiro 4
tiro4 = function() {
	var y_tiro	= y - sprite_height/3;
	var direcao = 75;
	repeat(3) {
		var meu_tiro = instance_create_layer(x, y_tiro + 10, "Tiros", obj_tiro_player);
		meu_tiro.direction = direcao;
		meu_tiro.image_angle = meu_tiro.direction - 90;
		direcao += 15;	
	}
}
	
//Cria um método para os tiros do player, cada a cada upgrade dropado o tiro melhora
atirando = function() {
	var tiro	= keyboard_check(vk_space); 
	var y_tiro	= y - sprite_height/3;		
	if (tiro) && alarm[0] == -1 {			
		alarm[0] = espera_tiro;
		audio_play_sound(sfx_laser2, 1, false);
		if (level_tiro == 1){
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player); 
		}
		else if (level_tiro == 2) {
			tiro2();
		}
		else if (level_tiro == 3) {
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
			tiro2();
		}
		else if (level_tiro == 4) {
			tiro4();
		}
		else {
			tiro2();
			tiro4();
		}
	}
}

//Cria um método para os powerUps
///@method level_up(chance)
level_up = function(_chance) {
	if (_chance >= 70) {
		if (level_tiro < 5) {
			level_tiro++;
		}
		else {
			ganhando_pontos(100);
		}
	}
	else if (_chance >= 30) {
		if (espera_tiro > 15) {
			espera_tiro *= 0.9;	
		}
		else {
			ganhando_pontos(10);
		}
	}
	else if (_chance) {
		if (velocidade < 10) {
			velocidade += 0.5;	
		}
		else {
			ganhando_pontos(10);	
		}
	}
}
	
//Cria um método para perder vida
///@method perde_vida()
perde_vida = function() {
	if (!meu_escudo) {
		if (vida > 0) {
			vida--;
			screenshake(5);
		}
		else {
			instance_destroy();
			screenshake(20);
		}
	}
}

//Cria um método para o uso do escudo
cria_escudo = function() {
	var shield = keyboard_check_pressed(ord("E"));
	if (shield && escudos > 0 && !meu_escudo) {
		var escudo	= instance_create_layer(x, y, "Escudo", obj_escudo);	
		escudo.alvo	= id;
		meu_escudo	= escudo;
		escudos--;
	}	
}