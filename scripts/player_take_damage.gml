///take_damage
if (state != player_hurt_state) {
    // Controller shake
    gamepad_set_vibration(0, 1, 1);
    // Flash Red
    image_blend = make_colour_rgb(220, 150, 150);
    vspd = -3;
    hspd = (sign(x-other.x)*8);
    
    
    // Invincibility
    if (alarm[0] <= 0) {
        invincible = true;
        alarm[0] = 30;
    }
    
    // Set the state
    state = player_hurt_state;
    
    enable_collisions(o_solid)
    
    if (instance_exists(o_player_stats)) {
        o_player_stats.hp -= 1;
    }
}
