function state_player_freefallland()
{
    mach2 = 0;
    jumpAnim = true;
    landAnim = false;
    crouchAnim = false;
    movespeed = 0;
    slamHurt = (sprite_index == spr_player_PZ_groundPound_land) ? 180 : 0;
    alarm[4] = 14;
    vsp = 0;
    hsp = 0;
    
    if (animation_end())
    {
        state = states.normal;
        image_index = 0;
        
        if (slamHurt)
            sprite_index = spr_player_PZ_groundPoundEnd_intro;
        else
            sprite_index = spr_idle;
        
        freefallsmash = 0;
    }
    
    image_speed = 0.35;
}
