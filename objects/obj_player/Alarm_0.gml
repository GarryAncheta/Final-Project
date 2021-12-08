if( global.curr_shield < 0 )
{
	global.curr_shield = 0;	
}

if( global.curr_shield < global.max_shield )
{
	global.curr_shield += 5;
}