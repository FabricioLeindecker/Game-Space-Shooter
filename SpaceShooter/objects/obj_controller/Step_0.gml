/// @description Insert description here

//Se o player morrer cria a sequencia do game over
if (!instance_exists(obj_player) && !gameover_seq && !level_completo) {
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	audio_play_sound(sfx_lose, 1, false);
}
	


