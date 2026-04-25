function state_player_machroll()
{
    if (!place_meeting(x, y + 1, obj_railh))
        hsp = xscale * movespeed;
    else if (place_meeting(x, y + 1, obj_railh))
        hsp = (xscale * movespeed) - 5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = (xscale * movespeed) + 5;
    
    mach2 = 100;
    machslideAnim = 1;
    move = key_right + key_left;
    crouchSlipBuffer--;
    
    if (!instance_exists(obj_cloudeffect) && grounded)
        instance_create(x, y + 43, obj_cloudeffect);
    
    if (grounded && sprite_index != spr_crouchslipintro && sprite_index != spr_crouchslip)
    {
        if (mach3Roll <= 0)
            sprite_index = spr_player_PZ_machRoll;
        else if (sprite_index != spr_player_PZ_machRoll3_intro && sprite_index != spr_player_PZ_machRoll3 && (sprite_index != spr_player_PZ_machRoll || animation_end()))
        {
            sprite_index = spr_player_PZ_machRoll3_intro;
            image_index = 0;
        }
    }
    else if (!grounded && sprite_index != spr_player_PZ_dive)
    {
        crouchSlipBuffer = 0;
        sprite_index = spr_player_PZ_dive;
        vsp = 10;
        scr_sound(sfx_dive);
    }
    
    if (sprite_index == spr_crouchslipintro || sprite_index == spr_crouchslip)
    {
    }
    
    if (animation_end())
    {
        if (sprite_index == spr_crouchslipintro)
            sprite_index = spr_crouchslip;
        
        if (sprite_index == spr_player_PZ_machRoll3_intro)
            sprite_index = spr_player_PZ_machRoll3;
    }
    
    if (!key_down && grounded && !scr_solid(x + 27, y - 32) && !scr_solid(x - 27, y - 32) && !scr_solid(x, y - 32) && !scr_solid(x, y - 16))
    {
        if (crouchSlipBuffer <= 0 || (sprite_index != spr_crouchslip && sprite_index != spr_player_PZ_crouchSlip_intro))
        {
            crouchSlipBuffer = 0;
            
            if (key_attack)
            {
                scr_sound(sound_rollgetup);
                image_index = 0;
                sprite_index = spr_rollgetup;
                state = (movespeed >= 12) ? states.mach3 : states.mach2;
            }
            else if (movespeed > 6)
            {
                scr_sound(sfx_machstop);
                sprite_index = spr_machslidestart;
                image_index = 0;
                state = states.machslide;
            }
            else
                state = states.normal;
        }
    }
    
    if (inputBufferJump > 0 && sprite_index == spr_player_PZ_dive && !scr_solid(x, y + vsp))
    {
        inputBufferJump = 0;
        image_index = 0;
        state = states.freefall;
        sprite_index = spr_player_PZ_divebomb_start;
        dir = xscale;
        vsp = -6;
        
        if (global.treat)
        {
            vsp = -10;
            sprite_index = spr_player_donutSlam_intro;
            instance_create(x, y, obj_donutSlammable);
        }
        
        verticalMovespeed = vsp;
        freeFallsmash = 0;
    }
    
    if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
        var old_x = x;
        var old_y = y;
        var attempt = 0;
        var will_splat = true;
        
        if (scr_solid(x + xscale, y, true) && !scr_solid(x + xscale, y + 10) && !grounded)
        {
            will_splat = false;
            attempt++;
            y++;
            
            if (attempt > 10)
            {
                y = old_y;
                will_splat = true;
            }
        }
        
        if (will_splat)
        {
            scr_sound(sfx_splat);
            state = states.bump;
            image_index = 0;
            sprite_index = spr_player_PZ_splat;
        }
    }
    
    if (sprite_index == spr_crouchslip || sprite_index == spr_crouchslipintro || sprite_index == spr_player_PZ_machRoll || sprite_index == spr_player_PZ_machRoll3_intro)
        image_speed = abs(movespeed) / 15;
    else
        image_speed = 0.35;
    
    if (!instance_exists(obj_chargeeffectslide) && (sprite_index == spr_player_PZ_machRoll3_intro || sprite_index == spr_player_PZ_machRoll3) && sprite_index != spr_crouchslip && sprite_index != spr_crouchslipintro && sprite_index != spr_player_PZ_dive && movespeed >= 12)
    {
        with (instance_create(x + (55 * xscale), y + 20, obj_chargeeffectslide))
            image_yscale = 0.65;
    }
    
    if (!instance_exists(obj_dashcloud) && grounded)
    {
        with (instance_create(x, y, obj_dashcloud))
        {
            image_xscale = other.xscale;
            sprite_index = (other.movespeed >= 8) ? spr_dashcloud2 : spr_dashcloud;
        }
    }
    
    afterimage_timer--;
    
    if (afterimage_timer < 0)
    {
        with (instance_create(x, y, obj_blur_aftereffect))
        {
            image_index = max(other.image_index - 1, 0);
            image_alpha = 0.8;
            playerid = other.object_index;
            image_xscale = other.xscale;
            sprite_index = other.sprite_index;
        }
        
        afterimage_timer = 2;
    }
}
