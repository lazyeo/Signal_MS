/// @description Insert description here
// You can write your code in this editor
x = display_get_gui_width()/2-162;
y = display_get_gui_height()-44;

if(!instance_exists(oPlayer))
{
	exit;
}



draw_energy = lerp(draw_energy,oPlayer.energy,0.25);

var alpha_ = 1;

if (oPlayer.energy > oPlayer.energy_max/3)	draw_set_color($71CBBC);
//else if (oPlayer.energy > oPlayer.energy_max/6) draw_set_color(c_yellow);
else {
	draw_set_color($0D3C5C);
	alpha_ = wave(1,0.1,0.1,0);
}
draw_rectangle_custom(x,y,307*draw_energy/oPlayer.energy_max,18,alpha_,false)

draw_set_alpha(1)
draw_set_color(c_white)

draw_sprite(energy_meter,0,x,y);