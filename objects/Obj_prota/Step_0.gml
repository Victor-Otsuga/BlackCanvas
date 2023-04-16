#region CONTROLES
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(ord("W"))
#endregion

#region MOVIMENTAÇÃO
var move = key_right - key_left

hspd = move*spd;
vspd = vspd + grv;

if(hspd != 0) image_xscale = sign(hspd)*2;

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


#region //CONTROLE DE SPRITES




if(!place_meeting(x,y+1,Obj_floor)) //se o player não estiver em contato com chão
{
	sprite_inde = spr_idle; // aki vai o sprite de inicio pulo
	if(sign(vspd) > 0.5) sprite_index = spr_idle; // aki vai o sprite durante pulo/queda
	else sprite_inde=spr_idle; //caso contrario player fica normal
}
else
{
	if(hspd != 0){ //Se a velocidade é diferente de 0(esta movendo)

		sprite_index = spr_moving;
	}
}
if hspd = 0{
	if place_meeting
	(x,y+1,Obj_floor){
		sprite_index=spr_idle
	}
}
if hspd != 0{
	if place_meeting(x,y+1,Obj_floor){
		sprite_index = spr_moving;
	}
}
		
		
	


#endregion