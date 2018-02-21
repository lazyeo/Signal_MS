/// @description Insert description here
// You can write your code in this editor
if (oGame.switch_room = false)
{
	room_goto(oGame.target_room);
	oGame.switch_room = true;
} else {
	room_goto_previous();
	oGame.switch_room = false;
}