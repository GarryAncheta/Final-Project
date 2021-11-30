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
			show_debug_message( "Shot" );
			speed = 25;
			direction = other.image_angle + random_range( other.min_firing_accuracy, other.max_firing_accuracy );
			image_angle = direction;
		}
	}
}