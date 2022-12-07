// AI Movement Logic

// Just Run
if justrun=true {
    move_towards_point(obj_smiley.x,obj_smiley.y,5);
} else {

// Initial Proximity Trigger for Chase
if distance_to_object(obj_smiley) < 200 {
    chase=true;
}

// New Proximity Trigger for Chase (Only one for life of instance)
if chase=true && runaway=false && distance_to_object(obj_smiley) < 400{
    move_towards_point(obj_smiley.x,obj_smiley.y,5);
}

// If obj_smiley is more than 400 pixels away, stop Chase
if chase=true && runaway=false && distance_to_object(obj_smiley) > 400 {
    move_towards_point(obj_smiley.x,obj_smiley.y,0);
}

// Flee in random direction away from obj_smiley after Collision Event with obj_smiley
if chase=false && runaway=true {
    move_towards_point(obj_smiley.x,obj_smiley.y,5);
    playerdirection = point_direction(x,y,obj_smiley.x,obj_smiley.y);
    direction = (playerdirection + (180 + random(40)) );
}
}

// Stop and Start Animation
if speed = 0 {
    image_speed = 0;
} else {
    image_speed = 2;
}