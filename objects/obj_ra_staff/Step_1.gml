x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y );

if( mouse_check_button( mb_left ) )
{
	if( can_fire )
	{
		can_fire = false;
		alarm[0] = firing_speed;
		with( instance_create_layer( x, y, "Shots", obj_staff_bolt ) )
		{
			speed = 25;
			direction = other.image_angle + random_range( global.min_firing_accuracy, global.max_firing_accuracy );
			image_angle = direction;
		}
	}
}