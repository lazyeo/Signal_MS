/// @description Insert description here
// You can write your code in this editor
if (switch_room = false)
{
	room_goto(oGame.target_room);
	switch_room = true;
} else {
	room_goto_previous();
	switch_room = false;
}