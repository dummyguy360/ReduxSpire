function state_player_normal()
{
    roomname = room_get_name(room);
    
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 2;
        facehurt = 0;
    }
    
    mach2 = 0;
    move = key_left + key_right;
    
    if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
        hsp = move * movespeed;
    else if (place_meeting(x, y + 1, obj_railh))
        hsp = (move * movespeed) - 5;
    else if (place_meeting(x, y + 1, obj_railh2))
        hsp = (move * movespeed) + 5;
    
    var _idle_spr = spr_idle;
    var _move_spr = spr_move;
    var _dontidle = false;
    var _dontStep = false;
    
    if (global.panic)
    {
        _idle_spr = spr_player_PZ_idle_escape;
        
        if (instance_exists(obj_coneball))
            _idle_spr = spr_player_timesupidle;
    }
    
    if (global.combo >= 10)
    {
        _idle_spr = spr_player_PZ_idle_comboSmall;
        _move_spr = spr_player_PZ_walk_comboSmall;
    }
    
    if (global.combo >= 50)
    {
        _idle_spr = spr_player_PZ_idle_comboBig;
        _move_spr = spr_player_PZ_walk_comboBig;
    }
    
    if (global.levelname == "fudge" && global.combo < 10)
        _idle_spr = spr_player_fudgeidle;
    
    if (global.levelname == "dance" && global.combo < 10)
    {
        _idle_spr = spr_player_PZ_idle_dance;
        _move_spr = spr_player_PZ_walk_dance;
    }
    
    if (windingAnim > 0)
    {
        windingAnim -= 5;
        _idle_spr = spr_player_PZ_tired;
    }
    
    if (key_taunt)
    {
        if (breakdanceBuffer++ >= 10)
        {
            idle = spr_player_machpunch2;
            windingAnim = 0;
            machslideAnim = 0;
            landAnim = false;
            slamHurt = 0;
            breakdanceSpeed = approach(breakdanceSpeed, 0.6, 0.005);
            _idle_spr = spr_player_PZ_idle_breakdance;
            _move_spr = spr_player_PZ_idle_breakdance;
            _dontidle = true;
            _dontStep = true;
            
            if (sprite_index == spr_idle1 || sprite_index == spr_idle2 || sprite_index == spr_idle3 || sprite_index == spr_idle4 || sprite_index == spr_idle5 || sprite_index == spr_idle6)
            {
                image_index = 0;
                sprite_index = _idle_spr;
            }
        }
    }
    else
    {
        breakdanceBuffer = 0;
        breakdanceSpeed = 0.25;
    }
    
    if (breakdanceSpeed >= 0.5)
    {
        if (!instance_exists(obj_breakdanceBoomBox))
        {
            instance_create(x, y, obj_poofeffect);
            
            with (instance_create(x, y, obj_breakdanceBoomBox, { playerID: id }))
                vsp = -11;
        }
        
        breakdance_effect--;
    }
    
    if (breakdance_effect <= 0)
    {
        instance_create(x + irandom_range(-70, 70), y + irandom_range(-70, 70), obj_breakdanceEffects);
        breakdance_effect = 10;
    }
    
    if ((!machslideAnim && !landAnim) || animation_end())
    {
        machslideAnim = false;
        landAnim = false;
        
        if (move == 0 && ((sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4 && sprite_index != spr_idle5 && sprite_index != spr_idle6) || animation_end()))
        {
            if (slamHurt)
            {
                slamHurt--;
                
                if (animation_end() && sprite_index == spr_player_PZ_groundPoundEnd_intro)
                    sprite_index = (sprite_index == spr_player_PZ_groundPoundEnd_intro) ? spr_player_PZ_groundPoundEnd : spr_player_facehurt;
            }
            else
            {
                if (sprite_index != _idle_spr)
                    image_index = 0;
                
                sprite_index = _idle_spr;
            }
            
            if (sprite_index != spr_player_PZ_walk_breakdance && sprite_index != spr_player_PZ_idle_breakdance && !_dontidle && sprite_index != spr_player_PZ_tired)
            {
                if (idle < spr_alrightcombo_boil)
                    idle += spr_chargershitbox;
                else
                {
                    sprite_index = choose(spr_idle1, spr_idle2, spr_idle3, spr_idle4, spr_idle5, spr_idle6);
                    image_index = 0;
                    
                    if (chance_update(25))
                    {
                        var a = scr_sound(choose(sfx_PZvoice_idle1, sfx_PZvoice_idle2, sfx_PZvoice_idle3, sfx_PZvoice_idle4, sfx_PZvoice2));
                        audio_sound_pitch(a, random_range(0.95, 1.05));
                    }
                    
                    idle = spr_player_machpunch2;
                }
            }
        }
        
        if (move != 0)
        {
            slamHurt = 0;
            
            if (sprite_index != _move_spr)
                image_index = 0;
            
            sprite_index = _move_spr;
        }
    }
    else
    {
        if (slamHurt)
            sprite_index = spr_player_facehurtup;
        
        if (landAnim)
            sprite_index = (move == 0) ? spr_land : spr_land2;
        
        if (machslideAnim)
            sprite_index = spr_machslideend;
    }
    
    if (scr_solid(x + move, y, true))
        movespeed = 0;
    
    jumpstop = false;
    jumpstop = 0;
    
    if (!grounded && !key_jump)
    {
        sprite_index = spr_fall;
        jumpAnim = 0;
        state = states.jump;
        image_index = 0;
    }
    
    if (can_jump && inputBufferJump > 0 && !key_down && (!key_attack || scr_solid(x + xscale, y, true)))
    {
        inputBufferJump = 0;
        scr_sound(sfx_pz_jump);
        sprite_index = spr_jump;
        
        with (instance_create(x, y, obj_highjumpcloud2))
            sprite_index = spr_highjumpcloud1;
        
        stompAnim = 0;
        vsp = -11;
        state = states.jump;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        freefallstart = 0;
    }
    
    if (move != 0)
    {
        if (movespeed < 7)
            movespeed = approach(movespeed, 7, 0.5);
    }
    else
        movespeed = 0;
    
    if (movespeed > 7)
        movespeed = approach(movespeed, 7, 0.1);
    
    momemtum = 0;
    
    if (move != 0)
    {
        xscale = move;
        
        if (movespeed < 3 && move != 0)
            image_speed = 0.35;
        else if (movespeed > 3 && movespeed < 6)
            image_speed = 0.45;
        else
            image_speed = 0.6;
    }
    else
        image_speed = 0.35;
    
    if (sprite_index == spr_player_PZ_walk_breakdance || sprite_index == spr_player_PZ_idle_breakdance)
        image_speed = breakdanceSpeed;
    
    if ((key_down && grounded) || scr_solid(x, y - 3))
    {
        state = states.crouch;
        landAnim = 0;
        crouchAnim = 1;
        image_index = 0;
        idle = spr_player_machpunch2;
    }
    
    if (grounded && move != 0 && vsp >= 0)
    {
        if (!stepEffectBuffer--)
        {
            instance_create(x, y + 43, obj_puffEffect);
            
            if (!_dontStep)
                scr_sound(sfx_playerstep);
            
            stepEffectBuffer = 12;
        }
    }
    
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
    
    do_taunt();
    do_grab();
    
    if (key_attack && grounded && !scr_solid(x + xscale, y, true))
    {
        mach2 = 0;
        movespeed = max(abs(movespeed), 6);
        sprite_index = spr_mach1;
        image_index = 0;
        jumpAnim = true;
        state = states.mach2;
    }
}
