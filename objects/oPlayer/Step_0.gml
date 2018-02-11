#region //识别玩家操作
//可操作状态
if (hascontrol)	
{
	//检测键盘输入
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space); 

	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;
	}
	//检测手柄输入
	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
}
//不可操作状态
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

#endregion

#region //移动

var move = key_right - key_left;

if move == 0 
{
//线性减速
	hsp = lerp(hsp,0,0.1)	
} else 
//横向移动
hsp = move * walksp;

//纵向移动
vsp = vsp + grv;

//地面起跳
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

//检测跳跃点碰撞起跳
if (collision_circle(x,y,27,oJumpPoint,true,true)) && (key_jump)
{
	vsp = -10;
}



#endregion

#region //碰撞检测
//横向碰撞
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//纵向碰撞
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
#endregion


#region //动画控制
//如果脚下没有墙体则在空中，播放跳跃的精灵动画

/*
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sigma_jump_1_strip12;
	if image_index == 11 image_speed = 0 ;
}
else
{
	if (sprite_index == sigma_jump_1_strip12) 
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);	
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sigma_stop_strip16;
	}
	else if (abs(hsp) < 4 && abs(hsp) > 0)
	{
		sprite_index = sigma_break_strip12;
		if image_index > 10 image_speed = 0 ;
	}
	else
	{
		sprite_index = sigma_run_strip8;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);
*/
#endregion
