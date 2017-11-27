///save_game()

// Make sure the player exists 
if (!instance_exists(o_player_stats)) exit;

// Create the save data structure
var save_data = ds_map_create();

with (o_player_stats) {
    // In game numbers
    save_data[? "hp"] = hp;  
    save_data[? "maxhp"] = maxhp;  
    save_data[? "scrap"] = scrap;
}
with (o_room_check) {
    // Location
    save_data[? "room"] = previous_room;
    save_data[? "x"] = lastx; 
    save_data[? "y"] = lasty;  
}
    

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "miaulinsave.txt");
file_text_write_string(file, save_string);
file_text_close(file);


