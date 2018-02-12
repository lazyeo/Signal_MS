/// @description Update camera
if instance_exists(oPlayer) follow = oPlayer;
else if instance_exists(oPlayerRevive) follow = oPlayerRevive;
//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;


//Keep camera center inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//Screen shake
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("bg1"))
{
	layer_x("bg1",x/1.5);
}

if (layer_exists("bg2"))
{
	layer_x("bg2",x/2);
}
if (layer_exists("bg3"))
{
	layer_x("bg3",x/2.5);
}

if (layer_exists("bg4"))
{
	layer_x("bg4",x/3);
}

