function state_player_puddle()
{
    hsp = xscale * movespeed;
    
    if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles) && !place_meeting(x + xscale, y, obj_metalblock))
    {
        scr_sound(choose(sfx_slipnslide1, sfx_slipnslide2, sfx_slipnslide3, sfx_slipnslide4, sfx_slipnslide5, sfx_slipnslide6, sfx_slipnslide7, sfx_slipnslide8));
        instance_create(x, y, obj_bangeffect);
        xscale *= -1;
        
        if (sprite_index == spr_player_PZ_slipSlide)
            movespeed = approach(movespeed, 0, 3);
        
        sprite_index = spr_player_PZ_fall_outOfControl;
    }
    
    var _xscale = xscale;
    
    if (sprite_index == spr_player_PZ_slipSlide_intro || sprite_index == spr_player_PZ_fall_outOfControl)
    {
        if (grounded && vsp > -1 && !place_meeting(x + sign(hsp), y, obj_destructibles) && !place_meeting(x, y + 1, obj_metalblock) && !place_meeting(x, y + 1, obj_destructibles))
        {
            if (sprite_index == spr_player_PZ_slipSlide_intro)
            {
                sprite_index = spr_player_PZ_fall_outOfControl;
                vsp = -6;
                movespeed = approach(movespeed, 0, 3);
                instance_create(x, y, obj_bangeffect);
                scr_sound(choose(sfx_slipnslide1, sfx_slipnslide2, sfx_slipnslide3, sfx_slipnslide4, sfx_slipnslide5, sfx_slipnslide6, sfx_slipnslide7, sfx_slipnslide8));
            }
            else
            {
                image_index = 0;
                sprite_index = spr_player_PZ_slipSlide_end;
                scr_sound(choose(sfx_slipnslideend1, sfx_slipnslideend2, sfx_slipnslideend3));
            }
            
            image_index = 0;
            image_speed = 0.35;
        }
    }
    else if (sprite_index == spr_player_PZ_slipSlide_end)
    {
        image_speed = 0.35;
        movespeed = approach(movespeed, 0, 0.5);
        player_slopeMomentum(0.325, 0.75);
        
        if (animation_end())
            state = states.normal;
        
        if (!grounded)
            sprite_index = spr_player_PZ_fall_outOfControl;
    }
    
    if (animation_end() && sprite_index == spr_player_PZ_slipSlide_intro)
        image_speed = 0;
    else if (sprite_index == spr_player_PZ_fall_outOfControl)
        image_speed = clamp(movespeed / 15, 0.3, 1) * 0.6;
    else
        image_speed = 0.35;
}
