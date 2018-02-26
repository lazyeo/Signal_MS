/// @description Insert description here
// You can write your code in this editor
if need_revive{
	if (room != last_room) SlideTransition(TRANS_MODE.GOTO,last_room);
	else {
		need_revive = 0 ;
		instance_create_layer(last_x,last_y,"Player",oPlayerRevive)
	}
}