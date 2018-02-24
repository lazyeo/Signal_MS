/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_delta,1,1)

/*调整pitch音高的同时速率也会相应变快/慢
if room == rMenu audio_sound_pitch(snd_delta,0.5);
else audio_sound_pitch(snd_delta,1.5);
*/

global.font_cn = font_add("pixel12.TTF",20,0,0,0,65535)




game_speed = 1;

preview = 0 ;

show_debug_info = 1 ;
show_help_info = 1 ;


//ds_map保存不同关卡重生点
revive_pos_x = ds_map_create();
revive_pos_y = ds_map_create();
