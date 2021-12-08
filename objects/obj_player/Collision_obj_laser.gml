if( !shielded )
{
	global.curr_health -= 8;
	invincible = true;
	alarm[1] = room_speed/2;
}
else
{
	global.curr_shield -= 16;
}
