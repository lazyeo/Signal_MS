/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font_cn)
draw_set_halign(fa_right)
draw_text(display_get_gui_width()-10,40,"方向选择回车确认/F1切换全屏/ESC重新开始")
draw_text(display_get_gui_width()-10,80,"WASD移动/空格跳跃/J切换场景/0回满能量/K到下一场景")
draw_set_halign(fa_left)
draw_text(10,40,"复活坐标"+string(last_x)+","+string(last_y))
