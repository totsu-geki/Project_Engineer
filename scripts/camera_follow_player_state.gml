///camera_follow_player_state()
if (instance_exists(o_player)) {
    var targetx= o_player.x+(o_player.image_xscale*36);
    var targety= o_player.y; 
    camera_move_to_target(targetx, targety, .2); 
    }

