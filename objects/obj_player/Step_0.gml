move_left = keyboard_check( ord( "A" ) ) || keyboard_check( vk_left );
move_right = keyboard_check( ord( "D" ) ) || keyboard_check( vk_right );
jump = keyboard_check_pressed( vk_space ) || keyboard_check_pressed( ord( "W" ) ) || keyboard_check_pressed( vk_up ) ;

switch ( curr_state )
{
	case PLAYERSTATE.DEFAULT:
		PlayerDefaultState();
		break;
	case PLAYERSTATE.MELEE:
		break;
	case PLAYERSTATE.RANGE:
		break;
	default:
		break;
}