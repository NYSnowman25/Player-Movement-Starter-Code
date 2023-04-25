/// @description Watchtower Fireball

if (obj_player.y >= (y - 40)) {
	instance_create_layer(x, y, "Instances", obj_fireball);
}

firing = false;