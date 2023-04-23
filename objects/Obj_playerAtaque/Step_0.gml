// SE A ANIMAÇÃO ACABAR, O ATAQUE É DESTRUÍDO
if (image_index == image_number - 1)
{
	instance_destroy()	
}

// SE A COLISÃO DO ATAQUE COLIDIR COM UM OBJ_ENEMY_ANJO
// O ENEMY_ANJO ESPECÍFICO TOMA DANO, ESSE CÓDIGO
// NÂO É GENERALIZADO
if instance_place(x, y, obj_enemy_anjo){
	while(controle_dano == 0){
		controle_dano = 1
		obj_enemy_anjo.takeDamage(dano)
	}
}