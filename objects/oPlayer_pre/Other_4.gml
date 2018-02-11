/// @desc 自动存档

//覆盖旧存档
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//新建存档
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);	//记录当前关卡room id
file_text_close(file);