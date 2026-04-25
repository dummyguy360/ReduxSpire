function state_player_freefallprep()
{
    move = key_left + key_right;
    
    if (!grounded)
    {
        hsp = move * movespeed;
        
        if (move != xscale)
            movespeed = approach(0, movespeed, 0.05);
        
        if (move == 0 || scr_solid(x + hsp, y))
            movespeed = 0;
        
        if (move != 0 && movespeed < 7)
            movespeed += 0.25;
        
        if (movespeed > 7)
            movespeed -= 0.05;
        
        if (scr_solid(x + move, y) && move != 0)
            movespeed = 0;
        
        if (dir != xscale)
        {
            dir = xscale;
            movespeed = 0;
        }
        
        if (move == -xscale)
            movespeed = 0;
        
        if (move != 0)
            xscale = move;
        
        vsp = min(vsp, 0);
    }
    
    if (animation_end())
        image_index = image_number - 1;
    
    image_speed = 0.35;
    
    if (++freefall_buffer > 15)
    {
        freefall_buffer = 0;
        verticalMovespeed = vsp;
        state = states.freefall;
        freeFallsmash = -14;
        
        with (instance_create(x, y, obj_bangeffect))
            sprite_index = spr_groundPoundClouds;
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
