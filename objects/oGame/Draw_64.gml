/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font_cn)
draw_set_color(c_white)
if(show_help_info){
draw_set_halign(fa_right)
draw_text(display_get_gui_width()-10,40,"上下选择菜单回车确认/F1切换全屏/ESC重新开始")
draw_text(display_get_gui_width()-10,80,"左右移动空格跳跃/A、D切换层/")
draw_text(display_get_gui_width()-10,120,"F3 开启/关闭本操作提示")
}

if(instance_exists(oPlayer) && show_debug_info ){
draw_set_halign(fa_left)
draw_text(10,40,"重生坐标X"+string(ds_map_find_value(oGame.revive_pos_x,room)))
draw_text(10,80,"重生坐标X"+string(ds_map_find_value(oGame.revive_pos_y,room)))
draw_text(10,120,"  ")
draw_text(10,160,"F2 开启/关闭Debug信息显示 ")

}