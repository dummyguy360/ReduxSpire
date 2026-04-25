if (ds_list_find_index(global.saveroom, id) == -1)
{
    var rep = 3 + round(sprite_width / 16);
    
    repeat (rep)
    {
        with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_debris))
            sprite_index = spr_bigdebris_new;
        
        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_destroyableSmoke);
    }
    
    audio_stop_sound(sound_destroyblock1);
    audio_stop_sound(sound_destroyblock2);
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    ds_list_add(global.saveroom, id);
}
