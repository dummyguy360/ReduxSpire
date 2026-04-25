function state_player_freefall()
{
    if (place_meeting(x, y, obj_vertical_hallway))
        exit;
    
    landAnim = true;
    var is_divebomb = sprite_index == spr_player_PZ_divebomb_start || sprite_index == spr_player_PZ_divebomb_fall;
    
    if (sprite_index == spr_player_donutSlam_intro && sprite_animation_end())
    {
        sprite_index = spr_player_donutSlam;
        image_index = 0;
    }
    
    if (vsp >= 2)
    {
        vsp += 0.5;
        
        if (verticalMovespeed > 17)
        {
            if (!cloudeffect--)
            {
                instance_create(x, y, obj_cloudeffect);
                cloudeffect = 8;
            }
            
            if (!piledrivereffect--)
            {
                instance_create(x, y, obj_piledrivereffect, 
                {
                    playerID: id
                });
                piledrivereffect = 15;
            }
        }
    }
    
    if (vsp > 0)
        freefallsmash++;
    else if (vsp < 0)
        freefallsmash = -14;
    
    move = key_left + key_right;
    
    if (!grounded)
    {
        hsp = (sprite_index == spr_player_PZ_fall_outOfControl) ? 0 : (move * movespeed);
        
        if (move != xscale && movespeed != 0)
            movespeed -= 0.05;
        
        if (move != dir && move != 0)
        {
            dir = move;
            movespeed = 0;
        }
        
        if (move == 0 || scr_solid(x + hsp, y))
            movespeed = 0;
        
        if (move != 0 && movespeed < 7)
            movespeed += 0.25;
        
        if (movespeed > 7)
            movespeed -= 0.05;
        
        if (scr_solid(x + move, y) && move != 0)
            movespeed = 0;
        
        if (move != 0 && !is_divebomb)
            xscale = move;
    }
    
    if (sprite_index != spr_player_PZ_fall_outOfControl)
    {
    }
    
    if (sprite_index == spr_player_PZ_groundPound_intro && animation_end())
    {
        image_index = 0;
        sprite_index = spr_player_PZ_groundPound;
    }
    
    if (sprite_index == spr_player_PZ_divebomb_start && animation_end())
    {
        image_index = 0;
        sprite_index = spr_player_PZ_divebomb_fall;
    }
    
    if (grounded && (freefallsmash < 10 || !place_meeting(x, y + vsp, obj_metalblock)) && !place_meeting(x, y + 1, obj_destructibles) && !place_meeting(x, y + 1, obj_vertical_hallway) && !place_meeting(x, y + vsp, obj_vertical_hallway))
    {
        if (slopeCheck(x, y) && !place_meeting(x, y, obj_dashpad))
        {
            state = states.machroll;
            sprite_index = spr_crouchslip;
            movespeed = (freefallsmash > 20) ? 12 : 8;
            
            with (instance_place(x, y + 1, obj_slope))
                other.xscale = -sign(image_xscale);
            
            with (instance_create(x, y, obj_jumpdust))
                image_xscale = other.xscale;
        }
        else
        {
            scr_sound(sound_maximumspeedland);
            image_index = 0;
            state = states.freefallland;
            jumpAnim = true;
            jumpstop = false;
            
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
            
            with (instance_create(x, y, obj_landcloud))
                sprite_index = spr_groundpoundLandEffect;
            
            freefallstart = 0;
            image_index = 0;
            var landing_sprite_transitions = [[2050, 2098], [2066, 2098], [2110, 250], [2141, 2142], [2143, 2142], [141, 1360], [1574, 1360]];
            
            for (var i = 0; i < array_length(landing_sprite_transitions); i++)
            {
                if (sprite_index == landing_sprite_transitions[i][0])
                    sprite_index = landing_sprite_transitions[i][1];
            }
        }
    }
    
    image_speed = 0.35;
    
    if (freefallsmash >= 10)
    {
        if (!instance_exists(obj_groundpoundeffect))
            instance_create(x, y + 32, obj_groundpoundeffect);
        
        if (!instance_exists(obj_piledrivereffect))
        {
            with (instance_create(x, y, obj_piledrivereffect))
            {
                playerID = obj_player;
                xscale = other.xscale;
            }
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
