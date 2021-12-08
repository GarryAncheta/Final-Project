
var scarab = instance_place( x, y, obj_scarab );
var mummy = instance_place( x, y, obj_mummy );
var anubis = instance_place( x, y, obj_anubis );


if( scarab != noone )
{
	with( scarab )
	{
		if( other.image_index != 0 )
		{
			curr_health -= other.sword_damage;
			isHit = true;
			alarm[1] = 3;
		}
	}
}

if( mummy != noone )
{
	with( mummy )
	{
		if( other.image_index != 0 )
		{
			curr_health -= other.sword_damage;
			isHit = true;
			alarm[1] = 3;
		}
	}
}

if( anubis != noone )
{
	with( anubis )
	{
		if( other.image_index != 0 )
		{
			curr_health -= other.sword_damage;
			isHit = true;
			alarm[1] = 3;
		}
	}
}