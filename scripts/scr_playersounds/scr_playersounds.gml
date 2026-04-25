function scr_playersounds_init()
{
    machSound = noone;
    grindsnd = noone;
    suplexsnd = noone;
    flipsnd = noone;
}

function scr_playersounds()
{
    var saved_state = global.freezeframe ? frozenstate : state;
    
    if (sprite_index == spr_tumblestart && floor(image_index) >= 11 && !audio_is_playing(sound_tumblestart) && !audio_is_playing(sound_tumble))
        scr_sound(sound_tumble);
    
    if (sprite_index == spr_tumble && !audio_is_playing(sound_tumblestart) && !audio_is_playing(sound_tumble))
        scr_sound(sound_tumble);
    
    if (saved_state != states.tumble && sprite_index != spr_machroll)
    {
        audio_stop_sound(sound_tumble);
        audio_stop_sound(sound_tumblestart);
    }
    
    if ((saved_state == states.minecart && grounded) || saved_state == states.grind)
    {
        if (!audio_is_playing(grindsnd))
            grindsnd = scr_soundloop(sfx_railgrind);
    }
    else if (audio_is_playing(grindsnd))
        audio_stop_sound(grindsnd);
    
    if (audio_is_playing(suplexsnd) && state != states.handstandjump)
        audio_stop_sound(suplexsnd);
    
	// Mach.
    if (saved_state == states.mach2 || saved_state == states.mach3 || saved_state == states.climbwall || saved_state == states.climbceiling || saved_state == states.climbdownwall)
    {
        var machsnd = noone;
        
        if (saved_state == states.mach2 && sprite_index == spr_mach1 && grounded)
            machsnd = sound_dash1;
        else if ((saved_state == states.mach2 && sprite_index == spr_mach2) || (saved_state == states.climbwall && verticalMovespeed < 12) || saved_state == states.climbceiling || saved_state == states.climbdownwall || (saved_state == states.climbceiling && movespeed < 12))
            machsnd = sound_dash2;
        else if ((saved_state == states.mach3 && sprite_index != spr_crazyrun) || (saved_state == states.climbceiling && movespeed >= 12) || (saved_state == states.climbwall && verticalMovespeed >= 12))
			machsnd = sound_dash3;
        else if (sprite_index == spr_crazyrun)
            machsnd = sound_dash4;
        
        if (!audio_is_playing(machsnd))
        {
            audio_stop_sound(machSound);
            machSound = scr_soundloop(machsnd);
        }
    }
    else if (audio_is_playing(machSound))
        audio_stop_sound(machSound);
    
    if (saved_state == states.backkick && sprite_index != spr_player_PZ_wallJumpFastFall_intro && sprite_index != spr_player_PZ_wallJumpFastFall)
    {
        if (!audio_is_playing(sfx_wallkickstart) && !audio_is_playing(sfx_wallkickloop))
            scr_sound(sfx_wallkickloop);
    }
    else if (saved_state != states.backkick || sprite_index == spr_player_PZ_wallJumpFastFall_intro || sprite_index == spr_player_PZ_wallJumpFastFall)
        audio_stop_sound(sfx_wallkickloop);
    
    if (saved_state == states.machroll && !audio_is_playing(sfx_machroll))
        scr_sound(sfx_machroll);
    else if (saved_state != states.machroll)
        audio_stop_sound(sfx_machroll);
    
    if (saved_state == states.Sjumpprep && !audio_is_playing(sfx_pz_superjump))
        scr_sound(sfx_pz_superjump);
    else if (saved_state != states.Sjumpprep)
        audio_stop_sound(sfx_pz_superjump);
    
    if (saved_state != states.Sjumpprep)
        audio_stop_sound(sfx_pz_superjumpIntro);
    
    if (saved_state == states.freefallprep || saved_state == states.freefall || saved_state == states.superslam)
    {
        if (!audio_is_playing(sfx_freefallstart) && !audio_is_playing(sfx_freefall) && freefallsmash < 10)
            scr_sound(sfx_freefallstart);
        
        if (!audio_is_playing(sfx_freefall) && freefallsmash > 10)
        {
            audio_stop_sound(sfx_freefallstart);
            scr_sound(sfx_freefall);
        }
    }
    else
    {
        audio_stop_sound(sfx_freefallstart);
        audio_stop_sound(sfx_freefall);
    }
}
