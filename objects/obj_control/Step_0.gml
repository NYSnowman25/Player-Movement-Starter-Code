/// @description Check Healths

if (global.player_hp <= 0) {
	game_restart()
}

if (global.boss_hp <= 0) {
	instance_destroy(obj_mega_crav_2);
}