/// @description Insert description here
// You can write your code in this editor
x = display_get_gui_width()/2-162;
y = display_get_gui_height()-26;

if(!instance_exists(oPlayer))
{
	exit;
}



draw_energy = lerp(draw_energy,oPlayer.energy,0.25);

if (oPlayer.energy > oPlayer.energy_max/3)	draw_set_color(c_green);
else if (oPlayer.energy > oPlayer.energy_max/6) draw_set_color(c_yellow);
else draw_set_color(c_red);

draw_rectangle_custom(x,y,307*draw_energy/oPlayer.energy_max,18,false)
draw_set_color(c_white)

draw_sprite(energy_meter,0,x,y);