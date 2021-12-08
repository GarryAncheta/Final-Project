ra_staff = instance_nearest( x, y, obj_ra_staff );
if( ra_staff != noone )
{
	with( ra_staff )
	{
		instance_destroy();	
	}
}

ra_sword = instance_nearest( x, y, obj_ra_sword );
if( ra_sword == noone )
{
	instance_create_depth( x, y, -100, obj_ra_sword );
}