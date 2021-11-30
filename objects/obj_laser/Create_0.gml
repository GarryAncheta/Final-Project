randomise();

laser_type = irandom_range(0,1);

if (laser_type == 0)
{
	object_set_sprite(obj_laser, spr_laser_1);
}

if (laser_type == 1)
{
	object_set_sprite(obj_laser, spr_laser_2);
}

laser_speed = 5;

goto = true;
if (goto == true)
{
	point_dir = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle += (point_dir - image_angle);
	
	move_towards_point(obj_player.x, obj_player.y, laser_speed);
	goto = false;	
}