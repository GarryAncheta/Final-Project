if( curr_health < 0 )
{
	instance_destroy();	
}

switch ( state )
{
	case MUMMYSTATE.DEFAULT:
		mummyDefaultState();
		break;
	case MUMMYSTATE.DAMAGE:
		break;
	default:
		break;
}