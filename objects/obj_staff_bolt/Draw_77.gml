if( place_meeting( x, y, obj_wall ) )
{
	instance_destroy();	
}

var scarab = instance_place( x, y, obj_scarab );
var mummy = instance_place( x, y, obj_mummy );
var anubis = instance_place( x, y, obj_anubis );

if( scarab != noone )
{
	instance_destroy();
	with( scarab )
	{
		curr_health -= other.bolt_damage;
		isHit = true;
		alarm[1] = 3;
	}
}

if( mummy != noone )
{
	instance_destroy();
	with( mummy )
	{
		curr_health -= other.bolt_damage;	
		isHit = true;
		alarm[1] = 3;
	}
}

if( anubis != noone )
{
	instance_destroy();
	with( anubis )
	{
		curr_health -= other.bolt_damage;
		isHit = true;
		alarm[1] = 3;
	}
}