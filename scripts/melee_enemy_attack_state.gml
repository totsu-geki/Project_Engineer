///melee_enemy_attack_state
sprite_index = s_monkey_attack;
hspd = 0;

///Attack 
if (image_index >= 4) {
    var damage = instance_create(x+(o_enemy_monkey.image_xscale*48), y, o_damage);
    damage.sprite_index = s_damage;
    damage.image_xscale = image_xscale; 
    damage.creator = id;
    attacked = true;
    damage.damage = 1;
    damage.knockback = 2;
}



