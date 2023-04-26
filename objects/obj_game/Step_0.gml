script_execute(Get_input);

if key_pause{
	if	room != rm_Pause{
		if (instance_exists(Obj_prota)){
			Obj_prota.persistent = false;
			isPause = true;
			instance_activate_all()//desativa todas as instancias do jogo
		}
		room_previous(room)
		room_goto(rm_Pause)
	}else{
		room_goto_previous()
		instance_deactivate_all(true);
	}
}