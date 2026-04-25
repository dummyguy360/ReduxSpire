if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x - sprite_xoffset) + (sprite_width / 2), (y - sprite_yoffset) + (sprite_height / 2), obj_cloudeffect))
    {
        image_speed = 0.3;
        sprite_index = spr_smallbreak2_dead_new;
    }
    
    instance_create(x, y, obj_collect);
    audio_stop_sound(sound_destroyblock1);
    audio_stop_sound(sound_destroyblock2);
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    ds_list_add(global.saveroom, id);
}
