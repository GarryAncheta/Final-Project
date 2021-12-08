randomise();

venom_type = irandom_range(0,1);
venom_flip = irandom_range(0,1);

if (venom_type == 0)
{
	object_set_sprite(obj_venom, spr_venom_1);
	if(venom_flip == 1)
	{
		image_xscale = -1;
	}
}

if (venom_type == 1)
{
	object_set_sprite(obj_venom, spr_venom_2);
	if(venom_flip == 1)
	{
		image_xscale = -1;
	}
}

venom_speed = 2.5;