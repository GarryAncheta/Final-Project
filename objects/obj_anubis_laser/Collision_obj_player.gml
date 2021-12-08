instance_destroy();

if( !obj_player.shielded )
{
	global.curr_health -= 8;
}
else
{
	global.curr_shield -= 16;
}