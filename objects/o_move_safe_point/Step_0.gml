/// @description Insert description here
// You can write your code in this editor
move_spd = move_spd_set * oGame.game_speed

if move_dir {
	x = x + move_spd ;
	if (x-start_x >= move_dis) move_dir = -1 ;
	sprite_index = safe_point_move_right_strip11
}else {
	x = x - move_spd ;
	if (x <= start_x) move_dir = 1 ;
	sprite_index = safe_point_move_left_strip11;
}

if (place_meeting(x,y-1,oPlayer)&& oGame.preview == 0)	{
	with_move = 1;
	with(oPlayer){
			var move_point = instance_nearest(x,y,o_move_safe_point);
			ex_spd = move_point.move_spd*move_point.move_dir*move_point.with_move
		}
}
else with_move = 0 ;

