function state_player_machtumble()
{
    hsp = xscale * movespeed;
    mask_index = spr_crouchmask;
    
    if (!grounded)
        movespeed = min(movespeed, 11);
    
    if (movespeed < 11)
        movespeed += 0.5;
    
    if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
    {
        var _ledge = snap_to_ledge();
        
        if (!_ledge)
        {
            scr_sound(sfx_splat);
            state = states.bump;
            image_index = 0;
            sprite_index = spr_player_PZ_splat;
        }
    }
    
    if (key_down)
    {
        if (grounded)
        {
            grav = 0.5;
            sprite_index = spr_crouchslip;
            machhitAnim = 0;
            state = states.machroll;
            
            if (audio_is_playing(sound_suplex1))
                audio_stop_sound(sound_suplex1);
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
            
            movespeed = 12;
            crouchSlipBuffer = 25;
        }
        else if (vsp < 6)
            vsp = 6;
    }
    
    if (inputBufferJump > 0 && can_jump)
    {
        if (scr_solid(x, y - 1, true))
        {
            grav = 0.5;
            inputBufferSlap = 0;
            vsp = 0;
            instance_create(x, y, obj_jumpdust);
            sprite_index = spr_crouchslipintro;
            image_index = 0;
            state = states.machroll;
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
            
            if (movespeed < 11)
                movespeed = 11;
        }
        else
        {
            inputBufferJump = 0;
            image_index = 0;
            sprite_index = spr_player_PZ_mach2_longJump_intro;
            image_index = 0;
            image_speed = 0.4;
            instance_create(x, y, obj_jumpdust);
            state = states.mach2;
            jumpstop = false;
            vsp = -11;
            grav = 0.3;
            scr_sound(sfx_pz_jump);
        }
    }
    
    if (animation_end())
    {
        if (scr_solid(x, y - 1, true))
        {
            if (key_attack)
            {
                grav = 0.5;
                inputBufferSlap = 0;
                vsp = 0;
                instance_create(x, y, obj_jumpdust);
                sprite_index = spr_crouchslipintro;
                image_index = 0;
                state = states.machroll;
                
                with (instance_create(x, y, obj_jumpdust))
                    image_xscale = other.xscale;
                
                if (movespeed < 11)
                    movespeed = 11;
            }
            else
            {
                grav = 0.5;
                inputBufferSlap = 0;
                vsp = 0;
                sprite_index = spr_couchstart;
                image_index = 0;
                state = states.crouch;
            }
        }
        else if (key_attack)
        {
            state = states.mach2;
            sprite_index = spr_player_PZ_mach2;
        }
        else if (inputBufferSlap > 0)
        {
            sprite_index = spr_player_PZ_suplexTumble;
            image_index = 0;
            inputBufferSlap = 0;
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
        }
        else
        {
            sprite_index = spr_fall;
            momentum = true;
            state = states.jump;
            jumpstop = true;
        }
    }
    
    image_speed = 0.35;
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
