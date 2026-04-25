if (delay <= 0)
{
    with (obj_player)
    {
        if (state != states.ufofloat && state != states.ufodash)
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
            
            state = states.ufofloat;
            movespeed = other.sethsp;
            verticalMovespeed = other.setvsp;
            ufotimer = 750;
        }
    }
}
