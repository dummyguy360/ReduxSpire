function state_player_mach3()
{
    windingAnim = min(windingAnim + 1, 2000);
    mach2 = 100;
    hsp = xscale * movespeed;
    move = key_right + key_left;
    move2 = key_right2 + key_left2;
    momemtum = 1;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = 1;
    }
    
    if (grounded && vsp > 0)
        jumpstop = 0;
    
    if (inputBufferJump > 0 && can_jump && move != -xscale)
    {
        image_index = 0;
        sprite_index = spr_mach3jump;
        inputBufferJump = 0;
        scr_sound(sfx_pz_jump);
        vsp = -11;
        instance_create(x, y, obj_jumpdust, 
        {
            playerID: id
        });
    }
    
    if (grounded)
    {
        if (slopeCheck(x, y) && hsp != 0 && movespeed > 12 && movespeed < 18)
            player_slopeMomentum(0.1, 0.2);
    }
    
    var maxspd = 20;
    
    if (move == xscale && grounded)
    {
        if (movespeed < maxspd)
        {
            if (mach4mode)
                movespeed += 0.1;
            else
                movespeed += 0.025;
        }
    }
    
    if (sprite_index == spr_mach3jump && floor(image_index) == (image_number - 1))
        sprite_index = spr_mach3player;
    
    if ((sprite_index == spr_player_PZ_superJump_cancel || sprite_index == spr_player_PZ_mach3_ceiling_fall) && grounded)
        sprite_index = spr_mach3player;
    
    if (animation_end() && (sprite_index == spr_player_PZ_machRoll_getUp || sprite_index == spr_player_PZ_mach3_hit || sprite_index == spr_player_PZ_mach3_dashPad))
        sprite_index = spr_player_PZ_mach3;
    
    if (animation_end() && sprite_index == spr_player_PZ_wallJumpCancel_intro)
        sprite_index = spr_player_PZ_wallJumpCancel;
    
    if (grounded && (sprite_index == spr_player_PZ_dive || sprite_index == spr_player_PZ_wallJumpCancel_intro || sprite_index == spr_player_PZ_wallJumpCancel))
        sprite_index = spr_player_PZ_machRoll_getUp;
    
    if (sprite_index == spr_player_PZ_mach3_ceiling_fall && animation_end())
        image_index = 11;
    
    if (movespeed > 16 && sprite_index != spr_player_PZ_mach4 && sprite_index != spr_player_PZ_dive)
    {
        mach4mode = true;
        flash = true;
        sprite_index = spr_player_PZ_mach4;
        
        with (instance_create(x, y, obj_slapstar))
        {
            hsp = random_range(-5, 5);
            vsp = random_range(-10, 10);
        }
    }
    else if (movespeed <= 16 && sprite_index == spr_crazyrun)
    {
        sprite_index = spr_mach3player;
    }
    
    if (key_up && sprite_index != spr_machdashpad && sprite_index != spr_dive && can_jump)
    {
        scr_sound(sfx_pz_superjumpIntro);
        sprite_index = spr_player_PZ_superJump_prep;
        state = states.Sjumpprep;
        hsp = 0;
        instance_create(x, y, obj_jumpdust);
        vsp = min(vsp + 5, 20);
        image_index = 0;
    }
    
    if (grounded && vsp >= 0 && Dashpad_buffer <= 0)
    {
        if (!key_attack && grounded && sprite_index != spr_machdashpad)
        {
            scr_sound(sfx_machstop);
            sprite_index = spr_machslidestart;
            image_index = 0;
            state = states.machslide;
        }
        
        if (move == -xscale && grounded)
        {
            scr_sound(sfx_pz_machdrift);
            sprite_index = spr_machslideboost3;
            flash = 0;
            state = states.machslide;
            image_index = 0;
            mach2 = 100;
        }
    }
    
    if (sprite_index == spr_player_PZ_mach2)
        sprite_index = spr_player_PZ_mach3;
    
    if (key_shoot2 && global.treat)
    {
        vsp = -5;
        state = states.donut;
        image_index = 0;
        sprite_index = spr_player_throwDonut;
        
        with (instance_create(x, y + 25, obj_donutShitted))
        {
            var _angle = (other.xscale > 0) ? 0 : 180;
            Hmovespeed = lengthdir_x(20, _angle);
            Vmovespeed = lengthdir_y(20, _angle);
            shattedBy = other.id;
        }
    }
    
    if (key_down && !key_slap2 && !place_meeting(x, y, obj_dashpad))
    {
        mach3Roll = mach3RollMax;
        flash = false;
        state = states.machroll;
        
        if (!grounded)
        {
            sprite_index = spr_dive;
            scr_sound(sfx_dive);
        }
        
        image_index = 0;
        sprite_index = spr_player_PZ_machRoll3_intro;
        vsp = 10;
    }
    
    if (grounded)
        upsideDownJump = false;
    
    if ((!grounded || slopeCheck(x + xscale, y)) && scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles) && !place_meeting(x + xscale, y, obj_metalblock))
    {
        if (!upsideDownJump)
        {
            verticalMovespeed = movespeed;
            
            if (vsp > 0 && place_meeting(x + xscale, y, obj_icyWall))
                verticalMovespeed -= vsp;
            
            grabclimbbuffer = 0;
            state = states.climbwall;
        }
        else
        {
            if (vsp > 0 && place_meeting(x + xscale, y, obj_icyWall))
                verticalMovespeed += vsp;
            
            dir = (move == xscale) ? xscale : -xscale;
            vsp = 0;
            grabclimbbuffer = 0;
            verticalMovespeed = movespeed;
            state = states.climbdownwall;
            xscale *= -1;
        }
    }
    else if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles) && !place_meeting(x + xscale, y, obj_metalblock))
    {
        var _ledge = 0;
        _ledge -= slope_check_up(x + xscale, y, 32);
        _ledge += slope_check_down(x + xscale, y, 3);
        
        if (_ledge != 0)
            y += _ledge;
        else
        {
            scr_sound(sound_maximumspeedland);
            camera_shake(20, 40);
            image_speed = 0.35;
            
            with (obj_baddie)
            {
                if (bbox_in_camera(view_camera[0]) && grounded)
                {
                    stun = 1;
                    alarm[0] = 200;
                    ministun = 0;
                    vsp = -5;
                    hsp = 0;
                }
            }
            
            flash = 0;
            combo = 0;
            sprite_index = spr_mach3hitwall;
            state = states.bump;
            hsp = -6 * xscale;
            vsp = -6;
            mach2 = 0;
            image_index = 0;
            instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
        }
    }
    
    if (sprite_index == spr_crazyrun && !instance_exists(obj_crazyrunothereffect))
    {
        instance_create(x, y, obj_crazyrunothereffect, 
        {
            playerID: id
        });
    }
    
    if (!instance_exists(obj_crazyruneffect))
    {
        instance_create(x, y, obj_crazyruneffect, 
        {
            playerID: id
        });
    }
    
    if (!instance_exists(obj_chargeeffect) && sprite_index != spr_dive)
        instance_create(x, y, obj_chargeeffect, { playerID: id });
    
    if (!instance_exists(obj_superdashcloud) && grounded)
        instance_create(x, y, obj_superdashcloud, { playerID: id });
    
    if (sprite_index == spr_player_PZ_mach4)
        image_speed = 0.7;
    else if (sprite_index == spr_player_PZ_mach3_ceiling_fall)
        image_speed = 0.5;
    else if (sprite_index == spr_player_PZ_mach3_dashPad)
        image_speed = 0.3;
    else if (sprite_index == spr_player_PZ_wallJumpCancel || sprite_index == spr_player_PZ_wallJumpCancel_intro)
        image_speed = 0.35;
    else
        image_speed = 0.35;
    
    if (sprite_index != spr_dive)
    {
        do_taunt();
        do_grab();
    }
}
