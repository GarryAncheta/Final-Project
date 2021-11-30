enum ANUBISSTATE
{
	DEFAULT,
	DAMAGE
}

function anubisDefaultState()
{
	if (distance_to_object(obj_player) < 64)
	{
		move_towards_point(-obj_player.x, -obj_player.y, 2);
		can_shoot = true;
	}
	
	else if (distance_to_object(obj_player) < 350)
	{
		move_towards_point(obj_player.x, obj_player.y, 2);
		can_shoot = true;
	}

	else if (distance_to_object(obj_player) > 350)
	{
		can_shoot = false;
	}
	
	if (alarm[0] < 0) 
	{
        alarm[0] = fire_rate;
    }
}