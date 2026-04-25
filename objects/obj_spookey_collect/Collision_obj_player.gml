if (!(ds_list_find_index(global.saveroom, id) != -1))
{
    with (other)
    {
        if (state != states.keyget && sprite_index != spr_player_PZ_gotKey && sprite_index != spr_player_PZ_pileDriver_jump)
        {
            scr_sound(sound_pizzagot);
            global.key_inv = 1;
            global.combotime = 60;
            image_index = 0;
            
            if (grounded)
            {
                hsp = 0;
                vsp = 0;
                sprite_index = spr_player_PZ_gotKey;
                state = states.keyget;
            }
            else
            {
                image_index = 0;
                sprite_index = spr_player_PZ_freeFall_1;
                state = states.fireass;
                cutscene_create([cutscene_keyGet_start, cutscene_keyGet_end]);
            }
            
            if (instance_exists(obj_creamThief))
            {
                with (obj_creamThief)
                {
                    tauntstorestate = state;
                    state = states.charge;
                }
            }
            
            key_particles = 1;
            alarm[7] = 30;
            global.keyget = 1;
            
            if (chance_update(50))
            {
                audio_stop_sound(sfx_PZvoice_collect1);
                audio_stop_sound(sfx_PZvoice_collect2);
                audio_stop_sound(sfx_PZvoice_collect3);
                audio_stop_sound(sfx_PZvoice_collect4);
                audio_stop_sound(sfx_PZvoice_collect5);
                var a = scr_sound(choose(sfx_PZvoice_collect1, sfx_PZvoice_collect2, sfx_PZvoice_collect3, sfx_PZvoice_collect4, sfx_PZvoice_collect5));
                audio_sound_pitch(a, random_range(0.95, 1.05));
            }
            
            scr_queue_tvanim(spr_tvHUD_player_PZ_keyGot, 60);
            instance_create(x, y, obj_spookey);
            
            with (other)
            {
                ds_list_add(global.saveroom, id);
                instance_destroy();
            }
        }
    }
}
