/// @description Enemy Collision

if (!disable) {
	if (slidedelay > 0) {
		instance_destroy(other);
	} else {
		disable = true;
		alarm[0] = room_speed * 2;
		image_blend = c_red;
	}
}
