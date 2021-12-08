var camera_x = camera_get_view_x( view_camera[0] );

layer_x( "Front_BG", camera_x * 0.4 );
layer_x( "Middle_Front_BG", camera_x * 0.7 );
layer_x( "Middle_Back_BG", camera_x * 0.8 );
layer_x( "Back_BG", camera_x * 0.9 );
layer_x( "pyramid_BG", camera_x * .9 );
