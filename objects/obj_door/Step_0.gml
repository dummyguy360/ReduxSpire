with (obj_player)
{
    if (place_meeting(x, y, other.id) && key_up && grounded == 1 && (state == states.normal || state == states.Sjumpprep || state == states.mach1 || state == states.mach2 || state == states.mach3) && !instance_exists(obj_fadeout) && state != states.door && state != states.victory && state != states.comingoutdoor)
    {
        mach2 = 0;
        image_index = 0;
        obj_camera.chargecamera = 0;
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
        state = states.door;
        global.roomsave = 0;
        
        if (other.ResetSaveroom == true)
        {
            global.collect = 0;
            ds_list_clear(global.saveroom);
            ds_list_clear(global.baddieroom);
        }
        
        if (ds_list_find_index(global.saveroom, other.id) == -1)
            ds_list_add(global.saveroom, other.id);
    }
}

lightIndex += 0.35;
