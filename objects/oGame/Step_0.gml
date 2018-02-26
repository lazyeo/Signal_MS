/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));	//设置游戏GUI尺寸匹配镜头尺寸

audio_sound_pitch(snd_delta,game_speed);	//通过游戏速度来控制BGM音调变化

if(instance_exists(oPlayer)){

#region //场景切换

if (oPlayer.key_previous == 1 && room_previous(room) != room_first) {
	room_goto_previous();
	room_switch = 1;
	oPlayer.ex_spd = 0 ;
	alarm[0] = 30;

}
if (oPlayer.key_next == 1 && room != room_last) {
	room_goto_next();
	room_switch = 1;
	alarm[0] = 30;
}


#endregion



#region //场景预览

	preview_pre = keyboard_check_pressed(ord("Q"));
	preview_nex = keyboard_check_pressed(ord("E"));


	if (gamepad_button_check_pressed(0,gp_shoulderlb))
	{
		preview_pre = 1;
	}
	
	if (gamepad_button_check_pressed(0,gp_shoulderrb))
	{
		preview_nex = 1;
	}

if !preview room_pre_ = room;	//非预览状态保存当前room为预览回切room
if (!oPlayer.hsp && !oPlayer.vsp )	//当玩家完全静止时才可进行预览操作
//判断是否按下预览按键
if ( abs(preview_pre-preview_nex)){
	//设置玩家角色透明度并禁止操作
	oPlayer.hascontrol = 0 ;
	oPlayer.image_alpha = 0.3;

	//判断当前room及按键执行预览操作
	if ( preview_pre && room_previous(room) != room_first) room_goto_previous()
	if ( preview_nex  && room != room_last) room_goto_next()
	//将状态设为开启预览
	preview = 1 ;
}else if (preview && keyboard_check_pressed(vk_anykey)) {
	 room_goto(room_pre_);	//在预览状态松开按键则回预览前room
	//重置玩家状态
	oPlayer.image_alpha = 1;	
	oPlayer.hascontrol = 1;
	preview = 0 ;
}
#endregion

}
