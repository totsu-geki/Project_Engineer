///droid_follow_player_state()


if (instance_exists(o_player)) { 
    var targetx= o_player.x+(o_player.image_xscale*32);
    var targety= o_player.y-15; 
    droid_move_to_target(targetx, targety, .25); 
    if (o_player.hspd != 0) {
        image_xscale = sign(o_player.hspd);

    }
}
