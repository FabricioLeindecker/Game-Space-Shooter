/// @description Insert description here

//Cria a explosão ao ser destruido
instance_create_layer(x, y, layer, obj_explosao);

//Utiliza o metodo de ganhar pontos ao destruir o inimigo
ganhando_pontos(pontos);

//Tem a chance de dropar um power up
dropa_item(chance);

//Cria o screenshake
screenshake(10);

//Aumenta o contagem de inimigos mortos
global.total_inimigos++;
