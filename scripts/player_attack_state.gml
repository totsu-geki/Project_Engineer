///player_attack_state
hspd = 0;
sprite_index = s_player_attack_one;
image_speed = .5; 


//Do Damage
if (image_index >= 3 && attacked == false) {
    var damage = instance_create(x+(o_player.image_xscale*40), y, o_damage); 
   // damage.sprite_index = spr_player_attack_one_dmg;
        damage.image_xscale = image_xscale;
        damage.creator = id;
        damage.knockback = 7 ;
        damage.damage = 1;
        attacked = true;
 
}
