/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

if(instance_exists(oPlayer)){



//减速
if (keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face2) ) game_speed = game_speed - 0.02 ;
else game_speed = game_speed + 0.02 ;

game_speed = clamp(game_speed,0.2,1)
}