draw_sprite_stretched( spr_health_bar_bg, 0, health_bar_x, health_bar_y, 32 * health_bar_scale_x, 32 * health_bar_scale_y );
draw_sprite_stretched( spr_health_bar, 0, health_bar_x, health_bar_y, ( 32 * health_bar_scale_x) * ( global.curr_health / global.max_health ), 32 * health_bar_scale_y );

draw_sprite_stretched( spr_shield_bar_bg, 0, shield_bar_x, shield_bar_y, 32 * shield_bar_scale_x, 32 * shield_bar_scale_y );
draw_sprite_stretched( spr_shield_bar, 0, shield_bar_x, shield_bar_y, ( 32 * shield_bar_scale_x) * ( global.curr_shield / global.max_shield ), 32 * shield_bar_scale_y );