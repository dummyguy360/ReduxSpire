function state_player_cottondrill()
{
    image_speed = 0.35;
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 0;
    }
    
    move = key_left + key_right;
    
    if (move != 0)
        xscale = move;
    
    if (verticalMovespeed < 9)
    {
        verticalMovespeed = approach(verticalMovespeed, 20, 2);
        hsp = move * 5;
    }
    else
    {
        verticalMovespeed = approach(verticalMovespeed, 20, 0.5);
        hsp = move;
    }
    
    vsp = verticalMovespeed;
    sprite_index = spr_player_PZ_werecotton_drill_down;
    
    if (grounded && !place_meeting(x, y + 1, obj_destructibles) && !place_meeting(x, y + 1, obj_chocofrog))
    {
        doublejumped = 0;
        
        if (slopeCheck(x, y))
        {
            movespeed = (verticalMovespeed / 20) * 12;
            vsp = 3;
            state = states.cottonroll;
            image_index = 0;
            sprite_index = spr_player_PZ_werecotton_slide;
            
            if (scr_slope_ext(x, y + 1) && !scr_solid_slope(x, y + 1))
            {
                with (instance_place(x, y + 1, obj_slope))
                    other.xscale = -sign(image_xscale);
                
                with (instance_place(x, y + 1, obj_slopePlatform))
                    other.xscale = -sign(image_xscale);
            }
        }
        else
        {
            state = states.cotton;
            sprite_index = spr_player_PZ_werecotton_land;
            vsp = 0;
            movespeed = 0;
            image_index = 0;
        }
    }
    
    if (inputBufferSlap > 0 && sprite_index != spr_player_PZ_werecotton_drill_h && groundedcot == 1)
    {
        inputBufferSlap = 0;
        state = states.cotton;
        flash = 1;
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_drill_h;
        
        if (movespeed < 8)
            movespeed = 8;
        
        if (!grounded)
            vsp = -5;
        else
            vsp = 0;
        
        grav = 0.2;
        grounded = false;
        scr_sound(sfx_cottonattack);
        groundedcot = 0;
    }
    
    if (inputBufferJump > 0 && !grounded && doublejumped == 0)
    {
        inputBufferJump = 0;
        doublejumped = 1;
        movespeed = 0;
        state = states.cotton;
        vsp = -10;
        grav = 0.1;
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_doubleJump;
        instance_create(x, y, obj_highjumpcloud2);
        
        with (instance_create(x, y, obj_highjumpcloud2))
        {
            image_xscale = other.xscale;
            sprite_index = spr_cottonpoof;
        }
        
        scr_sound(sfx_cottonjump);
    }
    //After Image Effect
    if (cotton_afterimagetimer > 0)
        cotton_afterimagetimer--;
    
    if (cotton_afterimagetimer <= 0)
    {
        with (instance_create(x, y, obj_cotton_aftereffect))
            playerID = other.id;
        
        cotton_afterimagetimer = 6;
    }
}
