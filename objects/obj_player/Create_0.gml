horizontal_spd = 0;
vert_spd = 0;
_gravity = 0.3;
walk_spd = 4;
knockback = 0.9;


health_bar_x = camera_get_view_x( 0 ) + 32;
health_bar_y = camera_get_view_y( 0 ) + 32;
health_bar_scale_x = 6;
health_bar_scale_y = 1;

// states
enum PLAYERSTATE
{
	DEFAULT,
	HURT,
	RANGE,
	SHIELD,
}

curr_state = PLAYERSTATE.DEFAULT;