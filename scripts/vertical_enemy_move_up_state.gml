///vertical_enemy_move_state
// align sprite
if (vspd != 0) {
    image_yscale = sign(vspd);
}

var ceiling = place_meeting(x, y+2, o_solid);


    
if (ceiling) {
    state = vertical_enemy_move_down_state
} 

vspd -= hoverspeed;
