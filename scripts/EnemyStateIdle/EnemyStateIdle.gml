// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateIdle(){

#region MOVIMENTAÇÃO
	
	function patrulha() //FUNÇAO PRO MOB SEGUIR O PLAUER
	{
		if(hspd != 0) image_xscale = sign(hspd);

		//COLISÃO HORIZONTAL
		if place_meeting(x + (hspd * spd),y,Obj_floor)
		{
			hspd = hspd * -1;
		}
		
		x+=hspd * spd;
		

		//COLISÃO VERTICAL
		if place_meeting(x,y+ vspd,Obj_floor){
		while(!place_meeting(x,y+sign(vspd),Obj_floor))
		{
		y = y + sign(vspd)
		}
		vspd = 0;
		}
		y=y+vspd;
	}
	
	// PERSEGUIÇÃO
	// dir_x define se o player está na direita ou esquerda do inimigo

	
	// Se a distancia do player for negativa, vira positiva
	if distancia_do_player < 0 distancia_do_player *= -1
	
	//SE A DISTANCIA DO PLAYER FOR MENOR QUE 240 O MOB ENTRA EM CHASE
	if distancia_do_player < 240 
	{	
		state = EnemyState.CHASE	
	}
	else{
		patrulha()
	}


	#endregion
	
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

