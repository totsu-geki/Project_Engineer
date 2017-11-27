///player_knockback_state();

sprite_index = s_player_hurt;

if (hspd != 0) image_xscale = sign(hspd);

// Apply gravity
if (!place_meeting(x, y+1, o_solid)) {
    vspd += grav;
} else {
    vspd = 0;
    
    // Use friction
    apply_friction(hacc*2);
}

horizontal_move_bounce(o_solid);

// Change back to the move state
if (hspd == 0 && vspd == 0) {
    state = player_state_machine;
}






