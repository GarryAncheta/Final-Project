x = obj_player.x;
y = obj_player.y;

image_angle = point_direction( x, y, mouse_x, mouse_y );

if( mouse_check_button_pressed( mb_left ) )
{
	if( can_attack )
	{
		image_speed = 1;
		can_attack = false;
		alarm[0] = attack_speed;
	}
}

if( ( image_angle > 90 ) && ( image_angle < 270 ) )
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;	
}