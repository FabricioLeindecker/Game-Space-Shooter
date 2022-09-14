/// @description Insert description here

//Movendo o player
var up, down, left, right; 
up		= keyboard_check(ord("W"));	
down	= keyboard_check(ord("S"));
left	= keyboard_check(ord("A")); 
right	= keyboard_check(ord("D")); 
x += (right - left) * velocidade;	
y += (down - up) * velocidade;		

//Trava o player para ele nao sair da tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//Cria o escudo do player ao pressionar a tecla E
cria_escudo();

//Executa o método para atirar
atirando();
