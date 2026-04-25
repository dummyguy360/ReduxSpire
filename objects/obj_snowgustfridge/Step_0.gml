if (place_meeting(x, y, obj_player))
{
    with (obj_player)
    {
        if (place_meeting(x, y, other) && state != states.noclip && state != states.hooks && !cutscene)
        {
            if (state != states.rupertjump && state != states.rupertnormal && state != states.rupertstick)
            {
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
                
                state = states.rupertnormal;
                movespeed = clamp(movespeed, 0, 8);
                var myButton1 = get_control_string(global.key_jump);
                scr_controlprompt("[spr_buttonfont]" + myButton1 + "[spr_promptfont]Jump  " + "[spr_buttonfont]" + myButton1 + "[spr_promptfont]Double Jump");
                other.sprite_index = spr_fridge_attack;
                other.image_index = 0;
            }
        }
    }
}

if (point_in_rectangle(obj_player.x, obj_player.y, x - 300, y - 100, x + 300, y + 100))
{
    if (sprite_index == spr_fridge_idle)
    {
        sprite_index = spr_fridge_opening;
        image_index = 0;
    }
    
    if (sprite_index == spr_fridge_opening && animation_end())
        sprite_index = spr_fridge_open;
}
else
{
    if ((sprite_index != spr_fridge_closing && sprite_index != spr_fridge_idle && sprite_index != spr_fridge_attack) || (sprite_index == spr_fridge_attack && animation_end()))
    {
        sprite_index = spr_fridge_closing;
        image_index = 0;
    }
    
    if (sprite_index == spr_fridge_closing && animation_end())
        sprite_index = spr_fridge_idle;
}
