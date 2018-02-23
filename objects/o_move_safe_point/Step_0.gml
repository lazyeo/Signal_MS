/// @description Insert description here
// You can write your code in this editor
if move_dir {
	x = x + move_spd ;
	if (x-start_x >= move_dis) move_dir = -1 ;
	sprite_index = safe_point_move_right_strip11;
}else {
	x = x - move_spd ;
	if (x == start_x) move_dir = 1 ;
	sprite_index = safe_point_move_left_strip11;
}

if (place_meeting(x,y-1,oPlayer) ){
	with(oPlayer){
		x = x + other.move_spd*other.move_dir
	}
}