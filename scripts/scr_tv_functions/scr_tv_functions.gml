function scr_queue_tvanim(arg0 = noone, arg1 = 150)
{
    with (obj_tv)
    {
        if (expressionsprite != arg0 && arg0 != idletvspr)
        {
            expressionsprite = arg0;
            draw_static = true;
            state = states.tv_transition;
            static_index = 0;
            expressiontime = arg1;
        }
    }
}

function scr_forceplay_tvanim(arg0 = -4, arg1 = 150)
{
    obj_tv.tvsprite = ds_queue_dequeue(arg0);
    obj_tv.tvlength = ds_queue_dequeue(arg1);
    ds_queue_clear(global.newhudtvanim);
}

function scr_queue_message(arg0 = "", arg1 = noone)
{
    ds_queue_enqueue(global.newhudmessage, arg0);
    
    if (arg1 != noone)
        scr_queue_tvanim(arg1, 1000);
}

function scr_controlprompt(arg0 = "[spr_promptfont]No prompt set", arg1 = arg0, arg2 = string_length(arg0) * 15)
{
    arg2 = clamp(arg2, 60, 450);
    var type = 0;
    
    if (arg1 == noone)
        type = 1;
    
    if (arg1 == -1)
        type = 2;
    
    with (obj_tv)
    {
        if (type != 2)
        {
            if (!ds_list_find_index(global.saveroom, arg1) || type == 1)
            {
                controlprompt = arg0;
                prompt_timer = arg2;
                ds_list_add(global.saveroom, arg1);
            }
        }
        else
        {
            controlprompt = arg0;
            prompt_timer = 2;
        }
    }
    
    exit;
}
