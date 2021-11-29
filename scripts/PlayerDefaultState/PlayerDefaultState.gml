enum PLAYERSTATE
{
	DEFAULT,
	MELEE,
	RANGE
}

if( instance_exists( obj_player ) )
{
	move_direction = move_right - move_left;

	horizontal_spd = move_direction * walk_spd;

	vert_spd = vert_spd + _gravity;

	if( place_meeting( x, y + 1, obj_wall )  && ( jump ) ) 
	{
		vert_spd = -7;
	}

	if( place_meeting( x + horizontal_spd, y, obj_wall ) )
	{
		while( !place_meeting( x + sign( horizontal_spd ), y, obj_wall ) )
		{
			x = x + sign( horizontal_spd );	
		}
	
		horizontal_spd = 0;
	}

	x = x + horizontal_spd;

	if( place_meeting ( x, y + vert_spd, obj_wall ) )
	{
		while( !place_meeting( x, y + sign( vert_spd ), obj_wall ) )
		{
			y = y + sign( vert_spd );	
		}
	
		vert_spd = 0;
	
	}

	y = y + vert_spd
}