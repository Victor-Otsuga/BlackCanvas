// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerGeneral(){
	//Fica no step do Obj_Prota
	switch(state)
	{
		case PlayerState.FREE: PlayerStateFree();break;
		case PlayerState.ATTACK: PlayerStateAttack();break;
		case PlayerState.DASH: PlayerStateDash();break;
	} 

	if distance_to_object(obj_dogui) <= 10{
		if keyboard_check_pressed(ord("F")){
			game_save("savedojogo");
			show_debug_message("jogosalvo")
		}
	}
	
	// DEVERIA MORRER
	if(vida <= 0)
	{
		vspd = -14
		vida = 50
	}
}