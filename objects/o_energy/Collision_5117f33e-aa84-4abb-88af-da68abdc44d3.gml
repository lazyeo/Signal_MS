/// @description Insert description here
// You can write your code in this editor
with(oPlayer) {
	energy ++
	energy = clamp(energy,0,12)
	};
instance_create_depth(x,y,depth,o_energy_revive)
instance_destroy(self);
