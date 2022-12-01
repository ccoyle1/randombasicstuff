/// @description Insert description here
// You can write your code in this editor
rspeed = 5;
Point_dir = 0;
Is_Rotating = 0;

if keyboard_check(vk_right) 
{
	var angle = image_angle;
	motion_add(angle, + 0.2)
	Point_dir = image_angle + 90;
	Is_Rotating = 1;
	
if (Is_Rotating == 1)
{
   image_angle += sin(degtorad(Point_dir - image_angle))*rspeed;
}
}

if keyboard_check(vk_left) 
{
	//motion_add(image_angle, -0.2);
}

if keyboard_check(vk_up) 
{
	//image_angle = y + 1;
}

if keyboard_check(vk_down) 
{
	//image_angle = y - 1;
}

move_wrap(true, true, 5)