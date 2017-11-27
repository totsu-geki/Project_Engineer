///horizontal_enemy_move_state()

align_sprite();

var wall_at_right = place_meeting(x+1, y, o_solid);
var wall_at_left = place_meeting(x-1, y, o_solid);
var ledge_at_right = !position_meeting(bbox_right+1, bbox_bottom+1, o_solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, o_solid);

    
if (wall_at_right) {
    hspd -= hoverspeed;
    } else {
    if (wall_at_left) {
        hspd += hoverspeed;
    } else {
        hspd = hoverspeed*image_xscale;
    }
    
}
