if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_baddieDead))
        sprite_index = spr_lemonheadblockdead;
    
    repeat (3)
    {
        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slapstar);
        instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_baddiegibs);
    }
    
    instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_bangeffect);
    scr_sound(sound_combo1);
    audio_stop_sound(sound_destroyblock1);
    audio_stop_sound(sound_destroyblock2);
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    ds_list_add(global.saveroom, id);
}

if (instance_exists(solidid))
{
    with (solidid)
        instance_destroy();
}
