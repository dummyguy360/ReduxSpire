with (obj_player)
{
    if (state != states.cotton && state != states.cottondrill && state != states.door && state != states.cottonroll && state != states.changing)
    {
        global.combofreeze = 30;
        state = states.cotton;
        
        if (movespeed > 6)
            movespeed = 6;
        
        with (instance_create(x, y, obj_poofeffect))
            color = 2;
        
        sprite_index = spr_cottonidle;
        scr_sound(sfx_transfo);
        
        if (chance_update(50))
        {
            audio_stop_sound(sfx_PZvoice_transfo1);
            audio_stop_sound(sfx_PZvoice_transfo2);
            audio_stop_sound(sfx_PZvoice_transfo3);
            audio_stop_sound(sfx_PZvoice1);
            var a = scr_sound(choose(sfx_PZvoice_transfo1, sfx_PZvoice_transfo2, sfx_PZvoice_transfo3, sfx_PZvoice_hurt5));
            audio_sound_pitch(a, random_range(0.95, 1.05));
        }
        
        var myButton1 = get_control_string(global.key_jump) + get_control_string(global.key_jump);
        var myButton2 = get_control_string(global.key_slap);
        scr_controlprompt("[spr_buttonfont]" + myButton1 + "[spr_promptfont] Double Jump  [spr_buttonfont]" + myButton2 + "[spr_promptfont] Attack");
    }
}
