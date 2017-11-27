///melee_enemy_chase_state
attacked = false;
var dir = point_direction(x, y, o_player.x, o_player.y);
hspd = lengthdir_x(spd, dir);
sprite_index = s_monkey_walk;
image_speed = .2;
align_sprite();

var dis = point_distance(x, y, o_player.x, o_player.y);
if (dis < 32) {
    image_index = 0; 
    state = melee_enemy_attack_state;
}

