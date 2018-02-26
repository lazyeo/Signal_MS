/// @desc 自动存档
if (instance_exists(oSavePoint)){
	if (oSavePoint.last_x != 0 && oSavePoint.last_y != 0 ){
		x = oSavePoint.last_x;
		y = oSavePoint.last_y;
	}
}
//覆盖旧存档
if (file_exists(SAVEFILE))
{
	var file = ini_open(SAVEFILE)
	x = ini_read_real("Variables", "pos_x",x);
	y = ini_read_real("Variables", "pos_y",y);
	file_delete(SAVEFILE);
}
//新建存档
var file;
file = ini_open(SAVEFILE);
ini_write_real("Variables", "room", room); 	//记录当前关卡room id
ini_write_real("Variables", "pos_x",x);		//记录当前x坐标 
ini_write_real("Variables", "pos_y",y);		//记录当前y坐标
ini_close();