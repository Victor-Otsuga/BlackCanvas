// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttack(){
script_execute(Get_input)

#region MOVIMENTAÇÃO
var move = key_right - key_left

hspd = move*spd;
vspd = vspd + grv;

if(hspd != 0) image_xscale = sign(hspd);

//COLISÃO HORIZONTAL
if place_meeting(x+ hspd,y,Obj_floor){
while(!place_meeting(x+sign(hspd),y,Obj_floor))
{
x = x + sign(hspd)
}
hspd = 0;
}
x=x+hspd;

//COLISÃO VERTICAL
if place_meeting(x,y+ vspd,Obj_floor){
while(!place_meeting(x,y+sign(vspd),Obj_floor))
{
y = y + sign(vspd)
}
vspd = 0;
}
y=y+vspd;

//PULO
if place_meeting(x,y+1,Obj_floor) and key_jump{
	vspd -= 8
	}

#endregion


//se o ataque foi chamado em movimento
if(hspd != 0){

//verificando se chegou na sexta imagem do sprite
if (image_index > 5.8)
{
	state = PlayerState.FREE
	sprite_index = spr_moving
}else{ //caso não tenha chego o sprite vai ser iniciado ou continuar rodando caso ja tenha sido
	sprite_index = spr_player_ataque_moving
}

//se o ataque não foi chamado em movimento
}else{

//verificando se chegou na sexta imagem do sprite
if (image_index > 5.8)
{
	state = PlayerState.FREE
	sprite_index = spr_idle
}else{ //caso não tenha chego o sprite vai ser iniciado ou continuar rodando caso ja tenha sido
	sprite_index = spr_player_ataque
}
}	
	

	

}