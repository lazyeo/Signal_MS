/// @description 信息绘制
// You can write your code in this editor

draw_set_font(global.font_cn)	//设置中文字体
draw_set_color(c_white)			//设置绘制颜色

//操作提示
if(show_help_info){
	draw_set_halign(fa_right)
	draw_text(display_get_gui_width()-10,40,"键盘:方向键选择菜单/回车确认/方向键移动/X跳跃/Z C切换层/A D预览层")
	draw_text(display_get_gui_width()-10,80,"手柄:十字键选择菜单/A确认/左摇杆移动/A跳跃/LT RT切换层/LB RB预览层")
	draw_text(display_get_gui_width()-10,120,"F1切换全屏/ESC重新开始/F3 开启/关闭本操作提示")
}

//Debug信息
if( show_debug_info ){
	var file = ini_open(SAVEFILE);
	var target = ini_read_real("Variables","room",rPre_);
	var x_ = ini_read_real("Variables","pos_x",1)
	var y_ = ini_read_real("Variables","pos_y",1)
	ini_close()
	draw_set_halign(fa_left)
	draw_text(10,40,"存档房间"+string(target));
	draw_text(10,80,"存档坐标"+string(x_)+"+"+string(y_));



}