///enemy_death_state

if (image_index >= image_number - 1) {
    image_index = image_number-1;
    if (image_alpha > 0) { 
        image_alpha -= 1; 
    } else {
        instance_destroy(); 
    }
}
     
enable_collisions(o_solid);

