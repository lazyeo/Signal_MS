/// @description 信息绘制
// You can write your code in this editor

draw_set_font(global.font_cn)	//设置中文字体
draw_set_color(c_white)			//设置绘制颜色

//操作提示
if(show_help_info){
	draw_set_halign(fa_right)
	draw_text(display_get_gui_width()-10,40,"上下选择菜单回车确认/F1切换全屏/ESC重新开始")
	draw_text(display_get_gui_width()-10,80,"左右移动空格跳跃/A、D切换层/Q、E预览层")
	draw_text(display_get_gui_width()-10,120,"F3 开启/关闭本操作提示")
}

//Debug信息
if( instance_exists(o_move_safe_point) &&show_debug_info ){
	var file = ini_open(SAVEFILE);
	var target = ini_read_real("Variables","room",rPre_);
	var x_ = ini_read_real("Variables","pos_x",1)
	var y_ = ini_read_real("Variables","pos_y",1)
	ini_close()
	draw_set_halign(fa_left)
	draw_text(10,40,"存档房间"+string(target));
	draw_text(10,80,"存档坐标"+string(x_)+"+"+string(y_));
	draw_text(10,120,"withMove"+string(o_move_safe_point.with_move));


}