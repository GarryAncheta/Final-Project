// Camera Height & Width
var camWidth = camera_get_view_width( view_camera[0] );
var camHeight = camera_get_view_height( view_camera[0] );


// Camera Coordinates
var camX = camera_get_view_x( view_camera[0] );
var camY = camera_get_view_y( view_camera[0] );

var playerX = obj_player.x - ( camWidth / 2);
var playerY = obj_player.y - ( camHeight / 2 );

var playerX = clamp( playerX, 0, room_width - camWidth );
var playerY = clamp( playerY, 0, room_height - camHeight );

camX = lerp( camX, playerX, camSmooth );
camY = lerp( camY, playerY, camSmooth );

camera_set_view_pos( view_camera[0], camX, camY );