if (global.current_boss_health > 0)
{
	
	randomise();
	attack = irandom_range(0,1);
	
	if (distance_to_object(obj_player) < 150 )
	{
		execute_melee();	
	}
	else if (attack == 1)
	{
		execute_laser();
	}
	else if(attack == 0)
	{
		execute_venom();
	}
}