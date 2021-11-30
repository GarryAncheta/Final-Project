function playLaserSound()
{
	var laserList = [snd_Laser_Shoot, snd_Laser_Shoot2, snd_Laser_Shoot3,
					 snd_Laser_Shoot4, snd_Laser_Shoot5, snd_Laser_Shoot6];
	var laserIndex = irandom_range(0, 5);
	audio_play_sound(laserList[laserIndex], 10, false);
}