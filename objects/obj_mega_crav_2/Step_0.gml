/// @description Movement Logic

vsp += grv;

//Chase Player
if (place_meeting(x, y + 1, obj_wall)) {
	if (obj_player.x > x) {
		hsp = 2;
	} if (obj_player.x < x) {
		hsp = -2;
	} if (distance_to_object(obj_player) = 0) {
		hsp = 0;
	}
} else {
	hsp = 0;
}


//Horizontal collision
if (place_meeting(x + hsp, y, obj_wall)) {
		while (!place_meeting(x + sign(hsp), y, obj_wall)) {
			x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp

//Attacks
if (!attack_1) and (!attack_2) and (!attack_3) {
	image_index = 0;
} if (attack_1) {
//	image_index = 1;
	show_debug_message(attacking);
	if (!attacking) {
		image_index = 1;
		alarm[1] = room_speed * 0.5;
		attacking = true;
	}
}

if (distance_to_object(obj_player) <= 0) {
	if (!attacking) {
		attack_1 = true;
	}
}






