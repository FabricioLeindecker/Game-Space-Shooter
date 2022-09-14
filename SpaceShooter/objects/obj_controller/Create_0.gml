/// @description Insert description here

//Deixa o jogo aleatório
randomize();

//Inicia o alarme em 1 segundo
alarm [0] = room_speed;

//Inicia a variável de pontos
pontos = 0;

//inicia a variável de level
level = 1;

//Variável para pontos necessarios para ganhar level
proximo_level = 100;

//Variável de controle para o game over
gameover_seq = noone;

//Variável de controle para o boss
criar_boss = true;

//Variável de cotrole para o level concluido
level_completo = false;

//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos){
	pontos += _pontos * level;	
	if (pontos > proximo_level){
		level ++;
		proximo_level *= 2;
	}
}
//Criando o método para gerar os inimigos
///@method cria_inimigos 
cria_inimigos = function(){
	var xx			= irandom_range(64, 1888);						
	var yy			= irandom_range(-96, -1520 - (level * 800));	
	var chance		= random_range(0, level);						
	var	inimigo		= obj_inimigo01;								
	if (chance > 2){												
		inimigo	= obj_inimigo02;	
	}
	instance_create_layer(xx, yy, "Inimigos", inimigo);	
}