

if keyboard_check_pressed(ord("R"))
{
	if(atk < 5){
		atk++
		mudarCor()
	}
}

if keyboard_check_pressed(ord("G"))
{
	if(vel < 5){
		vel++
		mudarCor()
	}
}

if keyboard_check_pressed(ord("B"))
{
	if(def < 5){
		def++
		mudarCor()
	}
}

// Atualiza a cor, tendo como base sempre a cor original, somando todas as
// parcelas de cor de acordo com os estatus do player, se o atk é
// 2, será adicionado na cor 2 quintos de RED
function mudarCor(){
	image_blend = corOriginal + ((c_red/5) * atk) +
	((c_lime/5)*vel) + ((c_blue/5)*def)
}