if( !isHit )
{
	draw_self();

}
else if (isHit )
{
	gpu_set_fog( true, c_white, 0, 0 );
	draw_self();
	gpu_set_fog( false, c_white, 0, 0 );
}

var _x =  x - 16;
var _y = y - 32;

var health_amount = curr_health / max_health;

draw_sprite_ext( spr_enemy_health_bar, 0, _x, _y, 1 * health_amount, 1, 0, c_white, 1 );
draw_sprite( spr_enemy_health_bar_border,0, _x, _y );