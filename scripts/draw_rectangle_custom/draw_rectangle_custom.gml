///@func draw_rectangle_custom(x,y,length,width,alpha,outline);
///@description 以给定坐标为原点绘制给定长宽的矩形
///@param x
///@param y
///@param length
///@param width
///@param outline
var x_ , y_ ,length_ , width_ ,outline_,alpha_;
x_ = argument0;
y_ = argument1;
length_ = argument2;
width_ = argument3;
alpha_ = argument4;
outline_ = argument5;

draw_set_alpha(alpha_)
draw_rectangle(x_,y_,x_+length_,y_+width_,outline_);