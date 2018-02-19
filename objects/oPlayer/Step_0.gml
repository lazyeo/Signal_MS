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
	hsp = lerp(hsp,0,0.04)	
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
if floor(energy) > 0 {
if (collision_circle(x,y,28,oJumpPoint,true,true)) && (key_jump)
{
	image_speed = 1 ;
	var jump_ = instance_nearest(x,y,oJumpPoint)
	vsp = -10;
	energy = energy - 1 ;		//消耗能量
	
	//临时销毁跳跃点
	instance_create_depth(jump_.x,jump_.y,jump_.depth,jump_shade);
	instance_destroy(jump_)
}
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
	energy = energy + 0.02	//缓慢恢复能量
}
y = y + vsp;

//死亡碰撞检测
if (collision_circle(x,y,26,oDead,true,true))
{
	instance_create_depth(x,y,depth,oPlayerDie);
	instance_destroy();
}
#endregion


energy = clamp(energy,0,12);

#region //动画控制

if hascontrol{

//如果脚下没有墙体则在空中，播放跳跃的精灵动画

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sigma_jump_1_strip12;
	if floor(image_index) == 9 image_speed = 0 ;	//在最舒展的时候停止动画
	
}
else
{
	if (sprite_index == sigma_jump_1_strip12) //落地
	{
		image_speed = 1;						//恢复动画播放
		if floor(image_index) == 11 image_speed = 0 ;	//到最后一帧后停止动画
	}
	if (abs(hsp) < 1)								//没有横向速度
	{
		image_speed = 1;						
		sprite_index = sigma_stop_strip16;		//设为静止动画
	}
	else if (abs(hsp) < 4 && abs(hsp) > 0)		//线性减速刹车动画
	{
		image_speed = 1;						
		sprite_index = sigma_break_strip12;
		if floor(image_index) == 7 image_speed = 0 ;
	}
	else										//普通跑动
	{
		image_speed = 1;						
		sprite_index = sigma_run_strip8;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);			//根据运动朝向改变人物方向

}

#endregion