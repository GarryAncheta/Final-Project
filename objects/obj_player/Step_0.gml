move_left = keyboard_check( ord( "A" ) ) || keyboard_check( vk_left );
move_right = keyboard_check( ord( "D" ) ) || keyboard_check( vk_right );
jump = keyboard_check_pressed( vk_space ) || keyboard_check_pressed( ord( "W" ) ) || keyboard_check_pressed( vk_up ) ;

switch ( curr_state )
{
	case PLAYERSTATE.DEFAULT:
		if( !shielded )
		{
			alarm[0] = room_speed / 2;
		}
		
		PlayerMovement();
		break;
	case PLAYERSTATE.HURT:
		PlayerMovement();
		PlayerStateHurt();
		break;
	case PLAYERSTATE.SHIELD:
		PlayerShieldState();
		break;
	default:
		break;
}

if(global.curr_health <= 0)
{
	audio_stop_all();
	room_goto(rm_lose);	
}