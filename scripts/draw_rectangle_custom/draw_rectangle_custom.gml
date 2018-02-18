///@func draw_rectangle_custom(x,y,length,width,outline);
///@description 以给定坐标为原点绘制给定长宽的矩形
///@param x
///@param y
///@param length
///@param width
///@param outline
var x_ , y_ ,length_ , width_ ,outline_;
x_ = argument0;
y_ = argument1;
length_ = argument2;
width_ = argument3;
outline_ = argument4;

draw_rectangle(x_,y_,x_+length_,y_+width_,outline_);