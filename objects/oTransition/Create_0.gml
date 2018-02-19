/// @desc Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
//枚举类型
enum TRANS_MODE
{
	OFF,	//关闭
	NEXT,	//下一个
	GOTO,	//去往
	RESTART,//重新开始
	INTRO	//介绍
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
