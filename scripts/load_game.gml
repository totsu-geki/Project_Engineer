///load_game
var file = file_text_open_read(working_directory+"miaulinsave.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string); 

var save_room = save_data[? "room"];
if (room != save_room) {
    room_goto(save_room);
}

with (o_room_check) {
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "y"];
    if (instance_exists(o_player)) {
        o_player_stats.visible = true;
        o_player_stats.persistent = true;
    } else {
        instance_create(x, y, o_pause);
        instance_create(player_xstart, player_ystart, o_player);
        instance_create(x, y, o_player_stats);
        o_player_stats.visible = true;
        o_player_stats.persistent = true;
    }
    with (o_player_stats) {
        hp = save_data[? "hp"];
        maxhp = save_data[? "maxhp"];
        scrap = save_data[? "scrap"];
    }
}

ds_map_destroy(save_data);
