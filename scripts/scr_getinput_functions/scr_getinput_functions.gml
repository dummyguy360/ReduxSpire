function scr_getinput()
{
    key_up = false;
    key_up2 = false;
    key_right = false;
    key_right2 = false;
    key_left = false;
    key_left2 = false;
    key_down = false;
    key_down2 = false;
    key_jump = false;
    key_jump2 = false;
    key_jump_release = false;
    key_slap = false;
    key_slap2 = false;
    key_taunt = false;
    key_taunt2 = false;
    key_attack = false;
    key_attack2 = false;
    key_shoot = false;
    key_shoot2 = false;
    key_start = false;
    key_start2 = false;
    key_escape = false;
    stickpressed = false;
    
    if (global.shellactivate)
        exit;
    
    if (keyboard_check_pressed(vk_f1))
        scr_resetinput();
    
    var _dvc = global.player_input_device;
    gamepad_set_axis_deadzone(_dvc, 0.4);
    key_up = keyboard_check(global.key_up) || gamepad_button_check(_dvc, global.key_upC) || gamepad_axis_value(_dvc, gp_axislv) < 0;
    key_up2 = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(_dvc, global.key_upC) || (gamepad_axis_value(_dvc, gp_axislv) < -0.5 && stickpressed == 0);
    key_right = keyboard_check(global.key_right) || gamepad_button_check(_dvc, global.key_rightC) || gamepad_axis_value(_dvc, gp_axislh) > 0;
    key_right2 = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(_dvc, global.key_rightC) || (gamepad_axis_value(_dvc, gp_axislh) > 0.5 && stickpressed == 0);
    key_left = -(keyboard_check(global.key_left) || gamepad_button_check(_dvc, global.key_leftC) || gamepad_axis_value(_dvc, gp_axislh) < 0);
    key_left2 = -(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(_dvc, global.key_leftC) || (gamepad_axis_value(_dvc, gp_axislh) < -0.5 && stickpressed == 0));
    key_down = keyboard_check(global.key_down) || gamepad_button_check(_dvc, global.key_downC) || gamepad_axis_value(_dvc, gp_axislv) > 0;
    key_down2 = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(_dvc, global.key_downC) || (gamepad_axis_value(_dvc, gp_axislv) > 0.5 && stickpressed == 0);
    key_jump2 = keyboard_check(global.key_jump) || gamepad_button_check(_dvc, global.key_jumpC);
    key_jump = keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(_dvc, global.key_jumpC);
    key_jump_release = keyboard_check_released(global.key_jump) || gamepad_button_check_released(_dvc, global.key_jumpC);
    key_slap = keyboard_check(global.key_slap) || gamepad_button_check(_dvc, global.key_slapC);
    key_slap2 = keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(_dvc, global.key_slapC);
    key_taunt = keyboard_check(global.key_taunt) || gamepad_button_check(_dvc, global.key_tauntC);
    key_taunt2 = keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(_dvc, global.key_tauntC);
    key_attack = keyboard_check(global.key_attack) || gamepad_button_check(_dvc, global.key_attackC) || gamepad_button_check(_dvc, gp_shoulderrb);
    key_attack2 = keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(_dvc, global.key_attackC) || gamepad_button_check_pressed(_dvc, gp_shoulderrb);
    key_shoot = keyboard_check(global.key_shoot) || gamepad_button_check(_dvc, global.key_shootC);
    key_shoot2 = keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(_dvc, global.key_shootC) || gamepad_button_check_pressed(_dvc, gp_shoulderl);
    key_start = keyboard_check(global.key_start) || gamepad_button_check(_dvc, global.key_startC);
    key_start2 = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(_dvc, global.key_startC);
    key_special = keyboard_check(global.key_special) || gamepad_button_check(_dvc, global.key_specialC);
    key_special2 = keyboard_check_pressed(global.key_special) || gamepad_button_check_pressed(_dvc, global.key_specialC);
    key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check(_dvc, gp_select);
    
    if (gamepad_axis_value(_dvc, gp_axislh) > 0.5 || gamepad_axis_value(_dvc, gp_axislh) < -0.5 || gamepad_axis_value(_dvc, gp_axislv) > 0.5 || gamepad_axis_value(_dvc, gp_axislv) < -0.5)
        stickpressed = true;
    else
        stickpressed = false;
    
    return true;
}

function scr_keyname(arg0)
{
    if (arg0 == 37)
        return "LEFT";
    
    if (arg0 == 39)
        return "RIGHT";
    
    if (arg0 == 38)
        return "UP";
    
    if (arg0 == 40)
        return "DOWN";
    
    if (arg0 == 13)
        return "ENTER";
    
    if (arg0 == 27)
        return "ESCAPE";
    
    if (arg0 == 32)
        return "SPACE";
    
    if (arg0 == 16)
        return "SHIFT";
    
    if (arg0 == 17)
        return "CONTROL";
    
    if (arg0 == 18)
        return "ALT";
    
    if (arg0 == 8)
        return "BACKSPACE";
    
    if (arg0 == 9)
        return "TAB";
    
    if (arg0 == 36)
        return "HOME";
    
    if (arg0 == 35)
        return "END";
    
    if (arg0 == 46)
        return "DELETE";
    
    if (arg0 == 45)
        return "INSERT";
    
    if (arg0 == 33)
        return "PAGE UP";
    
    if (arg0 == 34)
        return "PAGE DOWN";
    
    if (arg0 == 19)
        return "PAUSE";
    
    if (arg0 == 44)
        return "PRINTSCREEN";
    
    if (arg0 == 112)
        return "F1";
    
    if (arg0 == 113)
        return "F2";
    
    if (arg0 == 114)
        return "F3";
    
    if (arg0 == 115)
        return "F4";
    
    if (arg0 == 116)
        return "F5";
    
    if (arg0 == 117)
        return "F6";
    
    if (arg0 == 118)
        return "F7";
    
    if (arg0 == 119)
        return "F8";
    
    if (arg0 == 120)
        return "F9";
    
    if (arg0 == 121)
        return "F10";
    
    if (arg0 == 122)
        return "F11";
    
    if (arg0 == 123)
        return "F12";
    
    if (arg0 == 96)
        return "NUMPAD 0";
    
    if (arg0 == 97)
        return "NUMPAD 1";
    
    if (arg0 == 98)
        return "NUMPAD 2";
    
    if (arg0 == 99)
        return "NUMPAD 3";
    
    if (arg0 == 100)
        return "NUMPAD 4";
    
    if (arg0 == 101)
        return "NUMPAD 5";
    
    if (arg0 == 102)
        return "NUMPAD 6";
    
    if (arg0 == 103)
        return "NUMPAD 7";
    
    if (arg0 == 104)
        return "NUMPAD 8";
    
    if (arg0 == 105)
        return "NUMPAD 9";
    
    if (arg0 == 106)
        return "MULTIPLY";
    
    if (arg0 == 111)
        return "DIVIDE";
    
    if (arg0 == 107)
        return "ADD";
    
    if (arg0 == 109)
        return "SUBTRACT";
    
    if (arg0 == 110)
        return "DECIMAL";
    
    if (arg0 == -1)
        return "PRESS KEY";
    
    return chr(arg0);
}