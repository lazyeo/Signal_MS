hsp = 0;			//横向移动速度
vsp = 0;			//纵向移动速度
grv = 0.3;			//重力加速度
walksp = 4;			//步行速度
controller = 0;		//0为键盘操作 1为手柄操作
hascontrol = true;	//允许操作

energy_max = 12;			//能量上限
energy = energy_max ;		//跳跃能量

if (instance_exists(oGame)){
	oGame.last_x = x
	oGame.last_y = y
}