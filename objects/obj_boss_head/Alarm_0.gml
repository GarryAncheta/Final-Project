if (boss_health > 0)
{
	if (distance_to_object(obj_player) < 150 )
	{
		execute_melee();	
	}
	
	randomise();
	attack = irandom_range(0,1);
	
	if (attack == 0)
	{
		execute_venom();
	}
	else if (attack == 1)
	{
		execute_laser();
	}
}