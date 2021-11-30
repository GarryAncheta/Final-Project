draw_sprite_stretched( spr_health_bar_bg, 0, health_bar_x, health_bar_y, 32 * health_bar_scale_x, 32 * health_bar_scale_y );
draw_sprite_stretched( spr_boss_health_bar, 0, health_bar_x, health_bar_y, ( 32 * health_bar_scale_x) * ( global.current_boss_health / max_boss_health ), 32 * health_bar_scale_y );
draw_sprite( spr_boss_pic, 0, health_bar_x - 32, health_bar_y + 10);