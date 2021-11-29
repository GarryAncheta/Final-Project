if (distance_to_object(obj_player) < 350)
	{
		move_towards_point(obj_player.x, y, 2);
	}

else if (distance_to_object(obj_player) > 350)
	{
		x = x;
		y = y;
		speed = 0;
	}

vert_spd = vert_spd + _gravity;

if ( place_meeting( x, y + 1, obj_desert_floor ) && 
	((place_meeting(x + 64, y - 10, obj_desert_floor) && image_xscale == - 1) || 
	 (place_meeting(x - 64, y - 10, obj_desert_floor) && image_xscale == 1))) 
	{
		vert_spd = -7;
	}

if ( place_meeting( x + horizontal_spd, y, obj_desert_floor ) )
	{
		while( !place_meeting( x + sign( horizontal_spd ), y, obj_desert_floor ) )
		{
			x = x + sign( horizontal_spd );	
		}
	
		horizontal_spd = 0;
	}

x = x + horizontal_spd;

if( place_meeting ( x, y + vert_spd, obj_desert_floor ) )
	{
		while( !place_meeting( x, y + sign( vert_spd ), obj_desert_floor ) )
		{
			y = y + sign( vert_spd );	
		}
	
		vert_spd = 0;	
	}

y = y + vert_spd