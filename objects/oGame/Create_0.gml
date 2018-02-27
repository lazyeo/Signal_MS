/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_delta,1,1)

/*调整pitch音高的同时速率也会相应变快/慢
if room == rMenu audio_sound_pitch(snd_delta,0.5);
else audio_sound_pitch(snd_delta,1.5);
*/

global.font_cn = font_add("pixel12.TTF",20,0,0,0,65535)		//定义中文字体


game_speed = 1;		//定义游戏速度
slow_down = 0.2;	//减速最终值

room_pre_ = noone;	//预览前场景

preview = 0 ;		//是否开启预览模式0为否，1为开启

show_debug_info = 0 ;										//debug信息是否显示，0为关闭，1为开启
show_help_info = 1 ;										//操作提示是否显示，0为关闭，1为开启

/*
//创建两个ds_map保存不同关卡重生点坐标
revive_pos_x = ds_map_create();
revive_pos_y = ds_map_create();
*/

room_switch = 0						//是否刚刚切换场景
