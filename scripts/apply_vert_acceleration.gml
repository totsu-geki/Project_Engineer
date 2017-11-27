///apply_vertical_acceleration
var amount = argument[0];

if (vspd != 0) { 
    if (abs(vspd)-amount > 0) {
        vspd -= amount*image_xscale;
    } else {
        vspd = 0;
    }
}

