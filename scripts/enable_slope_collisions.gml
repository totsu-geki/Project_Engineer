
var collision_object = argument0;
var yslope = 0; // Used to calculate movement along a slope

// Horizontal Collisions
if (place_meeting(x+hspd, y, collision_object)) {
    while (!place_meeting(x+sign(hspd), y, collision_object) && yslope <= abs(1*hspd)) {
    
    yslope += 1;
    }
    
    if (place_meeting(x+hspd, y-yslope, collision_object)) {
        while (!place_meeting(x+sign(hspd), y, collision_object)) {
            x += sign(hspd);
        }
    hspd = 0;
    } else {
    y -= yslope;
}
x += hspd;
}
