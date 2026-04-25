if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x - sprite_xoffset) + (sprite_width / 2), (y - sprite_yoffset) + (sprite_height / 2), obj_cloudeffect))
    {
        image_speed = 0.3;
        sprite_index = spr_bigbreak2_dead;
    }
    
    audio_stop_sound(sound_destroyblock1);
    audio_stop_sound(sound_destroyblock2);
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    audio_stop_sound(sound_points);
    scr_sound(sound_points);
    global.collect += 50;
    global.pizzameter += 5;
    create_small_number(x, y, "50");
    global.combofreeze = 30;
    global.combotime += 45;
    ds_list_add(global.saveroom, id);
}
