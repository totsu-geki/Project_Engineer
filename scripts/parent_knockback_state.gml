///parent_knockback_state
is_friction = true; 

//Move
enable_collisions(o_solid);

if (hspd == 0) { 
    state = argument[0]; 
    is_friction = false
}
