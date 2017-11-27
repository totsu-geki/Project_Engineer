///player_state_machine
attacked = false;
in_air = false;
var gp_id = 0;
gamepad_set_vibration(gp_id, 0, 0);

//Invincibility
if (alarm[0] <= 0) {
    invincible = false;
    image_blend = c_white;
}

var falling = vspd <=0;
var jumping = vspd >=0;

// Horizontal and Vertical Movement
if (!place_meeting(x, y+1, o_solid)) {
    vspd += grav;
    in_air = true;
    
    // Player is in the air
    if (vspd < 0) {
        sprite_index = s_player_jump;
        image_speed = .15;
        if (image_speed > 0) {
            if image_index > image_number - 1 {
                image_speed = 0;
            }
        }
    }
    
    if (vspd > 0) {
        sprite_index = s_player_fall;
        image_speed = .15;
        if (image_speed > 0) {
            if image_index > image_number - 1 {
                image_speed = 0;
            }
        }
    }
    
    // Control the jump height
    if (jump_release && vspd < -1) {
        vspd = -5;
    }
} else {
    vspd = 0;
    in_air = false;
    
    // Jumping code
    if (jump) {
        vspd = -11;
    } else {
        apply_vert_acceleration(vacc);
}
    
    // Player is on the ground
    if (hspd == 0) {
        sprite_index = s_player_idle;
        image_speed = .05;
    } else {
        if sprite_index != s_player_run && sprite_index != s_player_run_transition {
            sprite_index = s_player_run_transition;
            image_speed = .25;
            image_index = 0;
        }
    }
}

// Apply friction
var hspd_dir = (right-left)*hacc;
if (right || left) {
    hspd += approach(0, hspd_dir*spd, abs(hacc));
    
    // Cap speed
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
    
} else {
    apply_friction(fric);
}

var still = !jump && place_meeting(x, y+1, o_solid)

// Attack
if (attack) {
    if (still) {
        image_index = 0;
        state = player_attack_state;
    } else {
        if (!still) {
            image_index = 0;
            state = player_air_attack_state;
            }
        }
    }

// Dialog
if (up) {
    var speaker = instance_place(x+32, y+32, o_toby);
    if (speaker != noone) {
        // Talk to it
        with (speaker) {
            if (!instance_exists(dialog)) {
                dialog = instance_create(x+xoffset, y+yoffset, o_dialog_box);
                dialog.text = text;
            } else { 
                dialog.text_page++;
                dialog.text_count = 0;
                if (dialog.text_page > array_length_1d(dialog.text)-1) {
                    with (dialog) {
                        instance_destroy();
                        }
                    }
                }
            }
        }
    }

/// Special Abilities
// Abilty One: Scrapgun
var ability_cost = o_player_stats.scrap >= 1;
if (ability_one && ability_cost && still && o_player_stats.skill_one = true) {
    instance_create(o_player.x, o_player.y, o_projectile_parent);
    o_player_stats.scrap -= 1;
    state = player_ability_one_state;
}

// Ability Two: Bomb

// Cannon


