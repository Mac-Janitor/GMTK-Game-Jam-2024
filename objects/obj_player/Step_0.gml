/// @description Insert description here
// You can write your code in this editor

// Check if a key is held down (e.g., the space bar)
if (keyboard_check(vk_space)) 
{
	image_yscale += stretch_speed; // Increase the scale
}
else if (image_yscale > 1)
{
	image_yscale -= stretch_speed; // Decrease the scale
}

if (starting_y_position > 256)
{
	var _new_sprite_height = starting_sprite_height * image_yscale;
	var _height_difference = _new_sprite_height - starting_sprite_height;
		
	show_debug_message("y: {0}", y);
	show_debug_message("starting_y_position: {0}", starting_y_position);
	show_debug_message("Sprite Height: {0}", sprite_height);
	show_debug_message("Starting Sprite Height: {0}", starting_sprite_height);
	show_debug_message("Height Difference: {0}", _height_difference);		
		
		
	y =  starting_y_position - _height_difference;
}

