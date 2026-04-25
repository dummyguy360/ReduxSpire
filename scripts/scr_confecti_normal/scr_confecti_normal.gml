function scr_confecti_normal()
{
    if (sprite_index != spr_appear)
    {
        if (x != real_x)
        {
            if (global.panic == 0)
                sprite_index = spr_run;
            else
                sprite_index = spr_runpanic;
        }
        else if (global.panic == 0)
            sprite_index = spr_idle;
        else
            sprite_index = spr_panic;
    }
    
    var _dir = 0;
    
    if (obj_player.state != states.ladder && obj_player.state != states.comingoutdoor && obj_player.state != states.door)
        _dir = obj_player.xscale;
    
    confecti_dir = approach(confecti_dir, _dir, 0.2);
    distance = confecti_dir * 25;
    var _leader = -4;
    _leader = !ds_list_find_index(global.FollowerList, id) ? 370 : global.FollowerList[| floor(ds_list_find_index(global.FollowerList, id) - 1)];
    
    if (!instance_exists(_leader))
        _leader = obj_player;
    
    if (instance_exists(_leader))
    {
        ds_queue_enqueue(followQueue, _leader.x - distance);
        ds_queue_enqueue(followQueue, _leader.y);
    }
    
    LAG_STEPS = 10;
    
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        targetx = ds_queue_dequeue(followQueue);
        targety = ds_queue_dequeue(followQueue);
    }
    
    if (obj_player.x != x)
        drawxscale = -sign(x - obj_player.x);
    
    real_x = x;
    
    if (use_interpolation)
    {
        x = lerp(x, targetx, interpolation);
        y = lerp(y, targety, interpolation);
        interpolation = approach(interpolation, 1, 0.01);
        
        if (interpolation)
        {
            interpolation = 0;
            use_interpolation = false;
        }
    }
    else
    {
        x = targetx;
        y = targety;
    }
    
    x = round(x);
    y = round(y);
    
    if (obj_player.state == states.backbreaker && obj_player.sprite_index == obj_player.spr_taunt && state != states.normal)
    {
        with (instance_create(x, y, obj_confectitaunt))
        {
            o_id = other.id;
            depth = other.depth + 1;
        }
        
        state = states.normal;
        image_index = choose(0, 1, 2);
    }
    
    if (obj_player.state == states.backbreaker && (obj_player.sprite_index == spr_player_PZ_superTaunt_1 || obj_player.sprite_index == spr_player_PZ_superTaunt_2 || obj_player.sprite_index == spr_player_PZ_superTaunt_3 || obj_player.sprite_index == spr_player_PZ_superTaunt_4) && state != states.normal && state != states.titlescreen)
    {
        with (obj_confectitaunt)
        {
            if (o_id == other.id)
                instance_destroy();
        }
        
        state = states.titlescreen;
        sprite_index = spr_supertaunt;
        image_index = 0;
    }
    
    image_speed = 0.35;
}
