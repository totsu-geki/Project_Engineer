///apply_enemy_friction(amount)

var amount = argument[0];


if (hspd !=0) {
    if (abs(hspd) > amount) {
        if (hspd > 0) {
            hspd -= amount;
                } else { 
                    hspd += amount; 
            }
        } else {
            hspd = 0;
    }
}


