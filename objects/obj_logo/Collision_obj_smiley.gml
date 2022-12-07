// Sets variables to initiate Flee and an Alarm to begin Chase again
chase=false;
runaway=true;
justrun=false;
alarm_set(0,40);

// Removes one health point after collision of enemy and char objects
health -= 1;
if health < 1 {
   room_restart();
}

// Moves instance away from char (Provides Object Overlap Protection)
var dir;
var move_dis = 32;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    dir = random(360);

// Move in opposite direction of object in collision
else
    dir = point_direction(other.x,other.y,x,y);