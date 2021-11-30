function execute_melee(){
	if (!instance_exists(obj_melee))
	{
		instance_create_depth( 535, 515, 1, obj_melee);
	}
}

function execute_venom(){
	randomise();
	venom1 = irandom_range(0,6);
	venom2 = irandom_range(0,6);
	venom3 = irandom_range(0,6);
	
	if (venom1 == 0 or venom2 == 0 or venom3 == 0)
	{
		instance_create_depth( 100 , 0, 1, obj_venom)
	}
	if (venom1 == 1 or venom2 == 1 or venom3 == 1)
	{
		instance_create_depth( 175 , 0, 1, obj_venom)
	}
	if (venom1 == 2 or venom2 == 2 or venom3 == 2)
	{
		instance_create_depth( 250 , 0, 1, obj_venom)
	}
	if (venom1 == 3 or venom2 == 3 or venom3 == 3)
	{
		instance_create_depth( 325 , 0, 1, obj_venom)
	}
	if (venom1 == 4 or venom2 == 4 or venom3 == 4)
	{
		instance_create_depth( 400 , 0, 1, obj_venom)
	}
	if (venom1 == 5 or venom2 == 5 or venom3 == 5)
	{
		instance_create_depth( 475 , 0, 1, obj_venom)
	}
	if (venom1 == 6 or venom2 == 6 or venom3 == 6)
	{
		instance_create_depth( 550 , 0, 1, obj_venom)
	}
}

function execute_laser(){
	instance_create_depth(700, 200, 8, obj_laser);
}