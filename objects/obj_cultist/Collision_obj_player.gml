if (pray_delay == 0)
{
    with (other)
    {
        if (!is_undefined(scr_transformationCheck(state)))
        {
            other.sprite_index = spr_cultist_pray_new;
            other.alarm[0] = 180;
            scr_sound(sfx_cultist);
            scr_sound(sfx_detransfo);
            
            if (chance_update(50))
            {
                audio_stop_sound(sfx_PZvoice_detransfo1);
                audio_stop_sound(sfx_PZvoice_detransfo2);
                var a = scr_sound(choose(sfx_PZvoice_detransfo1, sfx_PZvoice_detransfo2));
                audio_sound_pitch(a, random_range(0.95, 1.05));
            }
            
            state = states.normal;
            
            if (key_attack)
            {
                if (abs(movespeed < 10))
                    movespeed = 10;
                else
                    movespeed = abs(movespeed);
                
                state = states.mach2;
            }
            
            sprite_index = spr_idle;
            instance_create(x, y, obj_poofeffect);
            image_index = 0;
            
            if (other.canCollect == true && ds_list_find_index(global.saveroom, id) == -1)
            {
                ds_list_add(global.saveroom, id);
                
                repeat (10)
                    instance_create(x + 64 + random_range(48, -48), y + 32 + random_range(48, -48), obj_collecteffect);
                
                global.collect += 500;
                global.combotime = 60;
                other.canCollect = false;
            }
            
            if (other.devilboy == false)
            {
                instance_create(other.x, other.y, obj_devilboy);
                other.devilboy = true;
            }
        }
    }
}
