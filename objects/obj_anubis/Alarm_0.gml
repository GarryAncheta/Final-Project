if(can_shoot)
	{
		var bullet = instance_create_depth(x, y, -9, obj_anubis_laser);
		with (bullet)
		{
			direction = point_direction(x, y, obj_player.x, obj_player.y);
			speed = 10;
			image_angle = point_direction(x, y, obj_player.x, obj_player.y);
		}
		playLaserSound();
	}
alarm[0] = fire_rate;