if (!place_meeting(x, y+1, o_solid)) {
    vspd += grav;
    
    player_jump_state();
    
    // Player is on the ground
    if (hspd == 0) {
        sprite_index = s_player_idle;
    } else {
        sprite_index = s_player_run;
        image_speed = .6;
    }
}

