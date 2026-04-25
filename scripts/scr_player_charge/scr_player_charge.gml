function state_player_charge()
{
    if (windingAnim < 2000)
        windingAnim++;
    
    hsp = xscale * movespeed;
    movespeed = approach(movespeed, 0, 0.25);
    move = key_right + key_left;
    
    if (!key_jump2 && !jumpstop && vsp < 0.5)
    {
        vsp /= 20;
        jumpstop = true;
    }
    
    if (movespeed <= 2)
    {
        state = states.grab;
        sprite_index = spr_player_PZ_hauling_idle;
    }
    
    if (grounded && vsp > 0)
        jumpstop = false;
    
    if (inputBufferJump > 0 && can_jump)
    {
        scr_sound(sfx_pz_jump);
        vsp = -11;
        grav = 0.3;
        inputBufferJump = 0;
    }
    
    if (key_down && !grounded)
    {
        sprite_index = spr_piledriver;
        vsp = -6;
        state = states.superslam;
        image_index = 0;
        image_speed = 0.35;
    }
    
    if (inputBufferSlap > 0 || (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles)))
    {
        sprite_index = spr_player_PZ_swingDing_end;
        state = states.finishingblow;
        movespeed *= xscale;
        hsp = movespeed;
        image_index = 0;
        inputBufferSlap = 0;
    }
    
    image_speed = 0.5;
    
    if (!instance_exists(obj_dashcloud) && grounded)
        instance_create(x, y, obj_dashcloud);
    
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
