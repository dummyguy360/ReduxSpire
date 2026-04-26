function state_player_cotton()
{
    move = key_left + key_right;
    
    if (sprite_index == spr_cotton_slam && move != xscale)
    {
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_walk;
    }
    
    if (sprite_index != spr_player_PZ_werecotton_drill_h)
    {
        if (move != 0)
            xscale = move;
    }
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 0;
    }
    
    if (momemtum == 0)
        hsp = move * movespeed;
    else
        hsp = xscale * movespeed;
    
    if (((move != 0 && move != xscale) || grounded) && momemtum == 1)
        momemtum = 0;
    
    if (move != 0)
    {
        if (key_attack && move == xscale && grounded)
        {
            if (movespeed < 8)
                movespeed += 0.25;
        }
        else
        {
            if (movespeed < 6)
                movespeed += 0.5;
            
            if (movespeed > 6 && sprite_index != spr_player_PZ_werecotton_drill_h && grounded && momemtum == 0)
                movespeed -= 0.5;
        }
    }
    else if (movespeed > 0 && sprite_index != spr_player_PZ_werecotton_drill_h && momemtum == 0)
        movespeed -= 0.5;
    
    if (scr_solid(x + xscale, y, true) && !scr_slope_ext(x + xscale, y))
    {
        if (movespeed < 8 && (place_meeting(x + xscale, y, obj_destructibles) || place_meeting(x + xscale, y, obj_chocofrog)))
            movespeed = 0;
        else if (!place_meeting(x + xscale, y, obj_destructibles) && !place_meeting(x + xscale, y, obj_chocofrog))
            movespeed = 0;
    }
    
    if (vsp > 5)
        vsp = 5;
    
    if (inputBufferJump > 0 && grounded)
    {
        inputBufferJump = 0;
        vsp = -14;
        grav = 0.025;
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_jump;
        instance_create(x, y, obj_highjumpcloud2);
        scr_sound(sfx_cottonjump);
    }
    
    if (inputBufferSlap > 0 && sprite_index != spr_player_PZ_werecotton_drill_h && groundedcot == 1)
    {
        inputBufferSlap = 0;
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
    
    if (sprite_index == spr_player_PZ_werecotton_drill_h)
    {
        hsp = movespeed * xscale;
        instance_create(x, y, obj_swordhitbox);
        
        if (movespeed < 8)
            movespeed = 8;
        
        move = xscale;
        
        if ((-key_left2 && xscale == 1) || (key_right2 && xscale == -1))
        {
            movespeed = 0;
            vsp = 0;
            hsp = 0;
            sprite_index = spr_player_PZ_werecotton_fall;
        }
    }
    
    if (animation_end() && sprite_index == spr_player_PZ_werecotton_drill_h)
    {
        image_index = 0;
        sprite_index = spr_cottonidle;
    }
    
    if (sprite_index == spr_cottonidle && move != 0)
    {
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_walk;
    }
    
    if ((sprite_index == spr_player_PZ_werecotton_walk || sprite_index == spr_cotton_run || sprite_index == spr_cotton_maxrun) && move == 0)
    {
        image_index = 0;
        sprite_index = spr_cottonidle;
    }
    
    if (sprite_index == spr_player_PZ_werecotton_jump && animation_end())
    {
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_fall;
    }
    
    if (sprite_index == spr_player_PZ_werecotton_doubleJump && animation_end())
    {
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_doubleJump_fall;
    }
    
    if (sprite_index == spr_cotton_slam && animation_end())
        sprite_index = spr_cottonidle;
    
    if ((sprite_index == spr_player_PZ_werecotton_fall || sprite_index == spr_player_PZ_werecotton_doubleJump_fall || sprite_index == spr_player_PZ_werecotton_jump || sprite_index == spr_player_PZ_werecotton_doubleJump) && grounded && vsp >= 0)
    {
        image_index = 0;
        
        if (move != 0)
            sprite_index = spr_player_PZ_werecotton_land_walk;
        else
            sprite_index = spr_player_PZ_werecotton_land;
        
        instance_create(x, y, obj_landcloud);
        scr_sound(sound_land);
    }
    
    if (inputBufferJump > 0 && !grounded && doublejumped == 0)
    {
        inputBufferJump = 0;
        doublejumped = 1;
        vsp = -10;
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_doubleJump;
        
        with (instance_create(x, y, obj_highjumpcloud2))
        {
            image_xscale = other.xscale;
            sprite_index = spr_cottonpoof;
        }
        
        scr_sound(sfx_cottondoublejump);
    }
    
    if (sprite_index == spr_player_PZ_werecotton_land && animation_end())
        sprite_index = spr_cottonidle;
    
    if (sprite_index == spr_player_PZ_werecotton_land_walk && animation_end())
        sprite_index = spr_player_PZ_werecotton_walk;
    
    if (key_down2 && !grounded)
    {
        verticalMovespeed = -5;
        state = states.cottondrill;
        sprite_index = spr_player_PZ_werecotton_drill_down;
        image_index = 0;
        scr_sound(sound_suplex1);
        flash = 1;
        
        with (instance_create(x, y, obj_afterimageoutward))
            hspeed = 7;
        
        with (instance_create(x, y, obj_afterimageoutward))
            hspeed = -7;
        
        with (instance_create(x, y, obj_afterimageoutward))
            vspeed = 7;
        
        with (instance_create(x, y, obj_afterimageoutward))
            vspeed = -7;
    }
    
    if (key_down2 && move != 0 && grounded)
    {
        if (movespeed < 3)
            movespeed = 3;
        
        vsp = 3;
        state = states.cottonroll;
        image_index = 0;
        sprite_index = spr_player_PZ_werecotton_slide;
    }
    
    if (!grounded && sprite_index != spr_player_PZ_werecotton_jump && sprite_index != spr_player_PZ_werecotton_drill_h && sprite_index != spr_player_PZ_werecotton_doubleJump && sprite_index != spr_player_PZ_werecotton_doubleJump_fall && sprite_index != spr_player_PZ_werecotton_drill_down)
        sprite_index = spr_player_PZ_werecotton_fall;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
    {
        jumpstop = 0;
        doublejumped = 0;
    }
    
    if (sprite_index == spr_player_PZ_werecotton_walk)
        image_speed = clamp((movespeed / 6) * 0.65, 0.35, 0.55);
    else
        image_speed = 0.35;
    
    if (cotton_afterimagetimer > 0)
        cotton_afterimagetimer--;
    
    if (cotton_afterimagetimer <= 0)
    {
        with (instance_create(x, y, obj_cotton_aftereffect))
            playerID = other.id;
        
        cotton_afterimagetimer = 6;
    }
}
