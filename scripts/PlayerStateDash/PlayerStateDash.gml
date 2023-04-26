// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDash(){
	
	#region MOVIMENTAÇÃO

	image_speed = 1
	
	sprite_index = spr_dashing;
	

	if(hspd != 0) image_xscale = sign(hspd);

	//COLISÃO HORIZONTAL
	if place_meeting(x+ hspd,y,Obj_floor){
	while(!place_meeting(x+sign(hspd),y,Obj_floor))
	{
	x = x + sign(hspd)
	}
	hspd = 0;
	}
	direcao = sign(image_xscale)


	//COLISÃO VERTICAL
	if place_meeting(x,y+ vspd,Obj_floor){
	while(!place_meeting(x,y+sign(vspd),Obj_floor))
	{
	//y = y + sign(vspd)
	}
	vspd = 0;
	}
	//y=y+vspd;

		
	

	#endregion
	if image_index > 7.8
	{
		state = PlayerState.FREE;
	}else{ //caso não tenha chego o sprite vai ser iniciado ou continuar rodando caso ja tenha sido
		sprite_index = spr_dashing;
		
		if image_index > 5.8
		{
			image_speed = 0.5;
			x += direcao*2;
		}
		else
		{
			x+= direcao*14;
		}

		
	}
}