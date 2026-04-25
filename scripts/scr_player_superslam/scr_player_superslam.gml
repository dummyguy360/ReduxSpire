function state_player_superslam()
{
    if (dir != xscale)
    {
        dir = xscale;
        movespeed = 0;
    }
    
    move = key_left + key_right;
    
    if (move != 0)
        xscale = move;
    
    hsp = move * movespeed;
    movespeed = (move == 0) ? 0 : 5;
    
    if (vsp >= 0)
    {
        vsp += 0.5;
        
        if (!cloudeffect--)
        {
            instance_create(x + irandom_range(-25, 25), y + irandom_range(-10, 35), obj_cloudeffect);
            cloudeffect = 8;
        }
        
        if (vsp >= 17 && !piledrivereffect--)
        {
            instance_create(x, y, obj_piledrivereffect, 
            {
                playerID: id
            });
            piledrivereffect = 15;
        }
    }
    
    if (freefallsmash >= 10 && sprite_index != spr_piledriverland)
    {
        if (!instance_exists(obj_groundpoundeffect))
            instance_create(x, y + 32, obj_groundpoundeffect);
    }
    
    if (sprite_index == spr_piledriver && vsp > 0)
        freefallsmash++;
    else
        freefallsmash = -14;
    
    mach2 = 0;
    
    if (sprite_index == spr_player_PZ_pileDriver_intro && animation_end())
    {
        sprite_index = spr_piledriver;
        image_index = 0;
    }
    
    move = 0;
    hsp = 0;
    
    if (sprite_index == spr_player_PZ_pileDriver_intro || sprite_index == spr_piledriver)
    {
        move = key_left + key_right;
        hsp = move * movespeed;
    }
    
    if ((sprite_index == spr_piledriver || sprite_index == spr_player_PZ_pileDriver_intro) && grounded && !place_meeting(x, y + 1, obj_destructibles) && vsp > 0)
    {
        sprite_index = spr_piledriverland;
        image_index = 0;
        scr_sound(sound_maximumspeedland);
        jumpAnim = true;
        jumpstop = false;
        hsp = 0;
        
        with (instance_create(x, y + 35, obj_bangeffect))
            xscale = obj_player.xscale;
        
        with (instance_create(x, y, obj_landcloud))
            sprite_index = spr_groundpoundLandEffect;
        
        instance_create(x, y, obj_landcloud);
        freefallstart = 0;
        
        if (freefallsmash >= 10)
        {
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
                    vsp = -7;
                    hsp = 0;
                }
            }
        }
        else
        {
            with (obj_camera)
            {
                shake_mag = 20;
                shake_mag_acc = 40 / room_speed;
            }
        }
    }
    
    jumpAnim = true;
    landAnim = false;
    machSlideAnim = true;
    crouchAnim = true;
    
    if (sprite_index == spr_piledriverland)
    {
        if (animation_end())
        {
            jumpstop = false;
            state = states.jump;
            grounded = false;
            sprite_index = spr_player_PZ_pileDriver_jump;
            image_index = 0;
            vsp = -11;
            grav = 0.3;
            
            if (instance_exists(baddiegrabbedID))
            {
                with (baddiegrabbedID)
                {
                    instance_destroy();
                    global.hit += 1;
                    global.combotime = 60;
                }
            }
        }
    }
    
    if (move != 0)
    {
        if (movespeed < 6)
            movespeed += 0.25;
        else if (floor(movespeed) == 5)
            movespeed = 6;
    }
    else
        movespeed = 0;
    
    if (movespeed > 6)
        movespeed -= 0.1;
    
    if (vsp < 0)
        image_speed = 0.35;
    else
        image_speed = 0.5;
}
