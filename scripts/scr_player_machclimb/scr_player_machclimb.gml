function state_player_climbwall()
{
    floatyGrab = 0;
    railmovespeed = 0;
    hsp = xscale;
    
    if (windingAnim < 200)
        windingAnim++;
    
    jumpstop = false;
    move = key_right + key_left;
    vsp = -verticalMovespeed;
    
	// Running on Goop.
    if (vsp != 0 && place_meeting(x + xscale, y, obj_molassesWall))
    {
        if ((floor(image_index) % 4) == 0)
        {
            with (instance_create(x + (16 * xscale), y + 43, obj_debris))
            {
                sprite_index = spr_molassesgoop;
                image_index = irandom_range(0, 5);
            }
        }
    }
    
	// Movespeed.
    var _maxspeed = (move == xscale) ? 20 : 12;
    
    if (verticalMovespeed < _maxspeed && !place_meeting(x + xscale, y, obj_molassesWall))
        verticalMovespeed += 0.1;
    else if (place_meeting(x + xscale, y, obj_molassesWall))
    {
        if (verticalMovespeed > 0)
            verticalMovespeed -= 0.05;
        else
        {
            movespeed = 0;
            vsp /= 2;
            state = states.jump;
            sprite_index = spr_fall;
            railmovespeed = 6;
            raildir = -xscale;
        }
    }
    
    if (verticalMovespeed > 0)
    {
        if (movespeed < 20)
        {
            if (!mach4mode)
                movespeed += 0.025;
            else
                movespeed += 0.1;
        }
    }
    
    if (movespeed > 16)
        mach4mode = true;
    
    crouchslideAnim = 1;
    
    if (sprite_index == spr_player_PZ_mach2_climbWall && verticalMovespeed >= 12)
        flash = true;
    
    if (sprite_index != spr_fall && sprite_index != spr_mach3ceiling)
        sprite_index = (verticalMovespeed >= 12) ? spr_player_PZ_mach3_climbWall : spr_player_PZ_mach2_climbWall;
    
    if (verticalMovespeed <= 0)
    {
        movespeed = 0;
        mach2 = 0;
    }
    
    if (grabclimbbuffer > 0)
        grabclimbbuffer--;
    
    if (!key_attack && grabclimbbuffer <= 0)
    {
        movespeed = 0;
        vsp /= 2;
        state = states.jump;
        sprite_index = spr_fall;
        railmovespeed = 6;
        raildir = -xscale;
    }
    
    if (!scr_solid(x + xscale, y))
    {
        instance_create(x, y, obj_jumpdust, 
        {
            playerID: id
        });
        vsp = 0;
        verticalMovespeed = max(verticalMovespeed, 6);
        var old_y = y;
        var attempt = 0;
        
        while (!scr_solid(x + xscale, y))
        {
            attempt++;
            y++;
            
            while (scr_solid(x + xscale, y))
            {
                y--;
                
                if (key_slap)
                    y -= 11;
                
                break;
            }
            
            if (attempt > 32)
                break;
        }
        
        if (verticalMovespeed < 12)//Reset Speed
        {
            state = states.mach2;
            movespeed = verticalMovespeed;
        }
        else if (verticalMovespeed >= 12)
        {
            state = states.mach3;
            sprite_index = spr_player_PZ_mach3;
            movespeed = verticalMovespeed;
        }
        
        hsp = movespeed * xscale;
    }
    
    if (scr_solid(x, y - 1, true) && vsp <= 0 && !place_meeting(x, y - 1, obj_destructibles) && !scr_slope_ext(x + xscale, y))
    {
        sprite_index = spr_player_ceilingcrash;
        scr_sound(sound_maximumspeedland);
        image_index = 0;
        state = states.Sjumpland;
        machhitAnim = 0;
        
        with (obj_camera)
        {
            shake_mag = 10;
            shake_mag_acc = 30 / room_speed;
        }
    }
    else if (scr_solid(x, y - 1, true) && vsp <= 0 && !place_meeting(x, y - 1, obj_destructibles))
    {
        state = states.climbceiling;
        vsp = -1;
        
        if (verticalMovespeed < 6)
            verticalMovespeed = 6;
        
        sprite_index = spr_mach3ceiling;
        dir = (move == xscale) ? xscale : -xscale;
        movespeed = verticalMovespeed;
    }
    
    if (inputBufferJump > 0)
    {
        inputBufferJump = 0;
        jumpstop = false;
        xscale *= -1;
        state = states.backkick;
        vsp = -14;
        scr_sound(sfx_wallkickstart);
        sprite_index = spr_player_PZ_wallJump_intro;
        image_index = 0;
        image_speed = 0.45;
        movespeed = 4 * xscale;
        hsp = movespeed;
        dir = xscale;
        
        repeat (5)
        {
            with (instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_radiating_particle))
            {
                image_speed = 0.25;
                canRotate = true;
                minSpd = 2;
                maxSpd = 5;
                lifeTime = -1;
            }
        }
        
        with (instance_create(x, y, obj_jumpdust, 
        {
            playerID: id
        }))
        {
            image_xscale = other.xscale;
            sprite_index = spr_wallkick_effect;
        }
        
        scr_sound(sfx_pz_jump);
    }
    
    if (grounded && verticalMovespeed < 0)
    {
        state = states.jump;
        sprite_index = spr_fall;
        vsp = -verticalMovespeed;
    }
    
	//Effects and Image Speed
    image_speed = 0.6;
    
    if (!instance_exists(obj_puffEffect))
        instance_create(x, y + 43, obj_puffEffect);
    
    if (!instance_exists(superJumpEffect) && verticalMovespeed >= 12)
    {
        superJumpEffect = instance_create(x - (10 * xscale), y - 35, obj_superJumpEffect, 
        {
            PlayerID: 370
        });
    }
}

