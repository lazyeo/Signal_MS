/// @desc 自动存档


//新建存档
if (last_x != 0 && last_y != 0){

//覆盖旧存档
if (file_exists(SAVEFILE))
{
	file_delete(SAVEFILE);
}

var file;
file = ini_open(SAVEFILE);
ini_write_real("Variables", "room", last_room); 	//记录当前关卡room id
ini_write_real("Variables", "pos_x",last_x);		//记录当前x坐标 
ini_write_real("Variables", "pos_y",last_y);		//记录当前y坐标
ini_close();
}