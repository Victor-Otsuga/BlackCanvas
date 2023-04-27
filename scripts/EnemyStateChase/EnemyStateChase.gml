// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function EnemyStateChase(){
if(hspd != 0){image_xscale = sign(hspd); // troca o lado do sprite
	}
var dir_x = sign(player.x - x) // dir_x define se o player está na direita ou esquerda do inimigo
	
image_xscale = dir_x
		x = x + dir_x * spd //ISSO FAZ PERSEGUIR
		
		
		
if distancia_do_player < 0 distancia_do_player *= -1 //TRANSFORMA A DISTANCIA EM POSITIVA

//CASO A DISTANCIA ENTRE O MOB E O PLAYER FOR MAIOR QUE 240 O MOB ENTRA EM PATRULHA (MODO IDLE)
if distancia_do_player > 240{
state = EnemyState.IDLE
}

if distancia_do_player < 50{
state = EnemyState.ATTACK
}

}