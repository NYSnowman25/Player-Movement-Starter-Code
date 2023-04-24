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
	if (!attacking) {
		image_index = 1;
		alarm[1] = room_speed * 0.5;
		attacking = true;
	}
} if (attack_2) {
	if (!attacking) {
		instance_create_layer(x, y, "Instances", obj_fireball_boss);
		alarm[10] = room_speed * 0.5;
		attacking = true;
	}
} if (attack_3) {
	if (!attacking) {
		vsp = -20;
		if (leap) {
			if (x < obj_player.x) {
				hsp = 10;
			} if (x > obj_player.x) {
				hsp = -10;
			} if (x == obj_player.x) {
				hsp = 0;
				if (vsp < 5) {
					vsp = 5;
				}
				leap = false;
				attacking = true;
			}
		}
		alarm[10] = room_speed * 0.5;
//		attacking = true;
	}
}

if (distance_to_object(obj_player) <= 0) {
	if (!attacking) {
		if (obj_player.x > x) {
			x += 2;
		} if (obj_player.x < x) {
			x -= 2;
		}
		attack_1 = true;
	}
} if (distance_to_object(obj_player) >= 120) and (obj_player.y - 50 <= y) {
	attack_2 = true;
} if (distance_to_object(obj_player) >= 200) {
	attack_3 = true;
}




