/// @description Insert description here
// You can write your code in this editor

// Reset the scale to default (circular shape)
//image_xscale = 1;
//image_yscale = 1;

// Check if a key is held down (e.g., the space bar)
if (keyboard_check(vk_space)) {
	
	var actual_height = sprite_height * image_yscale;
	
	//show_debug_message("" + actual_height);
	
	if (actual_height < room_height)
	{
	    // Stretch the blob into an ellipse
	    //image_xscale += 0.5; // Increase the horizontal scale
	    image_yscale += 0.1; // Decrease the vertical scale		
	}
}