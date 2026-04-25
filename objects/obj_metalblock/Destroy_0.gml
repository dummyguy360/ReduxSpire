if (ds_list_find_index(global.saveroom, id) == -1)
{
    var rep = 3 + round(sprite_width / 32);
    
    repeat (rep)
    {
        if (place_meeting(x, y, obj_secretPortal))
        {
            with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_metaldebris))
                sprite_index = spr_secretGoopDebris;
        }
        else
            instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_metaldebris);
        
        with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_destroyableSmoke))
            sprite_index = spr_metalsmoke;
    }
    
    instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_bangeffect);
    
    with (obj_camera)
    {
        shake_mag = 20;
        shake_mag_acc = 40 / room_speed;
    }
    
    scr_sound(sfx_metalbreak_new);
    ds_list_add(global.saveroom, id);
}
