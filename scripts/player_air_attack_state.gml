///player_air_attack_state
apply_gravity();
sprite_index = s_player_air_attack;
image_speed = .5;

if (place_meeting(x, y+1, o_solid)) {
    hspd = 0;
}


//Do Damage
if (image_index >= 3 && attacked == false) {
    var damage = instance_create(x+(o_player.image_xscale*40), y, o_damage); 
        damage.sprite_index = s_air_attack_damage;
        damage.image_xscale = image_xscale;
        damage.creator = id;
        damage.knockback = 8;
        damage.damage = 1;
        attacked = true;
 
}
