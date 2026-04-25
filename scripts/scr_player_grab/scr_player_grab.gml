function state_player_grab()
{
    move = key_left + key_right;
    var forceThrow = false;
    
    if (sprite_index != spr_player_PZ_swingDing)
    {
        if (grounded && vsp > 0 && (sprite_index == spr_player_PZ_hauling_fall || sprite_index == spr_player_PZ_hauling_jump))
        {
            image_index = 0;
            sprite_index = spr_player_PZ_hauling_land;
        }
        
        if (grounded && sprite_index != spr_player_PZ_hauling_intro && !(sprite_index == spr_player_PZ_hauling_land && move == 0))
            sprite_index = (move == 0) ? spr_player_PZ_hauling_idle : spr_player_PZ_hauling_walk;
        
        if (!grounded && sprite_index != spr_player_PZ_hauling_jump && sprite_index != spr_player_PZ_hauling_intro)
            sprite_index = spr_player_PZ_hauling_fall;
        
        if (animation_end())
        {
            if (sprite_index == spr_player_PZ_hauling_intro || sprite_index == spr_player_PZ_hauling_land)
                sprite_index = spr_player_PZ_hauling_idle;
            
            if (sprite_index == spr_player_PZ_hauling_jump)
                sprite_index = spr_player_PZ_hauling_fall;
        }
    }
    
    hsp = xscale * movespeed;
    
    if (sprite_index != spr_player_PZ_swingDing)
    {
        if (dir != xscale)
        {
            dir = xscale;
            movespeed = 2;
            slamHurt = 0;
        }
        
        if (grounded)
            jumpstop = false;
        
        if (move != 0)
        {
            movespeed = approach(movespeed, 7, 0.5);
            xscale = move;
            
            if (grounded && !stepEffectBuffer--)
            {
                instance_create(x, y + 43, obj_puffEffect);
                scr_sound(sfx_playerstep);
                stepEffectBuffer = 20;
            }
        }
        else
            movespeed = 0;
        
        if (move != 0 && place_meeting(x + xscale, y, obj_solid))
            movespeed = 0;
        
        if (!key_jump2 && !jumpstop && vsp < 0.5 && !stompAnim)
        {
            vsp /= 20;
            jumpstop = true;
        }
        
        if (scr_solid(x, y - 1) && !jumpstop && jumpAnim)
        {
            vsp = grav;
            jumpstop = true;
        }
    }
    else
    {
        if (grounded)
            movespeed = approach(movespeed, 0, 0.5);
        
        if (movespeed <= 0)
            sprite_index = spr_player_PZ_hauling_idle;
        
        if (floor(image_index) == 0)
            swingdingbuffer = 5;
        else if (swingdingbuffer > 0)
            swingdingbuffer--;
        
        if (place_meeting(x + xscale, y, obj_solid) && !place_meeting(x + xscale, y, obj_destructibles))
            forceThrow = true;
    }
    
    if (can_jump && inputBufferJump > 0 && !key_down && vsp > 0 && sprite_index != spr_player_PZ_swingDing)
    {
        scr_sound(sfx_pz_jump);
        inputBufferJump = 0;
        sprite_index = spr_player_PZ_hauling_jump;
        image_index = 0;
        
        with (instance_create(x, y, obj_highjumpcloud2))
            sprite_index = spr_highjumpcloud1;
        
        vsp = -11;
        grav = 0.3;
    }
    
    if (inputBufferSlap > 0 || forceThrow)
    {
        if (move != 0)
            move = xscale;
        
        inputBufferSlap = 0;
        state = states.finishingblow;
        movespeed = hsp;
        
        if (sprite_index == spr_player_PZ_swingDing)
            sprite_index = spr_player_PZ_swingDing_end;
        else if (key_up)
            sprite_index = spr_player_PZ_finishingBlow_uppercut;
        else
            sprite_index = choose(spr_player_PZ_finishingBlow_1, spr_player_PZ_finishingBlow_2, spr_player_PZ_finishingBlow_3, spr_player_PZ_finishingBlow_4);
        
        image_index = 0;
    }
    
    if (key_down && !grounded)
    {
        sprite_index = spr_piledriver;
        vsp = -6;
        state = states.superslam;
        image_index = 0;
        image_speed = 0.35;
    }
    
    if (key_down && grounded)
    {
        if (instance_exists(baddiegrabbedID))
        {
            with (baddiegrabbedID)
            {
                state = baddiestate.stun;
                image_index = 0;
                x = other.x;
                y = other.y;
            }
        }
        
        state = states.crouch;
        landAnim = 0;
        crouchAnim = 1;
        image_index = 0;
        idle = spr_player_machpunch2;
    }
    
    image_speed = 0.35;
}
