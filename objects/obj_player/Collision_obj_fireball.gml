/// @description Restart

instance_destroy(other);

if (!disable) {
	disable = true;
	alarm[0] = room_speed;
	image_blend = c_red;
}

global.player_hp -= 1;