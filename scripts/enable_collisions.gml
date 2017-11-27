///enable_collisions(collision_object)

var collision_object = argument0;

// Vertical collisions
repeat(abs(vspd)) {
    if (!place_meeting(x, y + sign(vspd), collision_object))
        y += sign(vspd); 
    else {
        vspd = 0;
        break;
    }
}

// Horizontal collisions
repeat(abs(hspd)) {
    var pixels = 4;
    // Move up a slope
    if (place_meeting(x + sign(hspd), y, collision_object) 
    && !place_meeting(x + sign(hspd), y - 1, collision_object)
    && !place_meeting(x + sign(hspd), y - 2, collision_object))
    {
        y -= 2;
    }
    else if (place_meeting(x + sign(hspd), y, collision_object) 
    && !place_meeting(x + sign(hspd), y - 1, collision_object))
    {
        y -= 1;
    }
    
    // Move down a slope
    if (!place_meeting(x + sign(hspd), y, collision_object) 
    && !place_meeting(x + sign(hspd), y + 1, collision_object) 
    && !place_meeting(x + sign(hspd), y + 2, collision_object)
    && place_meeting(x + sign(hspd), y + 3, collision_object))
    {
        y += 2;
    }
    else if (!place_meeting(x + sign(hspd), y, collision_object) 
    && !place_meeting(x + sign(hspd), y + 1, collision_object) 
    && place_meeting(x + sign(hspd), y + 2, collision_object))
    {
        y += 1;
    }
        
    if (!place_meeting(x + sign(hspd), y, collision_object))
        x += sign(hspd); 
    else {
        hspd = 0;
        break;
    }
}


