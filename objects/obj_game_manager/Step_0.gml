/// @description Insert description here
// You can write your code in this editor
if (room == rm_game)
{
	if (!instance_exists(obj_player))
	{
		show_debug_message("Game is over!");
		
		room_goto(rm_game_over);
	}
}

score++;