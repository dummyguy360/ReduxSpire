function scr_confecti_init()
{
	//Follower List
    ds_list_add(global.FollowerList, id);
    depth = -5 + ds_list_find_index(global.FollowerList, id);
    bigTaunt = false;
    old_x = x;
    old_y = y;
    real_x = x;
    
    switch (object_index)
    {
        case obj_confectichoco:
            spr_idle = spr_chocolate_idle;
            spr_run = spr_chocolate_walk;
            spr_runpanic = spr_chocolate_panicWalk;
            spr_panic = spr_chocolate_panic;
            spr_appear = spr_chocolate_appear;
            spr_taunt = spr_chocolate_taunt;
            spr_supertaunt = 2328;
            global.chocofollow = true;
            scr_queue_tvanim(obj_tv.happytvspr, 150);
            break;
        
        case obj_confecticrack:
            spr_idle = spr_crack_idle;
            spr_run = spr_crack_run;
            spr_runpanic = spr_crack_panicWalk;
            spr_panic = spr_crack_panic;
            spr_appear = spr_crack_appear;
            spr_taunt = spr_crack_taunt;
            global.crackfollow = true;
            spr_supertaunt = 2329;
            scr_queue_tvanim(obj_tv.happytvspr, 150);
            break;
        
        case obj_confectiworm:
            spr_idle = spr_gummyworm_idle;
            spr_run = spr_gummyworm_walk;
            spr_runpanic = spr_gummyworm_panicWalk;
            spr_panic = spr_gummyworm_panic;
            spr_appear = spr_gummyworm_appear;
            spr_taunt = spr_gummyworm_taunt;
            global.wormfollow = true;
            spr_supertaunt = 2330;
            scr_queue_tvanim(obj_tv.happytvspr, 150);
            break;
        
        case obj_confecticandy:
            spr_idle = spr_candy_idle;
            spr_run = spr_candy_walk;
            spr_runpanic = spr_candy_panicWalk;
            spr_panic = spr_candy_panic;
            spr_appear = spr_candy_appear;
            spr_taunt = spr_candy_taunt;
            global.candyfollow = true;
            spr_supertaunt = 2327;
            scr_queue_tvanim(obj_tv.happytvspr, 150);
            break;
        
        case obj_rudejanitor:
            spr_idle = spr_rudejanitor_idlefollow_new;
            spr_run = spr_rudejanitor_walk_new;
            spr_runpanic = 2309;
            spr_panic = spr_rudejanitor_idlefollow_new;
            spr_appear = 2304;
            spr_taunt = spr_rudejanitor_taunt_new;
            spr_supertaunt = 2304;
            global.janitorRudefollow = true;
            break;
        
        case obj_lapjanitor:
            spr_idle = spr_janitor2_idle;
            spr_run = spr_janitor2_run;
            spr_runpanic = spr_janitor2_run;
            spr_panic = spr_janitor2_idle;
            spr_appear = spr_janitor2_jump;
            spr_taunt = spr_janitor2_taunt;
            spr_supertaunt = 1695;
            global.janitorLapfollow = true;
            break;
        
        default:
            spr_idle = spr_marshmellow_idle;
            spr_run = spr_marshemellow_run;
            spr_runpanic = 1919;
            spr_panic = spr_marshmellow_panic;
            spr_appear = 2336;
            spr_taunt = spr_marshmellow_taunt;
            global.mallowfollow = true;
            spr_supertaunt = 2331;
            scr_queue_tvanim(obj_tv.happytvspr, 150);
            break;
    }
}
