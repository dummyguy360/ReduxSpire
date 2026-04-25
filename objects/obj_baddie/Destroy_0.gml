if ((ds_list_find_index(global.baddieroom, id) == -1 && inhaleddestroyvar == false) || (important && inhaleddestroyvar == false))
{
    repeat (3)
    {
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
    }
    
    instance_create(x, y + 30, obj_bangeffect);
    camera_shake(3, 3);
    
    if (debris)
    {
        with (instance_create(x, y, obj_baddieDead))
        {
            canrotate = true;
            image_xscale = other.image_xscale;
            sprite_index = other.deadspr;
            spr_palette = other.spr_palette;
            paletteselect = other.paletteselect;
        }
    }
    
    var combob = clamp(global.combo, 1, 4);
    var combobsnd = asset_get_index("sound_combo" + string(combob));
    scr_sound(sound_combo1);
    
    if (!important)
    {
        global.combo++;
        var _score = 10 + floor(global.combo * 0.5);
        global.collect += _score;
        global.combotime = 60;
        global.style += 4;
        global.combofreeze = 30;
        obj_player.supercharge++;
        
        if (obj_tv.sucroseTimer && global.fill != 0)
            global.fill += time_in_frames(0, 2.5);
    }
    
    ds_list_add(global.baddieroom, id);
    
    if (panicEscape || global.levelname == "sucrose")
        ds_list_add(global.escaperoom, id);
}

if (inhaleddestroyvar == true)
{
    with (obj_player)
    {
        inhalingenemy = true;
        storedinhalebaddie = object_get_name(other.object_index);
    }
}
