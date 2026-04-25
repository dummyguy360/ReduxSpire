if (ds_list_find_index(global.saveroom, id) == -1)
{
    camera_shake(20, 40);
    
    repeat (2)
    {
        instance_create(x, y, obj_bangeffect);
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
    }
    
    with (instance_create(x, y, obj_harrydead))
        paletteselect = other.paletteselect;
    
    instance_create(0, 0, obj_sugarrush);
    global.panic = 1;
    var time_array = scr_escapetimes();
    global.fill = time_in_frames(time_array[0], time_array[1]);
    obj_tv.target_fill = global.fill;
    global.wave = 0;
    global.maxwave = global.fill;
    scr_sound(sfx_gummybear_impact);
    scr_sound(sfx_escaperumble);
    instance_create(x, y, obj_panicchanger);
    scr_sound(sound_combo1);
    
    if (set_theme != noone)
        obj_music.escapemusic = set_theme;
    
    global.combofreeze = 30;
    global.combotime = 60;
    ds_list_add(global.saveroom, id);
}
