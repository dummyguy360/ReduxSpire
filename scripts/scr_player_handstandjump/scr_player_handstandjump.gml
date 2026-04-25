function state_player_handstandjump()
{
    move = key_left + key_right;
    landAnim = 0;
    
    if (floatyGrab-- > 0)
    {
        vsp = min(vsp, 0);
        
        if (sparkle_effect-- < 0)
        {
            sparkle_effect = 5;
            
            with (instance_create(x, y, obj_bangeffect))
            {
                depth = -8;
                image_xscale = choose(1, -1);
                sprite_index = spr_shineeffect;
                image_speed = 0.35;
            }
        }
    }
    else if (!grounded && sprite_index != spr_player_PZ_suplexDashFall_intro && sprite_index != spr_player_PZ_suplexDashFall)
    {
        sprite_index = spr_player_PZ_suplexDashFall_intro;
        image_index = 0;
    }
    
    if ((sprite_index == spr_player_PZ_suplexDashFall_intro && animation_end()) || (!grounded && sprite_index == spr_player_PZ_suplexDashGround))
        sprite_index = spr_player_PZ_suplexDashFall;
    
    if (movespeed < 10)
        movespeed = approach(movespeed, 10, 0.5);
    
    hsp = xscale * movespeed;
    
    if (!key_jump2 && !jumpstop && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = true;
    }
    
    if (grounded && vsp > 0)
    {
        jumpstop = false;
        floatyGrab = 18;
    }
    
    momemtum = 1;
    dir = xscale;
    
    if (move != xscale && move != 0)
    {
        state = states.jump;
        image_index = 0;
        sprite_index = spr_player_PZ_suplexDash_cancel;
        jumpAnim = true;
        momemtum = 0;
        mach2 = 0;
        floatyGrab = 0;
        xscale *= -1;
        
        if (audio_is_playing(sound_suplex1))
            audio_stop_sound(sound_suplex1);
    }
    
    if (inputBufferJump > 0 && can_jump)
    {
        scr_sound(sfx_pz_jump);
        inputBufferJump = 0;
        image_index = 0;
        sprite_index = spr_player_PZ_mach2_longJump_intro;
        instance_create(x, y, obj_jumpdust);
        state = states.mach2;
        jumpstop = 0;
        vsp = -11;
        grav = 0.3;
    }
    // Bumping
    if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
        var _ledge = 0;
        _ledge -= slope_check_up(x + xscale, y, 32);
        _ledge += slope_check_down(x + xscale, y, 3);
        
        if (_ledge != 0)
            y += _ledge;
        else if (_ledge <= 0 && !place_meeting(x + xscale, y, obj_destructibles))
        {
            if (!grounded || slopeCheck(x + xscale, y))
            {
                verticalMovespeed = 7;
                
                if (vsp > 0 && place_meeting(x + xscale, y, obj_icyWall))
                    verticalMovespeed -= vsp;
                
                grabclimbbuffer = 10;
                state = states.climbwall;
            }
            else
            {
                scr_sound(sfx_splat);
                jumpstop = true;
                state = states.jump;
                floatyGrab = 18;
                vsp = -4;
                sprite_index = spr_player_PZ_suplexDash_bump;
                image_index = 0;
            }
        }
    }
    
    image_speed = 0.3;
    
    if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
    {
        instance_create(x, y, obj_slidecloud, 
        {
            image_xscale: xscale
        });
    }
    
    if (sprite_index == spr_player_PZ_suplexDash_intro && animation_end())
    {
        if (grounded)
            sprite_index = spr_player_PZ_suplexDashGround;
        else
        {
            sprite_index = spr_player_PZ_suplexDashFall_intro;
            image_index = 0;
        }
    }
    
    if (grounded && ((sprite_index == spr_player_PZ_suplexDashGround && animation_end()) || sprite_index == spr_player_PZ_suplexDashFall || sprite_index == spr_player_PZ_suplexDashFall_intro))
    {
        image_speed = 0.35;
        grav = 0.5;
        
        if (key_attack)
        {
            state = states.mach2;
            sprite_index = spr_mach2;
            floatyGrab = 0;
        }
        else
        {
            sprite_index = spr_idle;
            image_index = 0;
            momentum = true;
            state = states.normal;
            floatyGrab = 0;
            jumpstop = true;
        }
    }
    
    if (inputBufferSlap > 0 && (!key_down || !grounded))
    {
        scr_sound(sfx_dive);
        sprite_index = spr_player_PZ_suplexTumble;
        image_index = 0;
        image_speed = 0.2;
        
        if (!grounded && floatyGrab > 0)
        {
            vsp = -6;
            floatyGrab = 0;
        }
        
        state = states.machtumble;
        inputBufferSlap = 0;
        movespeed = max(movespeed, 12);
        
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale;
    }
    
    if (key_down)
    {
        vsp = max(vsp, 6);
        floatyGrab = 0;
        
        if (grounded)
        {
            scr_sound(sfx_dive);
            grav = 0.5;
            sprite_index = spr_player_PZ_crouchSlip_intro;
            image_index = 0;
            machhitAnim = 0;
            state = states.machroll;
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
            
            movespeed = 11;
            crouchSlipBuffer = 25;
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
