/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y-1,oPlayer) && above_empty && oGame.preview == 0){
	alarm[0] = 1 ;	//120帧后开始闪烁
	above_empty = 0 ;	
}