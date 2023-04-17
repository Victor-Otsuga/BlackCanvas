attackDuration = 10
corOriginal = image_blend
function mudarCor(atkLevel, velLevel, defLevel)
{
	image_blend = corOriginal + ((c_red/5) * atkLevel) +
	((c_lime/5)*velLevel) + ((c_blue/5)*defLevel)
}

