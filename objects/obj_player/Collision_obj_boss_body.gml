if( !shielded )
{
	global.curr_health -= 1;
	invincible = true;
	alarm[1] = room_speed/2;
}
else
{
	global.curr_shield -= 5;
}