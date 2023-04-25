/// @description Stun Player

disable = true;
hsp = 0;
image_blend = c_red;

alarm[0] = room_speed * 0.5;
instance_destroy(other);

global.player_hp -= 1;