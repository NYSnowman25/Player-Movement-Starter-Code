/// @description Operate Tower

if (!tower) {
	image_index = 1;
	if (obj_player.y <= (y + 32) ) {
		tower = true;
	}
} if tower {
	image_index = 0;
	if (!firing) {
		alarm[3] = room_speed * 2;
		firing = true;
	}
}