// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyGeneral(){
	//Fica no step dos inimigos
	
	//deve ser definido antes da execução dos scripts de estado, pois eles usam essa variável
	distancia_do_player = player.x - x // distância x entre o inimigo e o player
	
	switch(state)
	{
		case EnemyState.IDLE: EnemyStateIdle();break;	
		case EnemyState.CHASE: EnemyStateChase();break;
		case EnemyState.ATTACK: EnemyStateAttack();break;
	}
	
	#region TOMAR DANO E MORRER
	// TOMAR DANO
	function takeDamage(dano)
	{
		vida -= dano;
	}
	
	// MORRER
	if(vida <= 0){
		instance_destroy()
	}
	#endregion
	
}