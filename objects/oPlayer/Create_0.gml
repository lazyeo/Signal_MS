hsp = 0;			//横向移动速度
vsp = 0;			//纵向移动速度
grv = 0.3;			//重力加速度
walksp = 0.3;		//横向加速度
sp_max = 3.5;		//最高速度
controller = 0;		//0为键盘操作 1为手柄操作
hascontrol = true;	//允许操作

energy_max = 12;			//能量上限
energy = energy_max ;		//跳跃能量

collision_x = 0 ;	//横向碰撞
collision_y = 0 ;	//纵向碰撞

if (instance_exists(oGame)){
	oGame.last_x = x
	oGame.last_y = y
}

//instance_create_depth(x,y,depth,oBbox)