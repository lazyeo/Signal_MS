/// @description Insert description here
// You can write your code in this editor
var x_ , y_ ;

if ds_map_exists(oGame.revive_pos_x,room) x_ = ds_map_find_value(oGame.revive_pos_x,room);
if ds_map_exists(oGame.revive_pos_y,room) y_ = ds_map_find_value(oGame.revive_pos_y,room);
instance_create_layer(x_,y_,"Player",oPlayerRevive)
instance_destroy();