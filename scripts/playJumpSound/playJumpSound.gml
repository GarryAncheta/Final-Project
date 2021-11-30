// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playJumpSound()
{
	var jumpList = [snd_Jump, snd_Jump2, snd_Jump3, snd_Jump4];
	
	var jumpIndex = irandom_range(0, 3);
	audio_play_sound(jumpList[jumpIndex], 10, false);
}
