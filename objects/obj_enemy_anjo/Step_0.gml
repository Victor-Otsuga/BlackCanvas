switch(state){
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
	
