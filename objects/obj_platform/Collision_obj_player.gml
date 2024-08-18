/// @description Insert description here
// You can write your code in this editor
if (!collision_occurred)
{
	obj_player.image_yscale = 1;
	
	if (y > 256)
	{
		obj_player.y = y - obj_player.sprite_height + 1;
		obj_player.starting_y_position = obj_player.y;
	}
	else
	{
		obj_player.y = y + sprite_height - 1;
		obj_player.starting_y_position = obj_player.y;
	}
	
	collision_occurred = true;
}

if (player_can_move)
{
	obj_player.x += movement_amt;
	alarm[1] = room_speed * platform_speed; //1-second delay before movement triggers again
	player_can_move = false;
}