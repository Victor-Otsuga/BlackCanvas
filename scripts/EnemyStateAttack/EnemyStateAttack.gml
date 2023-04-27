// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAttack(){
	
	var dir_x = sign(player.x - x) // dir_x define se o player está na direita ou esquerda do inimigo
	
	if distancia_do_player < 0 distancia_do_player *= -1 //TRANSFORMA A DISTANCIA EM POSITIVA
	
	if distancia_do_player > 50 {
	state = EnemyState.CHASE
	}
	
	// SE TOCAR O PLAYER, TROCA PARA O SPRITE DE ATAQUE E DÁ DANO NO SÉTIMO FRAME
	if place_meeting(x, y, Obj_prota){
		sprite_index = spr_slime_ataque
		
		if image_index > 6.8
		{
			Obj_prota.takeDamage(dano)
		}
	}
	else // VOLTA PARA O SPRITE PADRÃO QUANDO O PLAYER SE AFASTA
	{
	sprite_index = spr_slime
	}
	
}