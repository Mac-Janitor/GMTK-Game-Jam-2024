/// @description Insert description here
// You can write your code in this editor
if (room == rm_game)
{
	if (!instance_exists(obj_player))
	{
		show_debug_message("Game is over!");
		
		room_goto(rm_game_over);
	}
	
	score++;

	spawn_timer++;

	// Check if it's time to spawn a new car
	if (spawn_timer >= spawn_delay || !instance_exists(obj_platform)) {
	    // Determine a random lane (y-coordinate) for the platform
	    var _lane_y = choose(64, 416); // Replace with your lane Y coordinates

	    // Determine the starting X position based on the direction
		var _start_x = room_width;
		var _existing_x = room_width;
	    // Create the platform instance
		if (_lane_y < 256)
		{
			_start_x = -obj_platform.sprite_width;
			_existing_x = 0;
		}
		
		var _existing_obj_instance = instance_position(_existing_x, _lane_y, obj_platform);
		
		if (!_existing_obj_instance)
		{
		    instance_create_layer(_start_x, _lane_y, "Instances", obj_platform);
    
		    // Reset the spawn timer
		    spawn_timer = 0;
		    spawn_delay = irandom_range(spawn_range_start, spawn_range_end); // Reset the delay to a new random value			
		}
	}

	// Ensure there's always at least one car on the screen
	//if (!instance_exists(obj_car)) 
	//{
	//    spawn_timer = max(spawn_timer, spawn_delay); // Force a spawn if no cars are present
	//}	
}
else
{
	score = 0;
	spawn_timer = 0;
}
