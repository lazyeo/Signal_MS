/// @description Insert description here
// You can write your code in this editor
with(oPlayer) {
	energy = energy + 4
	energy = clamp(energy,0,12)
	};
instance_create_depth(x,y,depth,o_energy_revive)
audio_play_sound(snd_energy,1,0)
instance_destroy(self);
