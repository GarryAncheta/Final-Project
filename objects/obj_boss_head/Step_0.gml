if (global.current_boss_health > 0)
{
	if (alarm[0] == -1)
	{
		alarm[0] = 15;	
	}
}
else
{
	audio_stop_all();
	room_goto(rm_win);
}