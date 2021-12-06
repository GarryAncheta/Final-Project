if( curr_health < 0 )
{
	instance_destroy();	
}

switch ( state )
{
	case ANUBISSTATE.DEFAULT:
		anubisDefaultState();
		break;
	case ANUBISSTATE.DAMAGE:
		break;
	default:
		break;
}