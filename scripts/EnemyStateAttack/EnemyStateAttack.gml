// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAttack(){
	sprite_index = spr_anjo
	
	var distancia_do_player = player.x - x; //PEGANDO A DISTANCIA ENTRE ELE O PLAYER
	var dir_x = sign(player.x - x) // dir_x define se o player está na direita ou esquerda do inimigo
	if distancia_do_player < 0 distancia_do_player *= -1 //TRANSFORMA A DISTANCIA EM POSITIVA
	
	if distancia_do_player > 50 {
	state = EnemyState.CHASE
	}
	
}