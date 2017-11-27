///melee_enemy_knockback_state
attacked = true;
if (is_friction = true) {
    apply_enemy_friction(fric);
}


sprite_index = s_monkey_hit;
align_sprite();

if (alarm[0] <= 0) {
    state = melee_enemy_stun_state;
    alarm[1] = 10;
}
