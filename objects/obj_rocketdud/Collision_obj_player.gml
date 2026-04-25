if (collide == 1)
{
    instance_destroy(id, false);
    
    with (obj_player)
    {
        if (state != states.bottlerocket)
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
            
            state = states.bottlerocket;
            xscale = other.image_xscale;
            x = other.x;
            y = other.y;
            image_index = 0;
            sprite_index = spr_player_bottlerocket;
        }
    }
}
