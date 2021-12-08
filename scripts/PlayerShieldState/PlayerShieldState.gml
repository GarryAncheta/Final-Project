

if( instance_exists( obj_player ) )
{
	
	if( global.curr_shield <= 0 )
	{
		obj_player.curr_state = PLAYERSTATE.DEFAULT;
	}
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
				sprite_index = spr_player_idle_shielded;	
			}
			else if( sign( horizontal_spd ) == 1 )
			{
				image_xscale = 1;
				sprite_index = spr_player_walking_shielded;	
			}
			else if( sign( horizontal_spd ) == -1 )
			{
				image_xscale = -1;
				sprite_index = spr_player_walking_shielded;
			}
		}
		
	}
	
	if( place_meeting( x + horizontal_spd, y, obj_mummy ) || place_meeting( x + horizontal_spd, y, obj_scarab ) )
	{
		with( obj_player )
		{
			if( !invincible )
			{
				global.curr_health -= 5;	
			}
			
			invincible = true;
			alarm[1] = room_speed / 2;
			hitFrom = other.direction;
			direction = hitFrom;
			vert_spd += -4;
		}
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