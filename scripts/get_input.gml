///get_input

// Movement Inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);
jump_release = keyboard_check_released(vk_space);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);

// Attack Inputs
attack = keyboard_check_pressed(ord('Z'));
heavy_attack = keyboard_check_pressed(ord('X'));
ability_one = keyboard_check_pressed(ord('A'));

// Misc Inputs
pause = keyboard_check_pressed(vk_escape);


// Get the Axis
xaxis = (right - left);
yaxis = (down - up);

// Override the controls for a gamepad
var gp_id = 0;
var thresh = .5;

if (gamepad_is_connected(gp_id)) {
    gamepad_set_axis_deadzone(0, .30);
    xaxis = gamepad_axis_value(gp_id, gp_axislh);
    yaxis = gamepad_axis_value(gp_id, gp_axislv);  
    
    // Movement Inputs
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    jump = gamepad_button_check_pressed(gp_id, gp_face1);
    jump_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;
    
    // Attack Inputs
    attack = gamepad_button_check_pressed(gp_id, gp_face3);
    heavy_attack = gamepad_button_check_pressed(gp_id, gp_face4);
    ability_one = gamepad_button_check_pressed(gp_id, gp_shoulderrb);
    ability_two = gamepad_button_check_pressed(gp_id, gp_face2);
    
    // Misc Inputs
    pause = gamepad_button_check_pressed(gp_id, gp_start);
    
}

