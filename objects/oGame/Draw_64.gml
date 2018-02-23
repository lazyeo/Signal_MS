/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font_cn)
draw_set_halign(fa_right)
draw_text(display_get_gui_width()-10,40,"方向选择回车确认/F1切换全屏/ESC重新开始")
draw_text(display_get_gui_width()-10,80,"空格跳跃/A、D切换层/")
draw_set_halign(fa_left)
if(instance_exists(oPlayer)){
draw_text(10,40,"横向速度"+string(oPlayer.hsp))
draw_text(10,80,"纵向速度"+string(oPlayer.vsp))
draw_text(10,120,"输入状态"+string(oPlayer.hascontrol))
draw_text(10,160,"碰撞"+"X:"+string(oPlayer.collision_x)+"Y:"+string(oPlayer.collision_y))
}