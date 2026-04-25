with (obj_player)
{
    if (place_meeting(x, y, other.id) && key_up && grounded == 1 && (state == states.normal || state == states.Sjumpprep || state == states.mach1 || state == states.mach2 || state == states.mach3) && !instance_exists(obj_fadeout) && state != states.door && state != states.victory && state != states.comingoutdoor)
    {
        if (ds_list_find_index(global.saveroom, other.id) != -1)
        {
            mach2 = 0;
            image_index = 0;
            obj_camera.chargecamera = 0;
            targetDoor = other.targetDoor;
            targetRoom = other.targetRoom;
            state = states.door;
            global.roomsave = 0;
        }
        else if (global.key_inv == 1)
        {
            scr_sound(sfx_keyunlock);
            scr_sound(sfx_cheers);
            
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
            
            var target_x = (x - sprite_xoffset) + (sprite_width / 2);
            var target_y = (y - sprite_yoffset) + (sprite_height / 2);
            
            if (instance_exists(obj_spookey))
            {
                with (obj_spookey)
                {
                    with (instance_create(x, y, obj_spookeyUnlocking))
                    {
                        targetX = target_x;
                        targetY = target_y;
                    }
                    
                    instance_destroy();
                }
            }
            
            state = states.victory;
            image_index = 0;
            obj_camera.chargecamera = 0;
            targetDoor = other.targetDoor;
            targetRoom = other.targetRoom;
            
            with (other)
            {
                ds_list_add(global.saveroom, id);
                image_index = 0;
                sprite_index = spr_doorvisited;
                image_speed = 0.35;
            }
            
            global.key_inv = 0;
            instance_create(x, y, obj_lock);
            global.roomsave = 0;
        }
    }
}
