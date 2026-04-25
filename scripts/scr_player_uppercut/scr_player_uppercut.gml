function state_player_uppercut()
{
    image_speed = 0.35;
    
    if ((sprite_index == spr_player_PZ_uppercut_intro && animation_end()) || (grounded && vsp > 0))
    {
        sprite_index = spr_player_PZ_uppercut_end;
        image_index = 0;
    }
    
    if (scr_solid(x + sign(hsp), y) && !scr_slope_ext(x + xscale, y) && move != 0)
        movespeed = 0;
    
    move = key_left + key_right;
    landAnim = true;
    jumpstop = false;
    hsp = movespeed;
    
    if (move != 0)
    {
        dir = move;
        movespeed = approach(movespeed, move * 4, 0.5);
    }
    else
    {
        movespeed = approach(movespeed, 0, 0.5);
    }
    
    if (grounded && vsp > 0)
    {
        scr_sound(sfx_playerstep);
        landAnim = true;
        movespeed = abs(movespeed);
        movespeed = min(movespeed, 6);
        state = states.normal;
        jumpAnim = true;
        jumpstop = false;
        inputBufferSecondJump = 0;
        image_index = 0;
        freefallstart = 0;
        instance_create(x, y, obj_landcloud);
    }
    
    if (!petal_timer-- && vsp <= 0)
    {
        with (instance_create(x + irandom_range(-45, 45), y + irandom_range(15, 45), obj_debris))
        {
            sprite_index = choose(spr_flowerpetal1, spr_flowerpetal2, spr_flowerpetal3, spr_flowerpetal4);
            image_angle = 0;
            image_alpha = 5;
            image_speed = 0.35;
            fading = true;
            vsp = -2;
            hsp = 0;
            grav = 0.35;
            rot = 0;
        }
        
        petal_timer = 4;
    }
}
