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
	alarm[0] = room_speed * platform_speed; //1-second delay before movement triggers again
}

if (x < 0 -sprite_width || x > room_width) 
{
	instance_destroy();
}