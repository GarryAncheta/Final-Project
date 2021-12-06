function playJumpSound()
{
	var jumpList = [snd_Jump, snd_Jump2, snd_Jump3, snd_Jump4];
	randomize();
	var jumpIndex = irandom_range(0, 3);
	audio_play_sound(jumpList[jumpIndex], 10, false);
}
