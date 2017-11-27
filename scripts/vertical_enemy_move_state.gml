///vertical_enemy_move_down_state
// align sprite
if (vspd != 0) {
    image_yscale = sign(vspd);
}


var ceiling = place_meeting(x, y-6, o_solid);
var ground = place_meeting(x, y+6, o_solid);
    
if (ground) {
    vspd -= hoverspeed;
 } else {
    if (ceiling) {
        vspd += hoverspeed;
    } else {
    vspd = hoverspeed*image_yscale;
    }
}



