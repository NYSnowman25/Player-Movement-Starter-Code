/// @description Collisions with Boss

if (mask_index == spr_player_slide) {
	if (!strike_boss) {
		global.boss_hp -= 10;
		strike_boss = true;
	}
}

if (obj_mega_crav_2.attack_1) and (obj_mega_crav_2.image_index == 2) {
	global.player_hp -= 1;
}