function state_player_climbceiling()
{
    if (windingAnim < 2000)
        windingAnim++;
    
    move = key_right + key_left;
    
    if (move != dir && dir != -xscale)
        dir = -xscale;
    
    hsp = movespeed * -xscale;
    vsp = 0;
    
    if (movespeed < 20 && move == dir)
    {
        if (!mach4mode)
            movespeed += 0.025;
        else
            movespeed += 0.1;
    }
    
    sprite_index = spr_mach3ceiling;
    
    if (!place_meeting_collision(x, y - 31))
    {
        vsp = 0;
        xscale *= -1;
        
        if (movespeed < 12)
            state = states.mach2;
        else if (movespeed >= 12)
            state = states.mach3;
        
        sprite_index = spr_player_PZ_mach3_ceiling_fall;
        image_index = 0;
        
        with (obj_chargeeffect)
            image_yscale = 1;
    }
    // Machslide.
    if (move == -dir)
    {
        vsp = 0;
        xscale *= -1;
        slope_angle = 180;
        
        if (movespeed < 12)
        {
            scr_sound(sfx_machstop);
            sprite_index = spr_machslideboost;
            image_index = 0;
            state = states.machslide;
        }
        else
        {
            scr_sound(sfx_pz_machdrift);
            sprite_index = spr_machslideboost3;
            flash = 0;
            state = states.machslide;
            image_index = 0;
            mach2 = 100;
        }
    }
    // Release Dash.
    if (!key_attack)
    {
        vsp = 0;
        xscale *= -1;
        slope_angle = 180;
        scr_sound(sfx_machstop);
        sprite_index = spr_machslidestart;
        image_index = 0;
        state = states.machslide;
    }
    // Hit Wall.
    if (place_meeting_slope(x, y - 1) && scr_solid(x - xscale, y, true) && !place_meeting(x - xscale, y, obj_destructibles) && !(place_meeting(x - xscale, y, obj_metalblock) && movespeed >= 12))
    {
        dir = (move == xscale) ? xscale : -xscale;
        vsp = 0;
        verticalMovespeed = movespeed;
        state = states.climbdownwall;
    }
    else if (scr_solid(x - xscale, y, true) && !place_meeting(x - xscale, y, obj_destructibles) && !(place_meeting(x - xscale, y, obj_metalblock) && movespeed >= 12))
    {
        vsp = 0;
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
        hsp = -2.5 * -xscale;
        vsp = -3;
        mach2 = 0;
        image_index = 0;
        instance_create(x + (10 * -xscale), y + 10, obj_bumpeffect);
    }
    //Jump out of wall
    
    if (inputBufferJump > 0 && key_attack)
    {
        inputBufferJump = 0;
        
        if (movespeed >= 12)
        {
            upsideDownJump = true;
            image_index = 0;
            sprite_index = spr_player_PZ_mach3_ceiling_fall;
            vsp = 5;
            jumpstop = false;
            state = states.mach3;
            xscale *= -1;
            
            with (obj_chargeeffect)
                image_yscale = 1;
        }
        else
        {
            upsideDownJump = true;
            image_index = 0;
            sprite_index = spr_player_PZ_mach3_ceiling_fall;
            vsp = 5;
            jumpstop = false;
            state = states.mach2;
            xscale *= -1;
        }
        
        instance_create(x, y, obj_jumpdust);
        
        if (!playedjumpsound)
        {
            scr_sound(sfx_pz_jump);
            playedjumpsound = 1;
        }
    }
    //Effects and Image Speed
    
    if (movespeed >= 12)
    {
        if (!instance_exists(obj_crazyruneffect))
        {
            instance_create(x, y, obj_crazyruneffect, 
            {
                playerID: id
            });
        }
        
        if (!instance_exists(obj_chargeeffect) && sprite_index != spr_dive)
        {
            with (instance_create(x + (16 * -other.xscale), y + 46, obj_chargeeffect))
            {
                playerID = other.id;
                image_yscale = -1;
                image_xscale = -other.xscale;
            }
        }
        
        if (!instance_exists(obj_superdashcloud))
        {
            with (instance_create(x + (16 * -other.xscale), y + 46, obj_superdashcloud))
            {
                playerID = other.id;
                image_yscale = -1;
                image_xscale = -other.xscale;
            }
        }
    }
    
    image_speed = 0.6;
}

