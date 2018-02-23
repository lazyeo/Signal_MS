/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font_cn)
draw_set_halign(fa_right)
draw_text(display_get_gui_width()-10,40,"方向选择回车确认/F1切换全屏/ESC重新开始")
draw_text(display_get_gui_width()-10,80,"空格跳跃/A、D切换层/")
draw_set_halign(fa_left)
if(instance_exists(oPlayer)){
draw_text(10,40,"预览后"+string(preview_nex))
draw_text(10,80,"预览前"+string(preview_pre))
draw_text(10,120,"预览状态"+string(preview))
draw_text(10,160,"碰撞"+"X:"+string(oPlayer.collision_x)+"Y:"+string(oPlayer.collision_y))
}