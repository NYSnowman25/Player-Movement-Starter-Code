/// @description Collisions with Boss

//Attack Boss
if (mask_index == spr_player_slide) {
	if (!strike_boss) {
		global.boss_hp -= 10;
		strike_boss = true;
	}
}

//Boss Attack
if (obj_mega_crav_2.attack_1) and (obj_mega_crav_2.image_index == 2) {
	if (!slam) {
		global.player_hp -= 1;
		slam = true;
		alarm[9] = room_speed;
	}
}