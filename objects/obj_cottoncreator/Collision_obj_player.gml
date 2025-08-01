with (obj_player)
{
    if (state != states.cotton && state != states.cottondrill && state != states.door && state != states.cottonroll && state != 112)
    {
        global.combofreeze = 30;
        state = states.cotton;
        
        if (movespeed > 6)
            movespeed = 6;
        
        with (instance_create(x, y, obj_poofeffect))
            color = #020000;
        
        sprite_index = spr_cottonidle;
        var myButton1 = get_control_string(global.key_jump) + get_control_string(global.key_jump);
        var myButton2 = get_control_string(global.key_slap);
        scr_controlprompt("[spr_buttonfont]" + myButton1 + "[spr_promptfont] Double Jump  [spr_buttonfont]" + myButton2 + "[spr_promptfont] Attack");
    }
}
