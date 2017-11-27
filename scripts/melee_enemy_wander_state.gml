///melee_enemy_wander_state
is_friction = false;
attacked = false;
sprite_index = s_monkey_walk;
if (is_friction = false) {
    apply_enemy_friction(0);
}


var wall_at_right = place_meeting(x+1, y, o_solid);
var wall_at_left = place_meeting(x-1, y, o_solid);
var ledge_at_right = !position_meeting(bbox_right+1, bbox_bottom+1, o_solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, o_solid);


if (wall_at_right || ledge_at_right) {
    hspd -= 1;
} else {
    if (wall_at_left || ledge_at_left) {
        hspd += 1;
    } else {
        hspd = image_xscale;
    }    
}

