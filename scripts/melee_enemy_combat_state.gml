///melee_enemy_combat_state
var sight = point_distance(x, y, o_player.x, o_player.y);

if (sight <= 64) {
    state = melee_enemy_attack_state;
    } else {
    state = melee_enemy_chase_state;
}

