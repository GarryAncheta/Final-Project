enum SCARABSTATE
{
	DEFAULT,
	DAMAGE
}

function scarabDefaultState()
{
	var can_jump = false;
	if (distance_to_object(obj_player) < 350)
		{
			move_towards_point(obj_player.x, y, 1);
			can_jump = true;
		}

	else if (distance_to_object(obj_player) > 350)
		{
			x = x;
			y = y;
			speed = 0;
		}

	vert_spd = vert_spd + _gravity;

	if( ( place_meeting( x, y + 1, obj_wall ) && can_jump )) 
	{
		vert_spd = -7;
	}

	if( place_meeting( x + horizontal_spd, y, obj_wall ) ||
		place_meeting( x + horizontal_spd, y, obj_wall ))
	{
		while( !place_meeting( x + sign( horizontal_spd ), y, obj_wall ) ||
			   !place_meeting( x + sign( horizontal_spd ), y, obj_wall ))
		{
			x = x + sign( horizontal_spd );	
		}
	
		horizontal_spd = 0;
	}

	
	if( place_meeting ( x, y + vert_spd, obj_wall ) ||
		place_meeting ( x, y + vert_spd, obj_wall ))
	{
		while( !place_meeting( x, y + sign( vert_spd ), obj_wall ) ||
			   !place_meeting( x, y + sign( vert_spd ), obj_wall ))
		{
			y = y + sign( vert_spd );	
		}
	
		vert_spd = 0;
	
	}

	y = y + vert_spd
}