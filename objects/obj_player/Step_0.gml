move_left = keyboard_check( ord( "A" ) );
move_right = keyboard_check( ord( "D" ) );
jump = keyboard_check_pressed( vk_space ) || keyboard_check_pressed( ord( "W" ) );;

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