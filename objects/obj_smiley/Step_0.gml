/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_right) 
{
	motion_add(image_angle, 0.2);
}

if keyboard_check(vk_left) 
{
	motion_add(image_angle, -0.2);
}

if keyboard_check(vk_up) 
{
	image_angle = y + 1;
}

if keyboard_check(vk_down) 
{
	image_angle = y - 1;
}

move_wrap(true, true, 5)