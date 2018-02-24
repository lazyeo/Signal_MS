/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_delta,1,1)

/*调整pitch音高的同时速率也会相应变快/慢
if room == rMenu audio_sound_pitch(snd_delta,0.5);
else audio_sound_pitch(snd_delta,1.5);
*/

global.font_cn = font_add("pixel12.TTF",20,0,0,0,65535)

last_x = 0 ;
last_y = 0 ;


game_speed = 1;

preview = 0 ;

