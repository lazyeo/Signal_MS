/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

if(instance_exists(oPlayer)){

#region //场景切换

if (oPlayer.key_previous == 1 && room_previous(room) != room_first) room_goto_previous();
if (oPlayer.key_next == 1 && room != room_last) room_goto_next();

#endregion


#region //场景预览
	preview_pre = keyboard_check(ord("Q"));
	preview_nex = keyboard_check(ord("E"));
/*
	if (gamepad_button_check(0,gp_shoulderl))
	{
		preview_pre = 1;
	}
	
	if (gamepad_button_check(0,gp_shoulderr))
	{
		preview_nex = 1;
	}
*/	



if (preview = 0 &&preview_pre == 1 && room_previous(room) != room_first) {
	room_switch = room
	room_goto_previous();
	oPlayer.hascontrol = 0 ;
	oPlayer.image_alpha = 0.3;
	preview = abs(preview_nex - preview_pre);
}
if (preview = 0 &&preview_nex == 1 && room != room_last) {
	room_switch = room;
	room_goto_next();
	oPlayer.hascontrol = 0 ;
	oPlayer.image_alpha = 0.3;
	preview = abs(preview_nex - preview_pre);
}

if (preview && (preview_nex-preview_pre == 0)) {
 room_goto(room_switch);
 oPlayer.image_alpha = 1;
 oPlayer.hascontrol = 1;
}
#endregion



//减速
if (keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face2) ) game_speed = game_speed - 0.02 ;
else game_speed = game_speed + 0.02 ;

game_speed = clamp(game_speed,0.2,1)
}

