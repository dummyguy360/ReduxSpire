if (sprite_index != spr_confectiboxopen)
{
    with (obj_creamThief)
    {
        hsp = 0;
        vsp = 0;
        state = thiefstate.idle;
        sprite_index = spr_creamthief_lose;
    }
    
    var _content = instance_create(x + (sprite_width / 2), y + (sprite_height / 2), BoxContent);
    
    if (object_get_parent(_content.object_index) == par_confecti)
    {
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
        
        with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_explosioneffect))
        {
            sprite_index = spr_taunteffect;
            depth = -2;
        }
        
        scr_sound(sfx_confectiget_new);
        helptimer = -1;
        
        if (global.toppintotal < 5)
            scr_controlprompt("[spr_promptfont]You are missing " + string(5 - global.toppintotal) + " confecti!", noone, 200);
        
        if (global.toppintotal == 5)
            scr_controlprompt("[spr_promptfont]You have found all 5 confecti!", noone, 200);
        
        obj_tv.showtext = 1;
        obj_tv.alarm[0] = 200;
        global.toppintotal += 1;
        global.collect += 1000;
        global.combofreeze = 30;
        global.combotime = 60;
    }
    
    repeat (6)
    {
        if (image_yscale == -1)
            instance_create(x + (50 * image_xscale), y - 50, obj_cagedebris);
        else
            instance_create(x + (50 * image_xscale), y + 50, obj_cagedebris);
    }
    
    audio_stop_sound(sound_confectihelp);
    instance_destroy();
    ds_list_add(global.saveroom, id);
}
