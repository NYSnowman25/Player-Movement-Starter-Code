/// @description Movement Logic

vsp += grv;

if (place_meeting(x, y + 1, obj_wall)) {
	if (obj_player.x > x) {
		hsp = 2;
	} if (obj_player.x < x) {
		hsp = -2;
	} if (distance_to_object(obj_player) <= 20) {
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