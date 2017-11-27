///vertical_enemy_move_down_state
// align sprite
if (vspd != 0) {
    image_yscale = sign(vspd);
}


var ground = place_meeting(x, y-2, o_solid);
    
if (ground) {
    state = vertical_enemy_move_up_state
}

vspd += hoverspeed;
