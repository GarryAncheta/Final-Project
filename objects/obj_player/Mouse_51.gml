if( global.curr_shield > 0 )
{
	shielded = true;
	sprite_index = spr_player_idle_shielded;
	curr_state = PLAYERSTATE.SHIELD;
}
else if( global.curr_shield <= 0 )
{
	if( global.curr_shield < 0 )
	{
		global.curr_shield = 0;	
	}
	shielded = false;
	sprite_index = spr_player_idle;
	curr_state = PLAYERSTATE.DEFAULT;
}