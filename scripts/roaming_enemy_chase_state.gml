///roaming_enemy_chase_state
attacked = false;
var dir = point_direction(x, y, o_player.x, o_player.y);
hspd = lengthdir_x(spd, dir);
sprite_index = s_donkey;
image_speed = .2;
align_sprite();


