function state_player_jump()
{
    move = key_left + key_right;
    
    if (momentum)
        hsp = xscale * movespeed;
    else
        hsp = move * movespeed;
    
    if (move != xscale && momentum && movespeed != 0)
        movespeed = approach(movespeed, 0, 0.1);
    
    if (movespeed <= 0)
        momentum = false;
    
    if ((move == 0 && !momentum) || scr_solid(x + hsp, y))
    {
        movespeed = 0;
        mach2 = 0;
    }
    
    hsp += (railmovespeed * raildir);
    
    if (move != 0 && movespeed < 7)
        movespeed += 0.5;
    
    if (movespeed > 7)
        movespeed -= 0.1;
    
    if (move == xscale && scr_solid(x + xscale, y))
    {
        var _ledge = false;
        
        if (vsp < 0)
            _ledge = snap_to_ledge(xscale, 6);
        
        if (!_ledge)
            movespeed = 0;
    }
    
    if (dir != xscale)
    {
        mach2 = 0;
        dir = xscale;
        movespeed = 0;
    }
    
    if (move == -xscale)
    {
        mach2 = 0;
        movespeed = 0;
        momemtum = 0;
    }
    
    landAnim = 1;
    
    if (!key_jump2 && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 20;
        jumpstop = 1;
    }
    
    ladderBuffer = max(ladderBuffer - 1, 0);
    
    if (scr_solid(x, y - 1) && !jumpstop && jumpAnim)
    {
        vsp = grav;
        jumpstop = true;
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
        grav = 0.3;
        state = states.jump;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        freefallstart = 0;
        instance_create(x, y, obj_landcloud);
    }
    
    if (grounded && vsp > 0 && (!key_attack || scr_solid(x + xscale, y, true)))
    {
        inputBufferSecondJump = 0;
        
        if (key_attack)
            landAnim = 0;
        
        input_buffer_secondjump = 0;
        state = states.normal;
        jumpAnim = 1;
        jumpstop = 0;
        image_index = 0;
        freefallstart = 0;
        instance_create(x, y, obj_landcloud);
        scr_sound(sfx_playerstep);
        doublejumped = 0;
        floatyGrab = 18;
    }
    
    if (vsp > 5)
        fallinganimation++;
    
    if (fallinganimation >= 40 && fallinganimation < 65 && sprite_index != spr_player_PZ_flinged_straightup_old)
        sprite_index = spr_player_PZ_freeFall_1;
    
    if (fallinganimation >= 40 && fallinganimation < 65 && sprite_index == spr_player_PZ_flinged_straightup_old)
    {
        sprite_index = spr_player_PZ_freeFall_1;
        
        if (!instance_exists(obj_candifiedeffect1))
            instance_create(x, y, obj_candifiedeffect1);
    }
    
    if (fallinganimation >= 65)
        sprite_index = spr_player_PZ_freeFall_2;
    
    if (!stompAnim)
    {
        if (jumpAnim && animation_end())
            jumpAnim = false;
        
        if (!jumpAnim)
        {
            var aerial_sprite_transitions = [[2084, spr_fall], [2185, spr_fall], [spr_jump, spr_fall]];
            var i = 0;
            
            while (i < array_length(aerial_sprite_transitions))
            {
                if (aerial_sprite_transitions[i][0] == sprite_index)
                {
                    sprite_index = aerial_sprite_transitions[i][1];
                    break;
                }
                else
                {
                    i++;
                }
            }
        }
    }
    
    if (sprite_index == spr_stompprep && floor(image_index) == (image_number - 1))
        sprite_index = spr_stomp;
    
    if (move != 0)
        xscale = move;
    
    image_speed = 0.35;
    
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
    
    do_grab();
    
    if (grounded && (sprite_index == spr_player_PZ_freeFall_1 || sprite_index == spr_player_PZ_freeFall_2))
    {
        scr_sound(sound_maximumspeedland);
        
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
        
        image_index = 0;
        sprite_index = spr_player_PZ_freefallland;
        state = states.freefallland;
        vsp = 0;
        doublejumped = 0;
    }
    
    do_taunt();
    
    if (key_down && !key_slap2 && !grounded)
    {
        image_index = 0;
        sprite_index = spr_player_PZ_groundPound_intro;
        vsp = -6;
        freeFallSmash = -14;
        
        if (global.treat)
        {
            vsp = -10;
            sprite_index = spr_player_donutSlam_intro;
            instance_create(x, y, obj_donutSlammable);
        }
        
        state = states.freefallprep;
        
        if (character == "N")
            vsp = 0;
    }
    
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_PZ_flinged_straightup_start_old)
        sprite_index = spr_player_PZ_flinged_straightup_old;
    
    if (key_attack && grounded && !scr_solid(x + xscale, y, true) && fallinganimation < 40)
    {
        mach2 = 0;
        movespeed = max(movespeed, 6);
        sprite_index = spr_mach1;
        jumpAnim = 1;
        state = states.mach2;
        image_index = 0;
    }
}
