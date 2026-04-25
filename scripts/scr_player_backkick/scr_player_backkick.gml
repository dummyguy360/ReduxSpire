function state_player_backkick()
{
    floatyGrab = 0;
    move = key_left + key_right;
    hsp = movespeed;
    
    if (move != 0)
    {
        movespeed = approach(movespeed, 10 * move, 0.8);
        dir = move;
    }
    else
        movespeed = approach(movespeed, 0, 0.45);
    
    if (place_meeting(x + sign(movespeed), y, obj_solid) && !place_meeting(x + sign(movespeed), y, obj_destructibles))
        movespeed = 0;
    
    if (!grounded && (key_down || sprite_index == spr_player_PZ_wallJumpFastFall || sprite_index == spr_player_PZ_wallJumpFastFall_intro))
    {
        vsp = max(vsp, 14);
        
        if (sprite_index != spr_player_PZ_wallJumpFastFall_intro && sprite_index != spr_player_PZ_wallJumpFastFall)
        {
            sprite_index = spr_player_PZ_wallJumpFastFall_intro;
            image_index = 0;
            scr_sound(sfx_dive);
        }
        else if (inputBufferJump > 0 && sprite_index == spr_player_PZ_wallJumpFastFall)
        {
            inputBufferJump = 0;
            state = states.freefall;
            image_index = 0;
            sprite_index = spr_player_PZ_divebomb_start;
            dir = xscale;
            hsp = movespeed * xscale;
            movespeed = abs(movespeed);
            vsp = -6;
            
            if (global.treat)
            {
                vsp = -10;
                sprite_index = spr_player_donutSlam_intro;
                instance_create(x, y, obj_donutSlammable);
            }
            
            freeFallSmash = 0;
        }
    }
    
    if (inputBufferSlap > 0 && !key_up)
    {
        inputBufferSlap = 0;
        jumpstop = true;
        xscale = dir;
        
        if (!key_up)
        {
            sprite_index = spr_player_PZ_wallJumpCancel_intro;
            image_index = 0;
            movespeed = 12;
            hsp = movespeed * xscale;
            vsp = -5;
            state = states.mach3;
            scr_sound(sfx_wallkickcancel);
            scr_sound(sfx_machstart);
        }
    }
    
    if (grounded && vsp >= 0 && !place_meeting(x, y + vsp, obj_destructibles))
    {
        scr_sound(sfx_machcancelland);
        flash = true;
        xscale = dir;
        
        if (key_attack)
        {
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
            
            movespeed = 12;
            hsp = movespeed * dir;
            state = states.mach3;
            image_index = 0;
            sprite_index = spr_player_PZ_machRoll_getUp;
            scr_sound(sound_rollgetup);
        }
        else
        {
            landanim = true;
            movespeed = 8;
            hsp = movespeed * dir;
            state = states.normal;
            instance_create(x, y, obj_landcloud);
            scr_sound(sfx_playerstep);
        }
    }
    
    if (sprite_index == spr_player_PZ_wallJump_intro && animation_end())
        sprite_index = spr_player_PZ_wallJump;
    
    if (sprite_index == spr_player_PZ_wallJumpFastFall_intro && animation_end())
        sprite_index = spr_player_PZ_wallJumpFastFall;
    
    if (!instance_exists(obj_wallkickDust))
        instance_create(x + random_range(-40, 40), y + random_range(-40, 40), obj_wallkickDust);
    
    if (key_shoot2 && global.treat)
    {
        vsp = -5;
        state = states.donut;
        image_index = 0;
        sprite_index = spr_player_throwDonut;
        
        if (movespeed < 0)
            movespeed *= -1;
        
        with (instance_create(x, y + 25, obj_donutShitted))
        {
            var _angle = (other.xscale > 0) ? 0 : 180;
            Hmovespeed = lengthdir_x(20, _angle);
            Vmovespeed = lengthdir_y(20, _angle);
            shattedBy = other.id;
        }
    }
    
    do_grab();
    do_taunt();
    image_speed = 0.45;
}
