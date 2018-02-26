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
if( instance_exists(oPlayer) && show_debug_info ){
draw_set_halign(fa_left)
draw_text(10,40,"预览状态"+string(preview));
draw_text(10,80,"控制状态"+string(oPlayer.hascontrol));
draw_text(10,120,"F2 开启/关闭Debug信息");


}