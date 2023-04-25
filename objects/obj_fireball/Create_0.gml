/// @description Establish Direction

if (obj_player.x > obj_watchtower.x) {
	x_speed = 5;
	image_xscale = -1;
} if (obj_player.x < obj_watchtower.x) {
	x_speed = -5;
}