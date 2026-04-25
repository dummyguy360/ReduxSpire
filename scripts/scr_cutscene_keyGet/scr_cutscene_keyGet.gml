function cutscene_keyGet_start()
{
    var finished = false;
    
    with (obj_player)
    {
        state = states.actor;
        image_speed = 0.35;
        
        if (instance_exists(obj_creamThief))
        {
            with (obj_creamThief)
                state = tauntstoredstate;
        }
        
        hsp = approach(hsp, 0, 0.2);
        
        if (!grounded)
            sprite_index = spr_player_PZ_freeFall_1;
        
        if (sprite_index == spr_player_PZ_freeFall_1 || sprite_index == spr_fall)
        {
            if (grounded)
            {
                hsp = 0;
                sprite_index = spr_land;
                image_index = 0;
            }
        }
        
        if (sprite_index == spr_land && grounded && sprite_animation_end())
            finished = true;
    }
    
    if (finished == true)
        cutscene_event_end();
}

function cutscene_keyGet_end()
{
    with (obj_player)
    {
        move = key_left + key_right;
        sprite_index = spr_player_PZ_gotKey;
        image_index = 0;
        state = states.keyget;
    }
    
    cutscene_event_end();
}
