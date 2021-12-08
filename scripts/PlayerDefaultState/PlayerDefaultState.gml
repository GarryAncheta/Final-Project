enum PLAYERSTATE
{
	DEFAULT,
	MELEE,
	RANGE,
	SHIELD,
}

if( instance_exists( obj_player ) )
{
	move_direction = move_right - move_left;

	horizontal_spd = move_direction * walk_spd;

	vert_spd = vert_spd + _gravity;

	if( place_meeting( x, y + 1, obj_wall ) ) 
	{
		if( jump )
		{
			vert_spd = -7;
			playJumpSound();
		}
		else
		{
			if( horizontal_spd == 0 )
			{
				sprite_index = spr_player_idle;	
			}
			else if( sign( horizontal_spd ) == 1 )
			{
				image_xscale = 1;
				sprite_index = spr_player_walking;	
			}
			else if( sign( horizontal_spd ) == -1 )
			{
				image_xscale = -1;
				sprite_index = spr_player_walking;
			}
		}
		
	}
	
	if( place_meeting( x + horizontal_spd, y, obj_mummy ) || place_meeting( x + horizontal_spd, y, obj_scarab ) )
	{
		horizontal_spd = -sign(horizontal_spd) * 64;
		global.curr_health -= 5;
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