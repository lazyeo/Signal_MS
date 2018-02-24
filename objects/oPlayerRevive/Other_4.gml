/// @desc 自动存档

//覆盖旧存档
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//新建存档
var file;
file = ini_open(SAVEFILE);
ini_write_real("Variables", "room", room); 	//记录当前关卡room id
ini_write_real("Variables", "pos_x",x);		//记录当前x坐标 
ini_write_real("Variables", "pos_y",y);		//记录当前y坐标
ini_close();