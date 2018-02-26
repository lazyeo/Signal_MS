/// @description Insert description here
// You can write your code in this editor
if need_revive{
	if (room != last_room) SlideTransition(TRANS_MODE.GOTO,last_room);
	else {
		instance_create_layer(last_x,last_y,"Player",oPlayerRevive)
		need_revive = 0 ;
	}
}