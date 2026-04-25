showDoorLight = false;
sprite_index = spriteDoorUnlocked;

if (ds_list_find_index(global.saveroom, other.id) == -1 || place_meeting(x, y, obj_doorblocked))
    sprite_index = spriteDoorLocked;

if (sprite_index == spriteDoorUnlocked && sprite_animation_end())
    image_speed = 0;

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
        else if (global.janitorRudefollow)
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
            
            state = states.victory;
            image_index = 0;
            obj_camera.chargecamera = 0;
            targetDoor = other.targetDoor;
            targetRoom = other.targetRoom;
            
            with (other)
            {
                ds_list_add(global.saveroom, id);
                sprite_index = spriteDoorUnlocked;
                image_index = 0;
                image_speed = 0.35;
            }
            
            with (instance_create(x, y, obj_lock))
                sprite_index = obj_janitorDoor.spriteDoorLock;
            
            global.roomsave = 0;
            
            with (obj_rudejanitor)
            {
                if (sprite_index != spr_rudejanitor_unlock_new)
                {
                    ds_list_delete(global.FollowerList, ds_list_find_index(global.FollowerList, id));
                    x = obj_player.x - (16 * obj_player.image_xscale);
                    y = obj_player.y;
                    image_index = 0;
                    state = states.Nhookshot;
                }
            }
        }
    }
}
