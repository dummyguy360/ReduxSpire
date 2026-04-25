function state_player_bump()
{
    movespeed = 0;
    mach2 = 0;
    alarm[4] = 14;
    
    if (sprite_index != spr_player_PZ_geyser)
    {
        if (sprite_index != spr_player_PZ_splat && sprite_index != spr_tumbleend && sprite_index != spr_player_PZ_hitWall_mach3)
            sprite_index = spr_bump;
        
        if (sprite_index == spr_player_PZ_splat)
        {
            hsp = 0;
            vsp = 0;
        }
        else if (grounded && vsp > 0)
            hsp = 0;
        
        if (sprite_index == spr_tumbleend && floor(image_index) >= 3 && !grounded)
            image_index = 3;
        
        if (animation_end())
        {
            state = states.jump;
            sprite_index = spr_jump;
        }
    }
    else if (grounded)
    {
        state = states.jump;
    }
    
    if (audio_is_playing(sound_tumble))
        audio_stop_sound(sound_tumble);
    
    image_speed = 0.35;
}
