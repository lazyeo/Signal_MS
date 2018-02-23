/// @description 追踪镜头
cam = view_camera[0];	//定义镜头
view_w_half = camera_get_view_width(cam) * 0.5;		//镜头横向中位
view_h_half = camera_get_view_height(cam) * 0.5;	//镜头纵向中位
if instance_exists(oPlayer) follow = oPlayer;	//有oPlayer则追踪oPlayer
else if instance_exists(oPlayerRevive) follow = oPlayerRevive;	//无则找是否有oPlayer生成器继续追踪

//有追踪目标则镜头目的坐标设为目标坐标
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//更新坐标
x += (xTo - x) / 15;
y += (yTo - y) / 15;


//保证镜头在视野中央room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//屏幕抖动
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//更新镜头坐标属性
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


//视差滚动背景与镜头的关系
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

