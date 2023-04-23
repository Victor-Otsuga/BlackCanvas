	vida = 100
	dano = 10
	spd = 2
	hspd = 1;
	grv = 0.4;
	vspd = grv;
	player = Obj_prota;
	
	state = EnemyState.IDLE

	enum EnemyState
	{ 
		IDLE,
		CHASE,
		ATTACK
	}