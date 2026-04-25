function state_player_Sjump()
{
    hsp = 0;
    mach2 = 0;
    jumpAnim = true;
    landAnim = false;
    crouchAnim = false;
    move = key_left + key_right;
    
    if (move != 0 && sprite_index != spr_player_PZ_superSpring)
    {
        if (xscale != move)
        {
            movespeed = 0;
            xscale = move;
        }
        
        hsp = movespeed * sign(move);
        movespeed = approach(movespeed, 3, 0.5);
    }
    else
        movespeed = 0;
    
    if (sprite_index == spr_player_PZ_superJump)
    {
        if (!piledrivereffect--)
        {
            with (instance_create(x, y, obj_piledrivereffect))
            {
                playerID = obj_player;
                sprite_index = spr_sjumpeffect;
            }
            
            piledrivereffect = 15;
        }
        
        if (!cloudeffect--)
        {
            instance_create(x + irandom_range(-25, 25), y + irandom_range(-10, 35), obj_cloudeffect);
            cloudeffect = 8;
        }
    }
    
    if (sprite_index == spr_player_PZ_superJump || sprite_index == spr_player_PZ_fall_outOfControl || sprite_index == spr_player_PZ_superSpring)
    {
        vsp = verticalMovespeed;
        verticalMovespeed -= 0.1;
    }
    
    if (sprite_index == spr_player_PZ_superJump_cancel_intro)
        vsp = 0;
    
    if (scr_solid(x, y + vsp) && !place_meeting(x, y + vsp, obj_boxofpizza) && !place_meeting(x, y + vsp, obj_metalblock) && !place_meeting(x, y + vsp, obj_destructibles) && sprite_index != spr_player_PZ_superJump_cancel_intro)
    {
        scr_sound(sound_maximumspeedland);
        sprite_index = (sprite_index == spr_player_PZ_superSpring || sprite_index == spr_player_PZ_fall_outOfControl) ? spr_player_PZ_superSpring_land : spr_player_PZ_superJump_land;
        
        with (obj_camera)
        {
            shake_mag = 10;
            shake_mag_acc = 30 / room_speed;
        }
        
        with (obj_baddie)
        {
            if (bbox_in_camera(view_camera[0]) && grounded)
            {
                image_index = 0;
                state = baddiestate.idle;
                vsp = -7;
                hsp = 0;
            }
        }
        
        image_index = 0;
        state = states.Sjumpland;
        machhitAnim = 0;
        movespeed = 0;
    }
    else if ((key_attack2 || inputBufferSlap > 0) && sprite_index != spr_player_PZ_fall_outOfControl && sprite_index != spr_player_PZ_superSpring && sprite_index != spr_player_PZ_superJump_cancel_intro)
    {
        scr_sound(sound_superjumpcancel);
        image_index = 0;
        image_speed = 0.5;
        vsp = 0;
        sprite_index = spr_player_PZ_superJump_cancel_intro;
        inputBufferSlap = 0;
    }
    
    if (sprite_index == spr_player_PZ_superJump_cancel_intro)
    {
        hsp = 0;
        movespeed = 0;
        
        if (animation_end())
        {
            if (move != 0)
                xscale = move;
            
            movespeed = 12;
            machhitAnim = 0;
            state = states.mach3;
            flash = 1;
            vsp = -4;
            jumpstop = true;
            image_index = 0;
            sprite_index = spr_player_PZ_superJump_cancel;
            
            with (instance_create(x, y, obj_crazyrunothereffect))
                image_xscale = other.xscale;
        }
    }
    
    image_speed = 0.5;
    
    if (sprite_index == spr_player_PZ_superJump_cancel_intro)
        image_speed = 0.55;
    else if (sprite_index != spr_player_PZ_superJump_cancel_intro && sprite_index != spr_player_PZ_superJump_cancel)
    {
        if (!instance_exists(superJumpEffect))
            superJumpEffect = instance_create(x, y - 35, obj_superJumpEffect, { playerID: id });
    }
    
    scr_collision();
}
