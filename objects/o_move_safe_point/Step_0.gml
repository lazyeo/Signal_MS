/// @description Insert description here
// You can write your code in this editor
move_spd = move_spd_set * oGame.game_speed

if move_dir {
	x = x + move_spd ;
	if (x-start_x >= move_dis) move_dir = -1 ;
	sprite_index = safe_point_move_right_strip11;
}else {
	x = x - move_spd ;
	if (x <= start_x) move_dir = 1 ;
	sprite_index = safe_point_move_left_strip11;
}

if (place_meeting(x,y-1,oPlayer) && oGame.preview == 0 ){
	with_move = 1
}else with_move = 0 

with(oPlayer){
		ex_spd = other.move_spd*other.move_dir*other.with_move
	}