if (place_meeting(x, y - 1, obj_player))
{
    with (obj_player)
    {
        if (state != states.noclip && !global.freezeframe)
        {
            if (state == states.cotton || state == states.cottondrill)
                instance_create(x, y, obj_poofeffect);
            
            sprite_index = spr_player_PZ_fireAss_intro;
            state = states.fireass;
            image_index = 0;
            vsp = -20;
            audio_stop_sound(sfx_firesound);
            audio_stop_sound(sfx_fireass);
            
            if (!audio_is_playing(sfx_fireass_voice))
                scr_sound(sfx_fireass_voice);
            
            scr_sound(sfx_firesound);
            scr_sound(sfx_fireass);
        }
    }
}