function state_player_climbdownwall()
{
    hsp = -xscale;
    upsideDownJump = false;
    
    if (windingAnim < 200)
        windingAnim++;
    
    move = key_right + key_left;
    suplexmove = 0;
    vsp = verticalMovespeed;
    // Running on Goop.
    if (vsp != 0 && place_meeting(x - xscale, y, obj_molassesWall))
    {
        if ((floor(image_index) % 4) == 0)
        {
            with (instance_create(x + (16 * -xscale), y + 43, obj_debris))
            {
                sprite_index = spr_molassesgoop;
                image_index = irandom_range(0, 5);
            }
        }
    }
    
	// Movespeed.
    var _maxspeed = (move == xscale) ? 25 : 14;
    
    if (verticalMovespeed < _maxspeed && !place_meeting(x - xscale, y, obj_molassesWall))
        verticalMovespeed += 0.1;
    else if (place_meeting(x - xscale, y, obj_molassesWall))
    {
        if (verticalMovespeed > 0)
            verticalMovespeed -= 0.05;
    }
    
    if (verticalMovespeed > 0)
    {
        if (movespeed < 20)
        {
            if (!mach4mode)
                movespeed += 0.025;
            else
                movespeed += 0.1;
        }
    }
    
    if (movespeed > 16)
        mach4mode = true;
    
    crouchslideAnim = 1;
    sprite_index = spr_climbdownwall;
    
    if (!key_attack && grabclimbbuffer <= 0)
    {
        xscale *= -1;
        movespeed = 0;
        vsp /= 2;
        state = states.jump;
        sprite_index = spr_fall;
        slideHsp = -9 * xscale;
    }
    //When wall ends
    if (!scr_solid(x - (xscale * 3), y))
    {
        instance_create(x, y, obj_jumpdust);
        xscale *= -1;
        vsp = verticalMovespeed;
        sprite_index = spr_player_PZ_divebomb_fall;
        state = states.freefall;
        freefallsmash = 10;
    }
    //Hit Floor
    if (scr_solid(x, y + 1) && !place_meeting(x, y + 1, obj_metalblock) && !place_meeting(x, y + 1, obj_destructibles))
    {
        if (scr_slope_ext(x, y + 1))
        {
            if (verticalMovespeed < 6)
                verticalMovespeed = 6;
            
            if (verticalMovespeed >= 6 && verticalMovespeed < 12)//Reset Speed
            {
                state = states.mach2;
                movespeed = verticalMovespeed;
            }
            else if (verticalMovespeed >= 12)
            {
                state = states.mach3;
                sprite_index = spr_mach3player;
                movespeed = verticalMovespeed;
            }
        }
        else
        {
            xscale *= -1;
            scr_sound(sound_maximumspeedland);
            image_index = 0;
            state = states.freefallland;
            jumpAnim = 1;
            jumpstop = 0;
            
            with (obj_baddie)
            {
                if (bbox_in_camera(view_camera[0]) && grounded)
                {
                    vsp = -7;
                    hsp = 0;
                }
            }
            
            with (obj_camera)
            {
                shake_mag = 10;
                shake_mag_acc = 30 / room_speed;
            }
            
            combo = 0;
            bounce = 0;
            instance_create(x, y, obj_landcloud);
            freefallstart = 0;
            image_index = 0;
            sprite_index = spr_bodyslamland;
        }
    }
    
    if (inputBufferJump > 0 && key_attack)
    {
        inputBufferJump = 0;
        
        if (movespeed >= 12 && !place_meeting(x - xscale, y, obj_molassesWall))
        {
            upsideDownJump = true;
            image_index = 0;
            sprite_index = spr_mach3jump;
            vsp = 3;
            jumpstop = false;
            state = states.mach3;
        }
        else if (movespeed >= 6 && !place_meeting(x - xscale, y, obj_molassesWall))
        {
            upsideDownJump = true;
            image_index = 0;
            sprite_index = spr_secondjump1;
            vsp = 3;
            jumpstop = false;
            state = states.mach2;
        }
        else
        {
            upsideDownJump = true;
            sprite_index = spr_mach2jump;
            movespeed = clamp(movespeed, 6, 10);
            jumpstop = false;
            vsp = 3;
            state = states.mach2;
            
            with (instance_create(x + (16 * -xscale), y + 43, obj_debris))
            {
                sprite_index = spr_molassesgoop;
                image_index = irandom_range(0, 5);
            }
        }
        
        instance_create(x, y, obj_jumpdust);
        
        if (!playedjumpsound)
        {
            scr_sound(sfx_pz_jump);
            playedjumpsound = 1;
        }
    }
    //Effects and Image Speed
    image_speed = 0.6;
    
    if (!instance_exists(obj_cloudeffect))
        instance_create(x, y + 43, obj_cloudeffect);
}
