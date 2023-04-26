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