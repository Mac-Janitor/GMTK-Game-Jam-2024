// Check if the platform is collided with the player
if (!place_meeting(x, y, obj_player))
{
	collision_occurred = false;
}

if (can_move)
{
	if (y > 256 && movement_amt > 0)
	{
		movement_amt = -movement_amt;
	}
	x += movement_amt;
	can_move = false;
	alarm[0] = room_speed * 1; //1-second delay before movement triggers again
}

if (x < 0 -sprite_width || x > room_width) 
{
	if (y < 256)
	{
		// Spawn at the left side of the room
		var spawn_x = -sprite_width;  // Position outside the left boundary
		var spawn_y = top_spawn_y; //Position at top

		// Create the instance at the calculated position
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_platform);
	}
	if (y > 256)
	{
		// Spawn at the right side of the room
		var spawn_x = room_width;  // Position outside the right boundary
		var spawn_y = bottom_spawn_y; //Position at bottom

		// Create the instance at the calculated position
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_platform);
	}
	instance_destroy();
}