if( curr_health < 0 )
{
	instance_destroy();	
}

switch ( state )
{
	case SCARABSTATE.DEFAULT:
		scarabDefaultState();
		break;
	case SCARABSTATE.DAMAGE:
		break;
	default:
		break;
}