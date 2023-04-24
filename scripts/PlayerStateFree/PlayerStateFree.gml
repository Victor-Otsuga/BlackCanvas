function PlayerStateFree(){
	
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

#region ATAQUE
// soma o tempo desde o ultimo frame ao tempo geral
cooldown += delta_time

// LOCAL DE APARECIMENTO DO ATAQUE
var ataque_x = x-32*image_xscale
var ataque_y = y-32

// SE APERTAR J E O TEMPO DESDE
// O ULTIMO ATAQUE FOR MAIOR QUE 2 (Pelo menos é o que tentei fazer)
if key_attack && cooldown >= 2
{
	//caso o ataque seja chamado ele entra no estado de ataques
	state = PlayerState.ATTACK
	global.cooldown = 0
	with (instance_create_layer(ataque_x, ataque_y,"Ataques",Obj_playerAtaque))
	{
		
		
		
		
		// VIRA O ATAQUE
		if other.image_xscale < 0
		{
			image_xscale *= -1	
		}
		dano = 10 + global.atk * 2;
		image_blend = 0 + ((c_red/5) * global.atk) + ((c_lime/5)*global.vel) + ((c_blue/5)*global.def)
		image_xscale *= 2
		image_yscale *= 2

	}
	
	
}

#endregion
#region //CONTROLE DE SPRITES





if(!place_meeting(x,y+1,Obj_floor)) //se o player não estiver em contato com chão
{
	sprite_index = spr_idle; // aki vai o sprite de inicio pulo
	if(sign(vspd) > 0.5) sprite_index = spr_idle; // aki vai o sprite durante pulo/queda
	else sprite_index=spr_idle; //caso contrario player fica normal
}
else
{
	if(hspd != 0 and state != PlayerState.ATTACK){ //Se a velocidade é diferente de 0(esta movendo)

		sprite_index = spr_moving;
	}
}
if hspd = 0{
	if place_meeting
	(x,y+1,Obj_floor){
		sprite_index=spr_idle
	}
}
if hspd != 0 and state != PlayerState.ATTACK{
	if place_meeting(x,y+1,Obj_floor){
		sprite_index = spr_moving;
	}
}


#endregion
#region CONTROLE DA COR


if keyboard_check_pressed(ord("R"))
{
	if(global.atk < 5){
		global.atk++
		//mudarCor()
	}
}

if keyboard_check_pressed(ord("G"))
{
	if(global.vel < 5){
		global.vel++
		//mudarCor()
	}
}

if keyboard_check_pressed(ord("B"))
{
	if(global.def < 5){
		global.def++
		//mudarCor()
	}
}

#endregion


}